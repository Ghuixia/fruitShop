
Page({
  data: {
   list:[],
   number:0,
   isHidden:1,
   showModalStatus: true,
   numbers:0,
   sell_all:false,
   batchIds:'',
   a:false,
   lid:'',
   showModalStatus1: true,
   hidden:1,
  },
  
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) { 
   this.loadList()
  },
 loadList:function(){
   wx.request({
     url: 'http://127.0.0.1:3000/sel',
     method: 'get',
     success: (res) => {
       var rows = res.data.data;
       for (var item of rows) {
         item.ck = false;
       }
       this.setData({
         list: rows
       })

       var list = this.data.list;
       console.log(list)
     },
   })
   this.setData({
     sell_all: false
   })
   this.setData({
     numbers: 0
   })
   setTimeout(() => {
     this.show1()
   }, 100)
  
 },
  show1:function(){
   var  list=this.data.list
   //console.log(list)
  var length=list.length
   this.setData({
     length:length
   })
   console.log(length)
   },
  show:function(e){
    var that = this;
    that.setData({
      showModalStatus: false//显示编辑运算   
    })
    that.setData({//把选中值，放入判断值中
      isHidden: 0,
    })
    this.onLoad()
  },
  change:function(e){
    var that = this;
    that.setData({
      showModalStatus:true//显示完成删除     
    })
    that.setData({//把选中值，放入判断值中
      isHidden: 1,
    })
  },
 rad:function(e){
   var id = e.currentTarget.dataset.id;
   var i = e.currentTarget.dataset.i;
     var list = this.data.list;
     list[i].ck = !list[i].ck;
     this.setData({
       list:list
     })
   var count = 0,num = 0;
   for(var item of list){
     if(item.ck){
       count++;
       num+=item.cprice
     }
   }
   this.setData({
     numbers:num
   })
   if(count<this.data.list.length){
     this.setData({
       sell_all:false
     })
   }else{
     this.setData({
       sell_all: true
     })
   }

  },
  selectAll:function(e){
    this.setData({
      sell_all:!this.data.sell_all
    })
    console.log(this.data.sell_all)
    if(this.data.sell_all){
      var list = this.data.list;
      var num = 0;
      for(var item of list){
        item.ck = true
        num += item.cprice;
      }
      this.setData({
        list:list,
        numbers:num
      })
    }else{
      var list = this.data.list;
      for (var item of list) {
        item.ck = false
        num=0
      }
      this.setData({
        list: list,
        numbers: num
      })
    }
   
  },
  cal:function(e){
    console.log(e)
    var list=this.data.list;
    console.log(list)
    if(this.data.numbers==0){
      wx.showToast({
        title: '请选择商品',
      })
    }else{
     for(var item of this.data.list){
       if(item.ck){
        var did=item.did
        var cprice=item.cprice;
        var dname=item.dname;
        var src=item.src;
        var price=item.price;
        var count=item.count;
         var rand = Math.floor(Math.random() * 900) + 100;
         var tro = generateTimeReqestNumber() + rand;
        function pad2(n){
          { return n < 10 ? '0' + n : n }
        }
         function generateTimeReqestNumber() {
           var date = new Date();
           return date.getFullYear().toString() + pad2(date.getMonth() + 1) + pad2(date.getDate()) + pad2(date.getHours()) + pad2(date.getMinutes());
         }
        //  console.log(tro)
        wx.request({
          url:'http://127.0.0.1:3000/order',
          header: {
            "Content-Type": "application/x-www-form-urlencoded;charset=utf-8"
          },
          method:'post',
          data: { did, dname, src, price, count, cprice,tro},
          success:(res)=>{
            console.log(res)
            setTimeout(()=>{
              this.onLoad()
              wx.navigateTo({
                url: '/pages/order/order',
              })
            },500)
          
          }
          
        })
        
       }
       
     }
      
    }
   
  },
  ff:function(){
    wx.switchTab({
      url: '/pages/index/index',
    })
  },
  del:function(e){
    var list=this.data.list;
    console.log(list)
    console.log(e)
    for(var i=0;i<list.length;i++){
      if(list[i].ck){
        var did=list[i].did;
        wx.request({
          url: 'http://127.0.0.1:3000/del_order?did',
          method: 'get',
          data: { did },
          success: (res) => {
            list.splice(this,1)
            console.log(res)
            //this.onLoad()
          this.setData({
            list
          })
          this.loadList()
          }
        })
      
    }

    }
  },
  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
  
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
   this.loadList();
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
  
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
  
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
  
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
  
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
  
  }
})