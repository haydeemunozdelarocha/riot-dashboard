<sidebar>
    <div class="sidebar flex fixed-l fixed-m fl-m fl-l fn-ns w-20-l w-20-m w-100-ns h-100-m h-100-l h-25-ns bg-navy white" id="side" style="min-width:20%">
       <sidebar-header>
        </sidebar-header>
        <div class="w-100-l w-100-m w-70-ns pr-2-ns" id="hamburger-cont">

      <nav class="r0 f5 fw1 w-100-m w-100-l pr0-l pr0-m pr3-ns pt2-ns tl">

<div class="flex pa3 dn-l dn-m" id="hamburger">
<a class="f2 link dib white dim mr3 mr4-ns rotate-90" href="#">| | |</a>
</div>
<div class="absolute-m relative-l flex flex-column r0 f5-l f6-m f5-ns fw1 w-100-m w-100-l pr0-l pr0-m pr3-ns pl3-l pt2-ns h25-ns w-25-ns bg-blue-ns" id="menu" >
<a class="link white bg-animate hover-bg-blue hover-bl-bw2--red dib pb3-m pb3-l pb1-ns pl3-m pl3-l pt1 w-100-l w-100-m" href="#0">Dashboard</a>
<a class="link white bg-animate hover-bg-blue hover-bl-bw2--red dib pb3-m pb3-l pb1-ns pl3-m pl3-l pt1 w-100-l w-100-m" href="#0">Material Loads</a>
<a class="link white bg-animate hover-bg-blue hover-bl-bw2--red dib pb3-m pb3-l pb1-ns pl3-m pl3-l pt1 w-100-l w-100-m" href="#0">Devices</a>
</div>

</nav>
          </div>
    </div>
<script>
    this.on('mount', function(){
      document.getElementById('hamburger').addEventListener('click', event => {

          let sidebar = document.getElementById('side')
          let menu = document.getElementById('menu')
          let hamburger = document.getElementById('hamburger')
          event.preventDefault()
          sidebar.classList.toggle('transform-off')
          menu.classList.toggle('show-menu')

      })



})
</script>
</sidebar>
