<!doctype html>
<html lang="en" dir="ltr">
<head>
    <!-- META DATA -->
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Noa – Bootstrap 5 Admin & Dashboard Template">
    <meta name="author" content="Spruko Technologies Private Limited">
    <meta name="keywords"
        content="admin,admin dashboard,admin panel,admin template,bootstrap,clean,dashboard,flat,jquery,modern,responsive,premium admin templates,responsive admin,ui,ui kit.">

    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/x-icon" href="../assets/images/brand/favicon.ico" />

    <!-- TITLE -->
    <title>Chatapp - Login</title>

    <!-- BOOTSTRAP CSS -->
    <link id="style" href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- STYLE CSS -->
    <link href="{{ asset('backend/assets/css/style.css') }}" rel="stylesheet" />
    <link href="{{ asset('backend/assets/css/skin-modes.css') }}" rel="stylesheet" />

    <!--- FONT-ICONS CSS -->
    <link href="{{ asset('backend/assets/css/icons.css') }}" rel="stylesheet" />

</head>

<body class="ltr login-img">

    <!-- GLOABAL LOADER -->

    <!-- /GLOABAL LOADER -->

    <!-- PAGE -->
    <div class="page">
        <div>
            <!-- CONTAINER OPEN -->
            <div class="mx-auto text-center col col-login">
                <a href="#" class="text-center">
                    <img src="{{ asset('backend/assets/images/brand/logo.png') }}"
                </a>
            </div>
            <div class="container-login100">
                <div class="p-0 wrap-login100">
                    <div class="card-body">
                        <form method="POST" action="{{ route('login') }}" class="login100-form validate-form">
                            @csrf
                            <span class="login100-form-title">
                                Login
                            </span>
                            <div class="wrap-input100 validate-input">
                                <input class="input100" type="email" name="email" placeholder="Email" required
                                    autofocus>
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="zmdi zmdi-email" aria-hidden="true"></i>
                                </span>
                                @error('email')
                                    <span class="mt-3 text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="wrap-input100 validate-input">
                                <input class="input100" type="password" name="password" required
                                    autocomplete="current-password" placeholder="Password">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="zmdi zmdi-lock" aria-hidden="true"></i>
                                </span>
                                @error('password')
                                    <span class="mt-3 text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="container-login100-form-btn">
                                <button class="login100-form-btn btn-primary">
                                    Login
                                </button>
                            </div>
                            <div class="pt-3 text-center">
                                <p class="mb-0 text-dark">Not a member?<a href="{{ route('register') }}"
                                        class="text-primary ms-1">Create an Account</a></p>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
            <!-- CONTAINER CLOSED -->
        </div>
    </div>
    <!-- End PAGE -->


    <!-- BACKGROUND-IMAGE CLOSED -->

    <!-- JQUERY JS -->
    <script src="{{ asset('backend/assets/js/jquery.min.js') }}"></script>

    <!-- BOOTSTRAP JS -->
    <script src="{{ asset('backend/assets/plugins/bootstrap/js/popper.min.js') }}"></script>
    <script src="{{ asset('backend/assets/plugins/bootstrap/js/bootstrap.min.js') }}"></script>

    <!-- Perfect SCROLLBAR JS-->
    <script src="{{ asset('backend/assets/plugins/p-scroll/perfect-scrollbar.js') }}"></script>

    <!-- STICKY JS -->
    <script src="{{ asset('backend/assets/js/sticky.js') }}"></script>

    <!-- COLOR THEME JS -->
    <script src="{{ asset('backend/assets/js/themeColors.js') }}"></script>

    <!-- CUSTOM JS -->
    <script src="{{ asset('backend/assets/js/custom.js') }}"></script>

</body>

</html>
