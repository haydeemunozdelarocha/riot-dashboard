<content>
    <div class="content w-80-m w-80-l w-100-ns pv-2-ns fr bg-near-white">
               <div class="fl w-100 w-100-ns pa2">
    <panel title={"Total Material Volume"} chart="{lineChart}"></panel>
    </div>
          <div class="fl w-100 w-50-ns pa2">
            <panel title={"Loads per Day"} chart="{barChart}">
            </panel>
          </div>
          <div class="fl w-100 w-50-ns pa2">
            <panel title={"Material Volume per Type"} chart="{doughnutChart}"></panel>
          </div>
            <div class="fl w-100 w-100-ns pa2">
                <div class="shadow-4 br3 pa3 bg-white">
                  <map></map>
              </div>
        </div>
          <div class="fl w-100 w-100-ns pa2">
          <dndlist lists={lists}></dndlist>
              </div>
        </div>
  </div>
  </div>
<script>
    this.lists = opts.lists;
    this.devices = opts.devices;
    this.doughnutChart = opts.doughnutChart;
    this.lineChart = opts.lineChart;
    this.barChart = opts.barChart;
</script>
</content>

