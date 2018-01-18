<content>
    <div class="content w-80 h-100 fr bg-near-white">
     <div class="cf pt3 ph2-ns">
    <panel chart="{doughnutChart}"></panel>
    </div>
          <div class="fl w-100 w-50-ns pa2">
            <panel chart="{barChart}">
            </panel>
          </div>
          <div class="fl w-100 w-50-ns pa2">
            <panel chart="{lineChart}"></panel>
          </div>
        </div>
    </div>
                            <script>
                            this.doughnutChart = opts.doughnutChart;
                            this.lineChart = opts.lineChart;
                            this.barChart = opts.barChart;
                        </script>
</content>

