var login={
    template:`<div>
      用户名:<input/><br>
      密码:<input type="password"/><br>
      <input type="button" @click="login" value="登录"/>
    </div>`,
    methods:{
      login(){
        alert("登录成功!");
        this.$router.push("/")
      }
    }
  }