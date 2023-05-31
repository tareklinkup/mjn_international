<style>
	.v-select {
		margin-top: -2.5px;
		float: right;
		min-width: 180px;
		margin-left: 5px;
	}

	.v-select .dropdown-toggle {
		padding: 0px;
		height: 25px;
	}

	.v-select input[type=search],
	.v-select input[type=search]:focus {
		margin: 0px;
	}

	.v-select .vs__selected-options {
		overflow: hidden;
		flex-wrap: nowrap;
	}

	.v-select .selected-tag {
		margin: 2px 0px;
		white-space: nowrap;
		position: absolute;
		left: 0px;
	}

	.v-select .vs__actions {
		margin-top: -5px;
	}

	.v-select .dropdown-menu {
		width: auto;
		overflow-y: auto;
	}

	#searchForm select {
		padding: 0;
		border-radius: 4px;
	}

	#searchForm .form-group {
		margin-right: 5px;
	}

	#searchForm * {
		font-size: 13px;
	}
</style>
<div id="customerPaymentHistory">
	<div class="row">
		<div class="col-xs-12 col-md-12 col-lg-12" style="border-bottom:1px #ccc solid;">
			<form class="form-inline" id="searchForm" @submit.prevent="getCustomerCheques">
				<div class="form-group">
					<label>Customer</label>
					<v-select v-bind:options="customers" v-model="selectedCustomer" label="display_name" placeholder="Select Customer"></v-select>
				</div>

				<div class="form-group">
					<input type="date" class="form-control" v-model="dateFrom">
				</div>

				<div class="form-group">
					<input type="date" class="form-control" v-model="dateTo">
				</div>

				<div class="form-group" style="margin-top: -5px;">
					<input type="submit" value="Search">
				</div>
			</form>
		</div>
	</div>

	<div class="row" style="display:none;" v-bind:style="{display: payments.length > 0 ? '' : 'none'}">
		<div class="col-md-12" style="margin-top: 10px; margin-bottom: -10px;">
			<a href="" @click.prevent="print"><i class="fa fa-print"></i> Print</a>
		</div>
		<div class="col-sm-12">
			<br>
			<div class="table-responsive" id="reportTable">
				<table class="table table-bordered record-table">
					<thead>
						<tr>
							<th style="text-align:center">Cheque Date</th>
							<th style="text-align:center">Cheque No</th>
							<th style="text-align:center">Bank Name - Branch Name</th>
							<th style="text-align:center">Customer Name</th>
							<th style="text-align:center">Cheque Status</th>
							<th style="text-align:center">Cheque Amount</th>
							<th style="text-align:center">Notes</th>
							<th style="text-align:center">Action</th>
						</tr>
					</thead>
					<tbody>
						<tr v-for="payment in payments">
							<td style="text-align:left;">{{ payment.csubmit_date }}</td>
							<td style="text-align:left;">{{ payment.check_no }}</td>
							<td style="text-align:left;">{{ payment.bank_name }} - {{ payment.branch_name }}</td>
							<td style="text-align:left;">{{ payment.Customer_Code }} - {{ payment.Customer_Name }}</td>
							<td style="text-align:center;">
								<!-- {{ payment.check_status }} -->

								<span v-if="payment.check_status == 'Pa'">Paid</span>
								<span v-else-if="payment.check_status == 'Di'">Dishonour</span>
								<span v-else>Pending</span>

								<!-- <?php if ($check->check_status == 'Pa') : ?>
									<span class="label " style="background: green;">Paid</span>
								<?php elseif ($check->check_status == 'Di') : ?>
									<span class="label " style="background: red;">Dishonour</span>
								<?php else : ?>
									<span class="label " style="background: #ec880a;">Pending</span>
								<?php endif; ?>								 -->
							</td>
							<td style="text-align:left;">{{ payment.check_amount }}</td>
							<td style="text-align:left;">{{ payment.note }}</td>
							<td style="text-align:right;">
								<a class="linka fancybox fancybox.ajax" style="color: #F89406;" v-bind:href="`/check/view/${payment.id}`">
									<i class="ace-icon fa fa-eye bigger-130"></i>
								</a>

								<?php if ($this->session->userdata('accountType') != 'u') { ?>
									<a class="green" v-bind:href="`/check/edit/${payment.id}`">
										<i class="ace-icon fa fa-pencil bigger-130"></i>
									</a>

									<a class="red" v-bind:href="`/check/delete/${payment.id}`" onclick="return confirm('Are You Sure Went to Delete This! ')">
										<i class="ace-icon fa fa-trash-o bigger-130"></i>
									</a>
								<?php } ?>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<script src="<?php echo base_url(); ?>assets/js/vue/vue.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/vue/axios.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/vue/vue-select.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/moment.min.js"></script>

<script>
	Vue.component('v-select', VueSelect.VueSelect);
	new Vue({
		el: '#customerPaymentHistory',
		data() {
			return {
				customers: [],
				selectedCustomer: null,
				dateFrom: null,
				dateTo: null,
				payments: []
			}
		},
		created() {
			this.dateFrom = moment().format('YYYY-MM-DD');
			this.dateTo = moment().format('YYYY-MM-DD');
			this.getCustomers();
		},
		methods: {
			getCustomers() {
				axios.get('/get_customers').then(res => {
					this.customers = res.data;
				})
			},
			getCustomerCheques() {
				let data = {
					dateFrom: this.dateFrom,
					dateTo: this.dateTo,
					customerId: this.selectedCustomer == null ? null : this.selectedCustomer.Customer_SlNo,
				}

				axios.post('/get_customer_cheques', data).then(res => {
					this.payments = res.data;
				})
			},
			async print() {
				let dateText = '';
				if (this.dateFrom != '' && this.dateTo != '') {
					dateText = `Cheque from <strong>${this.dateFrom}</strong> to <strong>${this.dateTo}</strong>`;
				}

				let customerText = '';
				if (this.selectedCustomer != null && this.selectedCustomer.Customer_SlNo != '') {
					customerText = `<strong>Customer: </strong> ${this.selectedCustomer.Customer_Name}<br>`;
				}

				let reportTable = `
					<div class="container">
						<div class="row">
							<div class="col-xs-12 text-center">
								<h3>All Cheque List</h3>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6">
								${customerText}
							</div>
							<div class="col-xs-6 text-right">
								${dateText}
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								${document.querySelector('#reportTable').innerHTML}
							</div>
						</div>
					</div>
				`;

				var reportWindow = window.open('', 'PRINT', `height=${screen.height}, width=${screen.width}`);
				reportWindow.document.write(`
					<?php $this->load->view('Administrator/reports/reportHeader.php'); ?>
				`);

				reportWindow.document.head.innerHTML += `
					<style>
						.record-table{
							width: 100%;
							border-collapse: collapse;
						}
						.record-table thead{
							background-color: #0097df;
							color:white;
						}
						.record-table th, .record-table td{
							padding: 3px;
							border: 1px solid #454545;
						}
						.record-table th{
							text-align: center;
						}
					</style>
				`;
				reportWindow.document.body.innerHTML += reportTable;

				let rows = reportWindow.document.querySelectorAll('.record-table tr');
				rows.forEach(row => {
					row.lastChild.remove();
				})


				reportWindow.focus();
				await new Promise(resolve => setTimeout(resolve, 1000));
				reportWindow.print();
				reportWindow.close();
			}
		}
	})
</script>

<!-- <div class="row">
	<div class="col-xs-12">
		<div class="widget-box">
			<div class="widget-header">
				<h4 class="widget-title">Cheque Information List</h4>
				<div class="widget-toolbar">
					<a href="#" data-action="collapse">
						<i class="ace-icon fa fa-chevron-up"></i>
					</a>
					<a href="#" data-action="close">
						<i class="ace-icon fa fa-times"></i>
					</a>
				</div>
			</div>

			<div class="widget-body">
				<div class="widget-main">
					<table id="dynamic-table" class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>Cheque Date</th>
								<th>Cheque No</th>
								<th>Bank Name - Branch Name</th>
								<th>Customer Name</th>
								<th>Cheque Status</th>
								<th>Cheque Amount</th>
								<th>Action</th>
							</tr>
						</thead>

						<tbody id="tBody">
							<?php $i = 1;
							if (isset($checks) && $checks) : foreach ($checks as $check) : ?>
									<tr style="<?= ($check->check_status == 'Di') ? 'background-color:#ff000036;' : '' ?>">
										<td><?php
											$date = new DateTime($check->check_date);
											echo date_format($date, 'd M Y');
											?></td>
										<td><?= $check->check_no; ?></td>
										<td><?= $check->bank_name . '-' . $check->branch_name; ?></td>
										<td><?= $check->Customer_Code . ' - ' . $check->Customer_Name; ?></td>

										<td>
											<?php if ($check->check_status == 'Pa') : ?>
												<span class="label " style="background: green;">Paid</span>
											<?php elseif ($check->check_status == 'Di') : ?>
												<span class="label " style="background: red;">Dishonour</span>
											<?php else : ?>
												<span class="label " style="background: #ec880a;">Pending</span>
											<?php endif; ?>
										</td>
										<td><?= number_format($check->check_amount, 2); ?></td>
										<td>
											<div class="hidden-sm hidden-xs action-buttons">
												<a class="linka fancybox fancybox.ajax" style="color: #F89406;" href="<?= base_url(); ?>check/view/<?= $check->id; ?>">
													<i class="ace-icon fa fa-eye bigger-130"></i>
												</a>
												<?php if ($this->session->userdata('accountType') != 'u') { ?>
													<a class="green" href="<?= base_url(); ?>check/edit/<?= $check->id; ?>">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>
													<a class="red" href="<?= base_url(); ?>check/delete/<?= $check->id ?>" onclick="return confirm('Are You Sure Went to Delete This! ')">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												<?php } ?>
											</div>
										</td>
									</tr>
							<?php endforeach;
							endif; ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div> -->