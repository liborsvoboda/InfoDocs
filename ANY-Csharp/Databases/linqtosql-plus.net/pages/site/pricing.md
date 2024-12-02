---
Name: Pricing
---

# Purchase

<!-- validation !-->
<div id="error_validation" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modal_agreement" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="modal_agreement">License Agreement</h4>
			</div>
			<div class="modal-body bg-danger">
				You must read and agree to the License Agreement.
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-z" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>


<div class="container">

	<div class="row">
		<div class="col-lg-7 purchasing-step wow slideInLeft">
			<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top" onsubmit="return purchase_validate()">
				<input type="hidden" name="cmd" value="_s-xclick">
				<input type="hidden" name="currency_code" value="USD">
				<input type="hidden" name="on0" value="Seats">
				
				<h2>Step 1 - Choose License</h2>
				<div class="step-1">
					<div class="form-group">
						<label class="form-label form-label-lg">Provider:</label> 
						<select id="provider_type" name="hosted_button_id" class="form-control">
							<option value="VD369YMUVALAY" selected>SQL Server & SQL Azure</option>			
						</select> 
					</div>
					<label class="form-label form-label-lg">Seat:</label> 
					<select id="product_option" name="os0" class="form-control">
						<option id="seat1" value="1 seat">LinqToSql Plus $599 (1 developer seat)</option>
						<option id="seat2_4" value="2-4 seats" selected>LinqToSql Plus $799 (2-4 developer seats)</option>
						<option id="seat5_9" value="5-9 seats">LinqToSql Plus $999 (5-9 developer seats)</option>
						<option id="seat10_14" value="10-14 seats">LinqToSql Plus $1199 (10-14 developer seats)</option>
						<option id="seat15_19" value="15-19 seats">LinqToSql Plus $1399 (15-19 developer seats)</option>
					</select> 
				</div>
				
				<h2>Step 2 - Purchase</h2>
				<div class="checkbox">
					<label>
						<input id="agree_agreement" type="checkbox">&nbsp;I have read and agree to the <a href="https://zzzprojects.com/license-agreement/" target="_blank">License Agreement</a>.
					</label>
				</div>
				<br />
				<button type="submit" class="btn btn-z btn-lg" onclick="ga('send', 'event', { eventAction: 'buy-now'});">
					<i class="fa fa-shopping-cart"></i>&nbsp;BUY NOW
				</button>
				
				<div class="more-option">*&nbsp;Read the FAQ below for alternative payment methods.</div>				
			</form>
			
		</div>
	
		<div class="col-lg-5">
		
			<div class="card card-box card-box-light wow slideInRight">
				<div class="card-header">
					<h2>Not ready yet?</h2>
				</div>
				<div class="card-body">
					<h3>Free trial</h3>
					<p>Download our <a href="/download">monthly trial</a></p>
					<p>Extend your trial for several months by downloading the latest version at the beginning of every month.</p>
					<h3>License</h3>
					The license include:
					<ul class="list-checked">
						<li>All bulk extensions methods</li>
						<li>Commercial License</li>
						<li>Royalty-Free</li>
						<li>Perpetual Licenses</li>
						<li>Support & Upgrades (1 year)</li>
					</ul>
					<h3>Question</h3>
					<p>Contact us: {% include mail-sales.html %}</p>
				</div>
			</div>
		</div>
	</div>
</div>

---

<div class="container section-faq wow slideInLeft">
{% include section-faq-begin.html %}

## FAQ

### Which payment alternative methods are accepted?
We accept `PayPal`, `Cheque` and `Wire Transfer`.

We **DO NOT** accept bitcoins and credit cards.

Please contact us for more information.

Email: <a href="mailto:sales@zzzprojects.com">sales@zzzprojects.com</a>

### Do you accept resellers?
Yes contact us if you are a reseller or seeking for a reseller.

Email: <a href="mailto:sales@zzzprojects.com">sales@zzzprojects.com</a>

### What 2-4 developer seats mean?
It mean that you can use the license with up to 4 developers inside your team.

The `5-9` developer seats mean you can use the license with up 9 developers.

You only pay for developer seats. You can use our library with an unlimited amount of applications, environments, servers, and client machines.

### I need more than 19 seats, what can I do?
Please contact us with the number of seats required. We offer some additional discounts or enterprise licenses.

Email: <a href="mailto:sales@zzzprojects.com">sales@zzzprojects.com</a>

### Is the license perpetual?
The product comes with one year of support & upgrades but the license is perpetual (indefinitely useable). So you are not obligated to renew every year or renew at all.

Renewing comes with a lot of benefits such as a 25%/35%/50% discount on purchased price, discounted or free products, etc.

### Why isn't this library free and open source?
`ZZZ Projects` mission is focused on adding value to the `.NET Community` and supporting a lot of `free and open source` libraries.

However, this mission cannot be successful without being able to pay our developers for the time they pass to support & develop features for free and paid libraries.

#### Free Librairies

- [Html Agility Pack](https://html-agility-pack.net/){:target="_blank"}
- [Entity Framework Plus](https://entityframework-plus.net/){:target="_blank"}
- [Entity Framework DynamicFilter](https://github.com/zzzprojects/EntityFramework.DynamicFilters){:target="_blank"}
- [RefactorThis.GraphDiff](https://github.com/zzzprojects/GraphDiff){:target="_blank"}
- [Extension Methods](https://github.com/zzzprojects/Z.ExtensionMethods){:target="_blank"}

#### Website

- [.NET Fiddle](https://dotnetfiddle.net/){:target="_blank"}
- [SQL Fiddle](http://sqlfiddle.com/){:target="_blank"}
- [NuGet Must Haves](https://nugetmusthaves.com/){:target="_blank"}
- [Dapper Tutorial](https://dappertutorial.net/){:target="_blank"}

By contributing on paid libraries, you are also helping in keeping other libraries and website FREE.

{% include section-faq-end.html %}
</div>