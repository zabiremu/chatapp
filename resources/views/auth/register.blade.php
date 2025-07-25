<!doctype html>
<html lang="en" dir="ltr">

<head>

    <!-- META DATA -->
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Chatapp - Register">
    <meta name="author" content="Spruko Technologies Private Limited">
    <meta name="keywords"
        content="admin,admin dashboard,admin panel,admin template,bootstrap,clean,dashboard,flat,jquery,modern,responsive,premium admin templates,responsive admin,ui,ui kit.">

    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/x-icon" href="../assets/images/brand/favicon.ico" />

    <!-- TITLE -->
    <title>Chatapp - Register</title>

    <!-- BOOTSTRAP CSS -->
    <link id="style" href="{{ asset('backend/assets/plugins/bootstrap/css/bootstrap.min.css') }}"
        rel="stylesheet" />

    <!-- STYLE CSS -->
    <link href="{{ asset('backend/assets/css/style.css') }}" rel="stylesheet" />
    <link href="{{ asset('backend/assets/css/skin-modes.css') }}" rel="stylesheet" />

    <!--- FONT-ICONS CSS -->
    <link href="{{ asset('backend/assets/css/icons.css') }}" rel="stylesheet" />

</head>

<body class="ltr login-img">

    <!-- GLOABAL LOADER -->
    <div id="global-loader">
        <img src="{{ asset('backend/assets/images/loader.svg') }}" class="loader-img" alt="Loader">
    </div>
    <!-- /GLOABAL LOADER -->

    <!-- PAGE -->
    <div class="page">
        <div>
            <!-- CONTAINER OPEN -->
            <div class="mx-auto text-center col col-login">
                <a href="#">
                    <img src="{{ asset('backend/assets/images/brand/logo.png') }}" class="header-brand-img"
                        alt="">
                </a>
            </div>
            <div class="container-login100">
                <div class="p-0 wrap-login100">
                    <div class="card-body">
                        <form class="login100-form validate-form" method="POST"
                            action="{{ route('register') }}">
									@csrf
                                    <span class="login100-form-title">
                            Registration
                            </span>

                            <div class="wrap-input100 validate-input">
                                <input class="input100" type="text" name="name" :value="old('name')" required
                                    autofocus placeholder="Enter Your Name">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="mdi mdi-account" aria-hidden="true"></i>
                                </span>
                                @error('name')
                                    <span class="mt-3 text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="wrap-input100 validate-input">
                                <input class="input100" type="email" name="email" :value="old('email')" required
                                    placeholder="Email">
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
                                    autocomplete="new-password" placeholder="Password">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="zmdi zmdi-lock" aria-hidden="true"></i>
                                </span>
                                @error('password')
                                    <span class="mt-3 text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="wrap-input100 validate-input">
                                <input class="input100" type="password"
                                name="password_confirmation" required  placeholder="Confirm Password">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="zmdi zmdi-lock" aria-hidden="true"></i>
                                </span>
                                @error('password_confirmation')
                                    <span class="mt-3 text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <label class="mt-4 custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" required>
                                <span class="custom-control-label">Agree the <a href="terms.html">terms and
                                        policy</a></span>
                            </label>
                            <div class="container-login100-form-btn">
                                <button type="submit" class="login100-form-btn btn-primary">
                                    Register
                                </button>
                            </div>
                            <div class="pt-3 text-center">
                                <p class="mb-0 text-dark">Already have account?<a href="{{ route('login') }}"
                                        class="text-primary ms-1">Sign In</a></p>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <div class="my-3 d-flex justify-content-center">

                        </div>
                    </div>
                </div>
            </div>
            <!-- CONTAINER CLOSED -->
        </div>
    </div>
    <!-- END PAGE -->

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
