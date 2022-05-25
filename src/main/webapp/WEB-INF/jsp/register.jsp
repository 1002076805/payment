<!doctype html>
<html lang="zh-CN">
<head>
  <link rel="stylesheet" href="static/bootstrap/bootstrap.4.6.min.css">
  <link href="static/style/reg.css" rel="stylesheet">
</head>

<body class="bg-light">

  <div style="position: absolute;left: 70%;top: 5px">
    <h4>Have account?<a href="controller?command=login">Login</a></h4>
  </div>

  <div class="container">
    <div class="py-5 text-center" style="left: 30%">
      <img class="d-block mx-auto mb-4" src="static/img/pay.svg" alt="" width="72" height="72">
      <h2>Welcome to register</h2>
      <p class="lead">Welcome to the registration page. We will keep all your information properly. Please remember all your information when registering. Thank you for your cooperation.</p>
    </div>

    <div class="row"  >
      <div class="col-md-8 order-md-1">
        <form action="controller?command=registerMain" method="post" class="needs-validation" novalidate>

          <div class="mb-3">
            <label for="account">Name</label>
            <div class="input-group">
              <input type="text" class="form-control" name="username" id="username" placeholder="Username" required>
              <div class="invalid-feedback" style="width: 100%;">
                Name is required.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="account">Account</label>
            <div class="input-group">
              <input type="text" class="form-control" name="account" id="account" placeholder="Account" required>
              <div class="invalid-feedback" style="width: 100%;">
                Account is required.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="password">Password</label>
            <div class="input-group">
              <input type="text" class="form-control" name="password" id="password" placeholder="Password" required>
              <div class="invalid-feedback" style="width: 100%;">
                Password is required.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="idNumber">Id Number</label>
            <div class="input-group">
              <input type="text" class="form-control" name="idNumber" id="idNumber" placeholder="Id Number" required>
              <div class="invalid-feedback" style="width: 100%;">
                Id Number is required.
              </div>
            </div>
          </div>

          <h4 class="mb-3">Gender</h4>
          <div class="d-block my-3">
            <div class="custom-control custom-radio">
              <input id="credit" name="gender" value="male" type="radio" class="custom-control-input" checked required>
              <label class="custom-control-label" for="credit">male</label>
            </div>
            <div class="custom-control custom-radio">
              <input id="debit" name="gender" value="female" type="radio" class="custom-control-input" required>
              <label class="custom-control-label" for="debit">female</label>
            </div>
          </div>

          <div class="mb-3">
            <label for="tel">Telephone Number</label>
            <div class="input-group">
              <input type="text" class="form-control" name="tel" id="tel" placeholder="Telephone Number" required>
              <div class="invalid-feedback" style="width: 100%;">
                Telephone Number is required.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="address">Address</label>
            <div class="input-group">
              <input type="text" class="form-control" name="address" id="address" placeholder="Address" required>
              <div class="invalid-feedback" style="width: 100%;">
                Address is required.
              </div>
            </div>
          </div>

          <button value="register"  class="btn btn-primary btn-lg btn-block" type="submit">Register</button>

        </form>
      </div>
    </div>

    <footer class="my-5 pt-5 text-muted text-center text-small">
      <p class="mb-1">&copy; 2017-2022 Just Pay</p>
    </footer>

  </div>
</body>
</html>
