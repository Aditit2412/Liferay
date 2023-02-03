<%@ include file="/init.jsp" %>


<portlet:actionURL name="regdetails" var="detailsSubmit" />
<aui:form action="${detailsSubmit}" method="post"> 
<fieldset-group markupView="lexicon">
  <div class="personal-info-wrapper">


<div>
          <p class="heading2 heading2bold mb-3 mb-md-5 text-center">Loan vs lease calculator</p>
          <div class="shadow-lg p-3">
            <p>Know your potemtial tax savings with lease</p>
            <form>
              <div class="d-flex">
                <div class="form-group w-50 mr-3">
           <label for="term" class="font-weight-bold" >term</label>

        <select class="form-control" id="term" name="term" onkeyup="calc();" required>

            <option value="36">36</option>

            <option value="37">37</option>

            <option value="38">38</option>

            <option value="39">39</option>

            <option value="40">40</option>

        </select>


                  
                </div>
                <div class="form-group w-50">&nbsp;</div>
              </div>
              <div class="d-flex">
                <div class="form-group w-50 mr-3">
                  <label for="emi" class="font-weight-bold">EMI</label>
                  <input type="number" class="form-control" id="emi" aria-describedby="emi" value="5000" onkeyup="calc();">
                </div>
                <div class="form-group w-50">
                  <label for="taxSlab" class="font-weight-bold">Tax slab</label>
                  <input type="text" class="form-control" id="taxSlab" aria-describedby="taxSlab" value="" onkeyup="calcu();" required>
                </div>
              </div>
      <!--         <div class="d-flex">
           
                
                	 <div class="form-group w-50 mr-3">
                  <label for="totalOutflow" class="font-weight-bold">Total outflow</label>
                     <p class="heading5 heading5bold" id="totalOutflow" value="0" readonly>18,00,000</p>
               <input type="number" id="totalOutflow" value="0" class="heading5 heading5bold" onkeyup="calcu();"  readonly/> 
                </div>
                	
				 <div class="form-group w-50">
                  <label for="lossOnTax" class="font-weight-bold">Loss on tax</label>
                  <p class="heading5 heading5bold">5000</p>
				    <input type="number" id="lossOnTax" value="0" class="heading5 heading5bold" readonly/> 
                </div>
              </div> -->
              <div class="d-flex recent-proposals-output">

        <div class="form-group w-50 mr-3">

            <label for="totalOutflow" class="font-weight-bold">Total outflow</label><br>

            <div class="heading5 heading5bold d-inline-flex"><span>&#8377;</span>

                <div><input type="text" class="border-0 heading5 heading5bold w-100"  id="totalOutflow" value="18,00,000"

                        name="totalOutflow" onkeyup="calcu();"  readonly/></div>

            </div>

        </div>

        <div class="form-group w-50">

            <label for="lossOnTax" class="font-weight-bold">Loss on tax</label><br>

            <div class="heading5 heading5bold d-inline-flex"><span>&#8377;</span>

                <div><input type="text" class="border-0 heading5 heading5bold w-100" id="lossOnTax" value="5,40,000"

                        name="lossOnTax" readonly>

                </div>

            </div>

        </div>

    </div>
              
              
             <!--  <div class="form-group">
                <button class="primary-button mx-auto">COMPARE</button>
              </div> -->
            </form>
          </div>
        </div>
<script>




document.getElementById("totalOutflow ").value = 0;

function calc() {
	  var amount = document.getElementById("term").value;
	  var amount = parseInt(amount, 10);
	  var quantity = document.getElementById("emi").value;
	  var quantity = parseInt(quantity, 10);
	  if(amount && quantity){
		  var total = amount * quantity;
		  document.getElementById("totalOutflow").value = total;
	  }/* else {
		  document.getElementById("totalOutflow ").value = 0;
	  } */
	  var saveTotal = document.getElementById("totalOutflow").value;
	  console.log(saveTotal); 
	}

 function calcu() {
	  var amount = document.getElementById("taxSlab").value;
	  var amount = parseInt(amount, 10);
	  var quantity = document.getElementById("totalOutflow").value;
	  var quantity = parseInt(quantity, 10);
	  if(amount && quantity){
		  var total = amount * quantity;
		  document.getElementById("lossOnTax").value = total;
	  }/* else {
		  document.getElementById("totalOutflow ").value = 0;
	  } */
	  var saveLoss = document.getElementById("lossOnTax").value;
	  console.log(saveLoss); 
	} 


</script>

<style>
 input[type=number]::-webkit-outer-spin-button,

 input[type=number]::-webkit-inner-spin-button {

  -webkit-appearance: none;

  margin: 0;}
  
   input[type="text"] {
    outline: none;
    width: 100%;
}
</style>





</div>

</fieldset-group>
</aui:form>