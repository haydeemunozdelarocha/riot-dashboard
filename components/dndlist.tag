<dndlist class="flex justify-between">
  <div class="shadow-4 br3 pa3 w-100 bg-white" style="min-height:250px;">
    <h3 pa1 fw1 f5>Maintenance</h3>

    <div class='list ' each={ list, i in this.lists } ondrop={parent.on_drop}
      ondragover={parent.on_drag_over}>
      <p>{ list.name }</p>
      <div class="device pa2 mv1 br5" draggable="true" each={ device in list.devices} style="background-color:{device.color}"
        ondragend={parent.drag_end}
        ondragstart={parent.drag_start}>
        {device.name}
      </div>
    </div>
    </div>

  this.lists=opts.lists;
  this.pageId=null;


  this.on('mount', function() {
    this.placeholder=document.createElement("div");
    this.placeholder.className = "placeholder";
  })

  on_drop(event){
    var pos = 0;
    var children=this.placeholder.parentNode.children;
    for(var i=0;i<children.length;i++){
      if(children[i]==this.placeholder) break;
      if(children[i]!=this.dragged && children[i].classList.contains("device"))
        pos++;
    }
    this.moveDevice(this.lists,event.item.list.name,this.deviceId,pos);
    this.update();
  }

  on_drag_over(e){
    if(this.dragged.style.display != "none"){
      this.dragged.style.display = "none";
      this.dragged.parentNode.insertBefore(this.placeholder, this.dragged);
    }

    if(e.target.className != "device" && e.target.className!="list")
      return;

    /// PAGE ///
    if(e.target.className=="device"){
      this.over = e.target;
      // Inside the dragOver method
      var relY = e.clientY - this.over.offsetTop;
      var height = this.over.offsetHeight / 2;
      var parent = e.target.parentNode;

      if(relY > height) {
        this.nodePlacement = "after";
        parent.insertBefore(this.placeholder, e.target.nextElementSibling);
      }
      else if(relY < height) {
        this.nodePlacement = "before"
        parent.insertBefore(this.placeholder, e.target);
      }
    }

    /// LIST ///
    if(e.target.className=="list"){
      var devices=e.target.getElementsByClassName("device");
      if(devices.length==0 || devices.length==1 && devices[0]==this.dragged){
        e.target.appendChild(this.placeholder);
      }
    }
  }

  drag_end(event){
    event.preventUpdate=true;
    this.dragged.style.display = "block";
    this.dragged.classList.remove("rotated");
    if(this.placeholder.parentNode){
      this.placeholder.parentNode.removeChild(this.placeholder);
    }
  }

  drag_start(event){
      this.dragged=event.target;
      event.dataTransfer.setData('text', 'foo');
      event.target.classList.add("rotated");
      this.deviceId=event.item.device.name;
      return true;
  }

  removePage(lists,idDevice){
      for(var i=0;i<lists.length;i++){
        var list=lists[i];
          for(var j=0;list.devices && j<list.devices.length;j++){
            var device=list.devices[j];
            if(device.name==idDevice){
              list.devices.splice(j,1);
              return device;
            }
          }
      }
   }

   moveDevice(lists,idList,idDevice,pos){
      var deviceObj=this.removeDevice(lists,idDevice);
      if(deviceObj){
        for(var i=0;i<lists.length;i++){
          var list=lists[i];
          if(list.name==idList){
            if(!list.devices)
              list.devices=[];
            list.devices.splice(pos, 0, deviceObj);
            break;
          }
        }
      }
   }

</dndlist>

