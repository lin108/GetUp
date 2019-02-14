<morning>




  <div if={!userInfo }>
    <label>Enter Your Name:</label>
    <input type="text" ref="userName" placeholder="LQL"/>
    <button onclick={ userLogin }>Confirm</button>
  </div>


  <div if={userInfo}>
      <h1>Help {userInfo.userName}. Up!</h1>
      <button onclick={ userLogout }>Change Name</button>
        <button onclick={ GetUp }>Get Up!</button>
  </div>

  <style>
    :scope {
      display: block;
    }

    .userInfo {
      background-color: yellow;

      display: inline-block;
      border: 1px solid #CCC;
      border-radius: 6px;
      margin: 2px;
      padding: 10px;
    }
    img{

      margin: 20px;
      padding: 10px;
    }
  </style>







  <img src="img/{ myImage }.gif">


  <div>
    <div class="bar hunger">

    </div>
    <p>Energy: { up }</p>
  </div>





  <script>
  this.userLogin = function(e){
       this.userInfo = {
         userName: this.refs.userName.value,
       }
     }
  this.userLogout = function(e){
            this.userInfo = false;

          }












    //make a copy of my pet object and call it that

    var that  = this;

    //initial state
    this.up = 0;
    this.myImage = "sleep";

    //tell DOM window to increase hunger every three second
    //console.log(that);
    window.setInterval(function(){
      that.decUp();
      console.log("wait");
      that.update();
      that.checkStatus();
      <!-- console.log(this); -->
    }, 3000);


    decUp() {
    /*  js if statement shorthand   */
      this.up = this.up - 70 < 0 ? 0 : this.up - 70;
    }

    incUp() {
      console.log(this.up);
      this.up = this.up + 10 > 100 ? 100 : this.up + 3;
    }

    checkStatus() {
      if (this.up >= 80){
        this.myImage = "awake";
      } else if (this.up <= 10){
        this.myImage = "sleep";
      }else{
        this.myImage = "gettingUp";
      }
    }

// functions that respond to events

    GetUp(e) {
      this.incUp();
      this.checkStatus();
    }
  </script>

  <style>
  /* styles that will be applied to the root level of my tag*/
  :scope{
    margin:auto;
  }

  img{
    weight:auto;
    height:200px;
  }

  </style>
</morning>
