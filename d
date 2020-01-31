[33mcommit c393aff08c58cf4e8c8d551363d8e51a9aff9ecb[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m)[m
Author: Zulfikar08 <zulfikarsubang89@gmail.com>
Date:   Tue Jan 14 15:13:34 2020 +0700

    Initial commit

[1mdiff --git a/.editorconfig b/.editorconfig[m
[1mnew file mode 100644[m
[1mindex 0000000..6f313c6[m
[1m--- /dev/null[m
[1m+++ b/.editorconfig[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32mroot = true[m
[32m+[m
[32m+[m[32m[*][m
[32m+[m[32mcharset = utf-8[m
[32m+[m[32mend_of_line = lf[m
[32m+[m[32minsert_final_newline = true[m
[32m+[m[32mindent_style = space[m
[32m+[m[32mindent_size = 4[m
[32m+[m[32mtrim_trailing_whitespace = true[m
[32m+[m
[32m+[m[32m[*.md][m
[32m+[m[32mtrim_trailing_whitespace = false[m
[32m+[m
[32m+[m[32m[*.yml][m
[32m+[m[32mindent_size = 2[m
[1mdiff --git a/.env.example b/.env.example[m
[1mnew file mode 100644[m
[1mindex 0000000..604b401[m
[1m--- /dev/null[m
[1m+++ b/.env.example[m
[36m@@ -0,0 +1,44 @@[m
[32m+[m[32mAPP_NAME=Laravel[m
[32m+[m[32mAPP_ENV=local[m
[32m+[m[32mAPP_KEY=[m
[32m+[m[32mAPP_DEBUG=true[m
[32m+[m[32mAPP_URL=http://localhost[m
[32m+[m
[32m+[m[32mLOG_CHANNEL=stack[m
[32m+[m
[32m+[m[32mDB_CONNECTION=mysql[m
[32m+[m[32mDB_HOST=127.0.0.1[m
[32m+[m[32mDB_PORT=3306[m
[32m+[m[32mDB_DATABASE=laravel[m
[32m+[m[32mDB_USERNAME=root[m
[32m+[m[32mDB_PASSWORD=[m
[32m+[m
[32m+[m[32mBROADCAST_DRIVER=log[m
[32m+[m[32mCACHE_DRIVER=file[m
[32m+[m[32mQUEUE_CONNECTION=sync[m
[32m+[m[32mSESSION_DRIVER=file[m
[32m+[m[32mSESSION_LIFETIME=120[m
[32m+[m
[32m+[m[32mREDIS_HOST=127.0.0.1[m
[32m+[m[32mREDIS_PASSWORD=null[m
[32m+[m[32mREDIS_PORT=6379[m
[32m+[m
[32m+[m[32mMAIL_DRIVER=smtp[m
[32m+[m[32mMAIL_HOST=smtp.mailtrap.io[m
[32m+[m[32mMAIL_PORT=2525[m
[32m+[m[32mMAIL_USERNAME=null[m
[32m+[m[32mMAIL_PASSWORD=null[m
[32m+[m[32mMAIL_ENCRYPTION=null[m
[32m+[m
[32m+[m[32mAWS_ACCESS_KEY_ID=[m
[32m+[m[32mAWS_SECRET_ACCESS_KEY=[m
[32m+[m[32mAWS_DEFAULT_REGION=us-east-1[m
[32m+[m[32mAWS_BUCKET=[m
[32m+[m
[32m+[m[32mPUSHER_APP_ID=[m
[32m+[m[32mPUSHER_APP_KEY=[m
[32m+[m[32mPUSHER_APP_SECRET=[m
[32m+[m[32mPUSHER_APP_CLUSTER=mt1[m
[32m+[m
[32m+[m[32mMIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"[m
[32m+[m[32mMIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"[m
[1mdiff --git a/.gitattributes b/.gitattributes[m
[1mnew file mode 100644[m
[1mindex 0000000..967315d[m
[1m--- /dev/null[m
[1m+++ b/.gitattributes[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32m* text=auto[m
[32m+[m[32m*.css linguist-vendored[m
[32m+[m[32m*.scss linguist-vendored[m
[32m+[m[32m*.js linguist-vendored[m
[32m+[m[32mCHANGELOG.md export-ignore[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..0f7df0f[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32m/node_modules[m
[32m+[m[32m/public/hot[m
[32m+[m[32m/public/storage[m
[32m+[m[32m/storage/*.key[m
[32m+[m[32m/vendor[m
[32m+[m[32m.env[m
[32m+[m[32m.env.backup[m
[32m+[m[32m.phpunit.result.cache[m
[32m+[m[32mHomestead.json[m
[32m+[m[32mHomestead.yaml[m
[32m+[m[32mnpm-debug.log[m
[32m+[m[32myarn-error.log[m
[1mdiff --git a/.styleci.yml b/.styleci.yml[m
[1mnew file mode 100644[m
[1mindex 0000000..1db61d9[m
[1m--- /dev/null[m
[1m+++ b/.styleci.yml[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32mphp:[m
[32m+[m[32m  preset: laravel[m
[32m+[m[32m  disabled:[m
[32m+[m[32m    - unused_use[m
[32m+[m[32m  finder:[m
[32m+[m[32m    not-name:[m
[32m+[m[32m      - index.php[m
[32m+[m[32m      - server.php[m
[32m+[m[32mjs:[m
[32m+[m[32m  finder:[m
[32m+[m[32m    not-name:[m
[32m+[m[32m      - webpack.mix.js[m
[32m+[m[32mcss: true[m
[1mdiff --git a/app/Console/Kernel.php b/app/Console/Kernel.php[m
[1mnew file mode 100644[m
[1mindex 0000000..a8c5158[m
[1m--- /dev/null[m
[1m+++ b/app/Console/Kernel.php[m
[36m@@ -0,0 +1,42 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Console;[m
[32m+[m
[32m+[m[32muse Illuminate\Console\Scheduling\Schedule;[m
[32m+[m[32muse Illuminate\Foundation\Console\Kernel as ConsoleKernel;[m
[32m+[m
[32m+[m[32mclass Kernel extends ConsoleKernel[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The Artisan commands provided by your application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $commands = [[m
[32m+[m[32m        //[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Define the application's command schedule.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function schedule(Schedule $schedule)[m
[32m+[m[32m    {[m
[32m+[m[32m        // $schedule->command('inspire')[m
[32m+[m[32m        //          ->hourly();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Register the commands for the application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function commands()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->load(__DIR__.'/Commands');[m
[32m+[m
[32m+[m[32m        require base_path('routes/console.php');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Exceptions/Handler.php b/app/Exceptions/Handler.php[m
[1mnew file mode 100644[m
[1mindex 0000000..043cad6[m
[1m--- /dev/null[m
[1m+++ b/app/Exceptions/Handler.php[m
[36m@@ -0,0 +1,51 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Exceptions;[m
[32m+[m
[32m+[m[32muse Exception;[m
[32m+[m[32muse Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;[m
[32m+[m
[32m+[m[32mclass Handler extends ExceptionHandler[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * A list of the exception types that are not reported.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $dontReport = [[m
[32m+[m[32m        //[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * A list of the inputs that are never flashed for validation exceptions.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $dontFlash = [[m
[32m+[m[32m        'password',[m
[32m+[m[32m        'password_confirmation',[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Report or log an exception.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  \Exception  $exception[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function report(Exception $exception)[m
[32m+[m[32m    {[m
[32m+[m[32m        parent::report($exception);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Render an exception into an HTTP response.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  \Illuminate\Http\Request  $request[m
[32m+[m[32m     * @param  \Exception  $exception[m
[32m+[m[32m     * @return \Illuminate\Http\Response[m
[32m+[m[32m     */[m
[32m+[m[32m    public function render($request, Exception $exception)[m
[32m+[m[32m    {[m
[32m+[m[32m        return parent::render($request, $exception);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/ForgotPasswordController.php b/app/Http/Controllers/Auth/ForgotPasswordController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..6a247fe[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/ForgotPasswordController.php[m
[36m@@ -0,0 +1,32 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse Illuminate\Foundation\Auth\SendsPasswordResetEmails;[m
[32m+[m
[32m+[m[32mclass ForgotPasswordController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Password Reset Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller is responsible for handling password reset emails and[m
[32m+[m[32m    | includes a trait which assists in sending these notifications from[m
[32m+[m[32m    | your application to your users. Feel free to explore this trait.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use SendsPasswordResetEmails;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new controller instance.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function __construct()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->middleware('guest');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/LoginController.php b/app/Http/Controllers/Auth/LoginController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..b2ea669[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/LoginController.php[m
[36m@@ -0,0 +1,39 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse Illuminate\Foundation\Auth\AuthenticatesUsers;[m
[32m+[m
[32m+[m[32mclass LoginController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Login Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller handles authenticating users for the application and[m
[32m+[m[32m    | redirecting them to your home screen. The controller uses a trait[m
[32m+[m[32m    | to conveniently provide its functionality to your applications.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use AuthenticatesUsers;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Where to redirect users after login.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $redirectTo = '/home';[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new controller instance.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function __construct()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->middleware('guest')->except('logout');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/RegisterController.php b/app/Http/Controllers/Auth/RegisterController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..85b9057[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/RegisterController.php[m
[36m@@ -0,0 +1,72 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\User;[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse Illuminate\Support\Facades\Hash;[m
[32m+[m[32muse Illuminate\Support\Facades\Validator;[m
[32m+[m[32muse Illuminate\Foundation\Auth\RegistersUsers;[m
[32m+[m
[32m+[m[32mclass RegisterController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Register Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller handles the registration of new users as well as their[m
[32m+[m[32m    | validation and creation. By default this controller uses a trait to[m
[32m+[m[32m    | provide this functionality without requiring any additional code.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use RegistersUsers;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Where to redirect users after registration.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $redirectTo = '/home';[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new controller instance.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function __construct()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->middleware('guest');[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Get a validator for an incoming registration request.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  array  $data[m
[32m+[m[32m     * @return \Illuminate\Contracts\Validation\Validator[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function validator(array $data)[m
[32m+[m[32m    {[m
[32m+[m[32m        return Validator::make($data, [[m
[32m+[m[32m            'name' => ['required', 'string', 'max:255'],[m
[32m+[m[32m            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],[m
[32m+[m[32m            'password' => ['required', 'string', 'min:8', 'confirmed'],[m
[32m+[m[32m        ]);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new user instance after a valid registration.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  array  $data[m
[32m+[m[32m     * @return \App\User[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function create(array $data)[m
[32m+[m[32m    {[m
[32m+[m[32m        return User::create([[m
[32m+[m[32m            'name' => $data['name'],[m
[32m+[m[32m            'email' => $data['email'],[m
[32m+[m[32m            'password' => Hash::make($data['password']),[m
[32m+[m[32m        ]);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/ResetPasswordController.php b/app/Http/Controllers/Auth/ResetPasswordController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..cf726ee[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/ResetPasswordController.php[m
[36m@@ -0,0 +1,39 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse Illuminate\Foundation\Auth\ResetsPasswords;[m
[32m+[m
[32m+[m[32mclass ResetPasswordController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Password Reset Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller is responsible for handling password reset requests[m
[32m+[m[32m    | and uses a simple trait to include this behavior. You're free to[m
[32m+[m[32m    | explore this trait and override any methods you wish to tweak.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use ResetsPasswords;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Where to redirect users after resetting their password.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $redirectTo = '/home';[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new controller instance.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function __construct()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->middleware('guest');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/VerificationController.php b/app/Http/Controllers/Auth/VerificationController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..23a43a8[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/VerificationController.php[m
[36m@@ -0,0 +1,41 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse Illuminate\Foundation\Auth\VerifiesEmails;[m
[32m+[m
[32m+[m[32mclass VerificationController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Email Verification Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller is responsible for handling email verification for any[m
[32m+[m[32m    | user that recently registered with the application. Emails may also[m
[32m+[m[32m    | be re-sent if the user didn't receive the original email message.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use VerifiesEmails;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Where to redirect users after verification.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $redirectTo = '/home';[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new controller instance.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function __construct()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->middleware('auth');[m
[32m+[m[32m        $this->middleware('signed')->only('verify');[m
[32m+[m[32m        $this->middleware('throttle:6,1')->only('verify', 'resend');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Controller.php b/app/Http/Controllers/Controller.php[m
[1mnew file mode 100644[m
[1mindex 0000000..03e02a2[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Controller.php[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers;[m
[32m+[m
[32m+[m[32muse Illuminate\Foundation\Bus\DispatchesJobs;[m
[32m+[m[32muse Illuminate\Routing\Controller as BaseController;[m
[32m+[m[32muse Illuminate\Foundation\Validation\ValidatesRequests;[m
[32m+[m[32muse Illuminate\Foundation\Auth\Access\AuthorizesRequests;[m
[32m+[m
[32m+[m[32mclass Controller extends BaseController[m
[32m+[m[32m{[m
[32m+[m[32m    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Kernel.php b/app/Http/Kernel.php[m
[1mnew file mode 100644[m
[1mindex 0000000..6ee2f77[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Kernel.php[m
[36m@@ -0,0 +1,80 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http;[m
[32m+[m
[32m+[m[32muse Illuminate\Foundation\Http\Kernel as HttpKernel;[m
[32m+[m
[32m+[m[32mclass Kernel extends HttpKernel[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The application's global HTTP middleware stack.[m
[32m+[m[32m     *[m
[32m+[m[32m     * These middleware are run during every request to your application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $middleware = [[m
[32m+[m[32m        \App\Http\Middleware\TrustProxies::class,[m
[32m+[m[32m        \App\Http\Middleware\CheckForMaintenanceMode::class,[m
[32m+[m[32m        \Illuminate\Foundation\Http\Middleware\ValidatePostSize::class,[m
[32m+[m[32m        \App\Http\Middleware\TrimStrings::class,[m
[32m+[m[32m        \Illuminate\Foundation\Http\Middleware\ConvertEmptyStringsToNull::class,[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The application's route middleware groups.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $middlewareGroups = [[m
[32m+[m[32m        'web' => [[m
[32m+[m[32m            \App\Http\Middleware\EncryptCookies::class,[m
[32m+[m[32m            \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,[m
[32m+[m[32m            \Illuminate\Session\Middleware\StartSession::class,[m
[32m+[m[32m            // \Illuminate\Session\Middleware\AuthenticateSession::class,[m
[32m+[m[32m            \Illuminate\View\Middleware\ShareErrorsFromSession::class,[m
[32m+[m[32m            \App\Http\Middleware\VerifyCsrfToken::class,[m
[32m+[m[32m            \Illuminate\Routing\Middleware\SubstituteBindings::class,[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'api' => [[m
[32m+[m[32m            'throttle:60,1',[m
[32m+[m[32m            'bindings',[m
[32m+[m[32m        ],[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The application's route middleware.[m
[32m+[m[32m     *[m
[32m+[m[32m     * These middleware may be assigned to groups or used individually.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $routeMiddleware = [[m
[32m+[m[32m        'auth' => \App\Http\Middleware\Authenticate::class,[m
[32m+[m[32m        'auth.basic' => \Illuminate\Auth\Middleware\AuthenticateWithBasicAuth::class,[m
[32m+[m[32m        'bindings' => \Illuminate\Routing\Middleware\SubstituteBindings::class,[m
[32m+[m[32m        'cache.headers' => \Illuminate\Http\Middleware\SetCacheHeaders::class,[m
[32m+[m[32m        'can' => \Illuminate\Auth\Middleware\Authorize::class,[m
[32m+[m[32m        'guest' => \App\Http\Middleware\RedirectIfAuthenticated::class,[m
[32m+[m[32m        'signed' => \Illuminate\Routing\Middleware\ValidateSignature::class,[m
[32m+[m[32m        'throttle' => \Illuminate\Routing\Middleware\ThrottleRequests::class,[m
[32m+[m[32m        'verified' => \Illuminate\Auth\Middleware\EnsureEmailIsVerified::class,[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The priority-sorted list of middleware.[m
[32m+[m[32m     *[m
[32m+[m[32m     * This forces non-global middleware to always be in the given order.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $middlewarePriority = [[m
[32m+[m[32m        \Illuminate\Session\Middleware\StartSession::class,[m
[32m+[m[32m        \Illuminate\View\Middleware\ShareErrorsFromSession::class,[m
[32m+[m[32m        \App\Http\Middleware\Authenticate::class,[m
[32m+[m[32m        \Illuminate\Session\Middleware\AuthenticateSession::class,[m
[32m+[m[32m        \Illuminate\Routing\Middleware\SubstituteBindings::class,[m
[32m+[m[32m        \Illuminate\Auth\Middleware\Authorize::class,[m
[32m+[m[32m    ];[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Middleware/Authenticate.php b/app/Http/Middleware/Authenticate.php[m
[1mnew file mode 100644[m
[1mindex 0000000..a4be5c5[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Middleware/Authenticate.php[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Middleware;[m
[32m+[m
[32m+[m[32muse Illuminate\Auth\Middleware\Authenticate as Middleware;[m
[32m+[m
[32m+[m[32mclass Authenticate extends Middleware[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Get the path the user should be redirected to when they are not authenticated.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  \Illuminate\Http\Request  $request[m
[32m+[m[32m     * @return string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function redirectTo($request)[m
[32m+[m[32m    {[m
[32m+[m[32m        if (! $request->expectsJson()) {[m
[32m+[m[32m            return route('login');[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Middleware/CheckForMaintenanceMode.php b/app/Http/Middleware/CheckForMaintenanceMode.php[m
[1mnew file mode 100644[m
[1mindex 0000000..35b9824[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Middleware/CheckForMaintenanceMode.php[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Middleware;[m
[32m+[m
[32m+[m[32muse Illuminate\Foundation\Http\Middleware\CheckForMaintenanceMode as Middleware;[m
[32m+[m
[32m+[m[32mclass CheckForMaintenanceMode extends Middleware[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The URIs that should be reachable while maintenance mode is enabled.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $except = [[m
[32m+[m[32m        //[m
[32m+[m[32m    ];[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Middleware/EncryptCookies.php b/app/Http/Middleware/EncryptCookies.php[m
[1mnew file mode 100644[m
[1mindex 0000000..033136a[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Middleware/EncryptCookies.php[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Middleware;[m
[32m+[m
[32m+[m[32muse Illuminate\Cookie\Middleware\EncryptCookies as Middleware;[m
[32m+[m
[32m+[m[32mclass EncryptCookies extends Middleware[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The names of the cookies that should not be encrypted.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $except = [[m
[32m+[m[32m        //[m
[32m+[m[32m    ];[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Middleware/RedirectIfAuthenticated.php b/app/Http/Middleware/RedirectIfAuthenticated.php[m
[1mnew file mode 100644[m
[1mindex 0000000..e4cec9c[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Middleware/RedirectIfAuthenticated.php[m
[36m@@ -0,0 +1,26 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Middleware;[m
[32m+[m
[32m+[m[32muse Closure;[m
[32m+[m[32muse Illuminate\Support\Facades\Auth;[m
[32m+[m
[32m+[m[32mclass RedirectIfAuthenticated[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Handle an incoming request.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  \Illuminate\Http\Request  $request[m
[32m+[m[32m     * @param  \Closure  $next[m
[32m+[m[32m     * @param  string|null  $guard[m
[32m+[m[32m     * @return mixed[m
[32m+[m[32m     */[m
[32m+[m[32m    public function handle($request, Closure $next, $guard = null)[m
[32m+[m[32m    {[m
[32m+[m[32m        if (Auth::guard($guard)->check()) {[m
[32m+[m[32m            return redirect('/home');[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        return $next($request);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Middleware/TrimStrings.php b/app/Http/Middleware/TrimStrings.php[m
[1mnew file mode 100644[m
[1mindex 0000000..5a50e7b[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Middleware/TrimStrings.php[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Middleware;[m
[32m+[m
[32m+[m[32muse Illuminate\Foundation\Http\Middleware\TrimStrings as Middleware;[m
[32m+[m
[32m+[m[32mclass TrimStrings extends Middleware[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The names of the attributes that should not be trimmed.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $except = [[m
[32m+[m[32m        'password',[m
[32m+[m[32m        'password_confirmation',[m
[32m+[m[32m    ];[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Middleware/TrustProxies.php b/app/Http/Middleware/TrustProxies.php[m
[1mnew file mode 100644[m
[1mindex 0000000..12fdf8b[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Middleware/TrustProxies.php[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Middleware;[m
[32m+[m
[32m+[m[32muse Illuminate\Http\Request;[m
[32m+[m[32muse Fideloper\Proxy\TrustProxies as Middleware;[m
[32m+[m
[32m+[m[32mclass TrustProxies extends Middleware[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The trusted proxies for this application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array|string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $proxies;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The headers that should be used to detect proxies.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var int[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $headers = Request::HEADER_X_FORWARDED_ALL;[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Middleware/VerifyCsrfToken.php b/app/Http/Middleware/VerifyCsrfToken.php[m
[1mnew file mode 100644[m
[1mindex 0000000..324a166[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Middleware/VerifyCsrfToken.php[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Middleware;[m
[32m+[m
[32m+[m[32muse Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;[m
[32m+[m
[32m+[m[32mclass VerifyCsrfToken extends Middleware[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Indicates whether the XSRF-TOKEN cookie should be set on the response.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var bool[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $addHttpCookie = true;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The URIs that should be excluded from CSRF verification.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $except = [[m
[32m+[m[32m        //[m
[32m+[m[32m    ];[m
[32m+[m[32m}[m
[1mdiff --git a/app/Providers/AppServiceProvider.php b/app/Providers/AppServiceProvider.php[m
[1mnew file mode 100644[m
[1mindex 0000000..ee8ca5b[m
[1m--- /dev/null[m
[1m+++ b/app/Providers/AppServiceProvider.php[m
[36m@@ -0,0 +1,28 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Providers;[m
[32m+[m
[32m+[m[32muse Illuminate\Support\ServiceProvider;[m
[32m+[m
[32m+[m[32mclass AppServiceProvider extends ServiceProvider[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Register any application services.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function register()[m
[32m+[m[32m    {[m
[32m+[m[32m        //[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Bootstrap any application services.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function boot()[m
[32m+[m[32m    {[m
[32m+[m[32m        //[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Providers/AuthServiceProvider.php b/app/Providers/AuthServiceProvider.php[m
[1mnew file mode 100644[m
[1mindex 0000000..0acc984[m
[1m--- /dev/null[m
[1m+++ b/app/Providers/AuthServiceProvider.php[m
[36m@@ -0,0 +1,30 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Providers;[m
[32m+[m
[32m+[m[32muse Illuminate\Support\Facades\Gate;[m
[32m+[m[32muse Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;[m
[32m+[m
[32m+[m[32mclass AuthServiceProvider extends ServiceProvider[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The policy mappings for the application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $policies = [[m
[32m+[m[32m        // 'App\Model' => 'App\Policies\ModelPolicy',[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Register any authentication / authorization services.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function boot()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->registerPolicies();[m
[32m+[m
[32m+[m[32m        //[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Providers/BroadcastServiceProvider.php b/app/Providers/BroadcastServiceProvider.php[m
[1mnew file mode 100644[m
[1mindex 0000000..352cce4[m
[1m--- /dev/null[m
[1m+++ b/app/Providers/BroadcastServiceProvider.php[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Providers;[m
[32m+[m
[32m+[m[32muse Illuminate\Support\ServiceProvider;[m
[32m+[m[32muse Illuminate\Support\Facades\Broadcast;[m
[32m+[m
[32m+[m[32mclass BroadcastServiceProvider extends ServiceProvider[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Bootstrap any application services.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function boot()[m
[32m+[m[32m    {[m
[32m+[m[32m        Broadcast::routes();[m
[32m+[m
[32m+[m[32m        require base_path('routes/channels.php');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Providers/EventServiceProvider.php b/app/Providers/EventServiceProvider.php[m
[1mnew file mode 100644[m
[1mindex 0000000..6c64e52[m
[1m--- /dev/null[m
[1m+++ b/app/Providers/EventServiceProvider.php[m
[36m@@ -0,0 +1,34 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Providers;[m
[32m+[m
[32m+[m[32muse Illuminate\Support\Facades\Event;[m
[32m+[m[32muse Illuminate\Auth\Events\Registered;[m
[32m+[m[32muse Illuminate\Auth\Listeners\SendEmailVerificationNotification;[m
[32m+[m[32muse Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;[m
[32m+[m
[32m+[m[32mclass EventServiceProvider extends ServiceProvider[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The event listener mappings for the application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $listen = [[m
[32m+[m[32m        Registered::class => [[m
[32m+[m[32m            SendEmailVerificationNotification::class,[m
[32m+[m[32m        ],[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Register any events for your application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function boot()[m
[32m+[m[32m    {[m
[32m+[m[32m        parent::boot();[m
[32m+[m
[32m+[m[32m        //[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Providers/RouteServiceProvider.php b/app/Providers/RouteServiceProvider.php[m
[1mnew file mode 100644[m
[1mindex 0000000..5ea48d3[m
[1m--- /dev/null[m
[1m+++ b/app/Providers/RouteServiceProvider.php[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Providers;[m
[32m+[m
[32m+[m[32muse Illuminate\Support\Facades\Route;[m
[32m+[m[32muse Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;[m
[32m+[m
[32m+[m[32mclass RouteServiceProvider extends ServiceProvider[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * This namespace is applied to your controller routes.[m
[32m+[m[32m     *[m
[32m+[m[32m     * In addition, it is set as the URL generator's root namespace.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $namespace = 'App\Http\Controllers';[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Define your route model bindings, pattern filters, etc.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function boot()[m
[32m+[m[32m    {[m
[32m+[m[32m        //[m
[32m+[m
[32m+[m[32m        parent::boot();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Define the routes for the application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function map()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->mapApiRoutes();[m
[32m+[m
[32m+[m[32m        $this->mapWebRoutes();[m
[32m+[m
[32m+[m[32m        //[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Define the "web" routes for the application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * These routes all receive session state, CSRF protection, etc.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function mapWebRoutes()[m
[32m+[m[32m    {[m
[32m+[m[32m        Route::middleware('web')[m
[32m+[m[32m             ->namespace($this->namespace)[m
[32m+[m[32m             ->group(base_path('routes/web.php'));[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Define the "api" routes for the application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * These routes are typically stateless.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function mapApiRoutes()[m
[32m+[m[32m    {[m
[32m+[m[32m        Route::prefix('api')[m
[32m+[m[32m             ->middleware('api')[m
[32m+[m[32m             ->namespace($this->namespace)[m
[32m+[m[32m             ->group(base_path('routes/api.php'));[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/User.php b/app/User.php[m
[1mnew file mode 100644[m
[1mindex 0000000..faa03c3[m
[1m--- /dev/null[m
[1m+++ b/app/User.php[m
[36m@@ -0,0 +1,39 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App;[m
[32m+[m
[32m+[m[32muse Illuminate\Notifications\Notifiable;[m
[32m+[m[32muse Illuminate\Contracts\Auth\MustVerifyEmail;[m
[32m+[m[32muse Illuminate\Foundation\Auth\User as Authenticatable;[m
[32m+[m
[32m+[m[32mclass User extends Authenticatable[m
[32m+[m[32m{[m
[32m+[m[32m    use Notifiable;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The attributes that are mass assignable.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $fillable = [[m
[32m+[m[32m        'name', 'email', 'password',[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The attributes that should be hidden for arrays.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $hidden = [[m
[32m+[m[32m        'password', 'remember_token',[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The attributes that should be cast to native types.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $casts = [[m
[32m+[m[32m        'email_verified_at' => 'datetime',[m
[32m+[m[32m    ];[m
[32m+[m[32m}[m
[1mdiff --git a/artisan b/artisan[m
[1mnew file mode 100644[m
[1mindex 0000000..5c23e2e[m
[1m--- /dev/null[m
[1m+++ b/artisan[m
[36m@@ -0,0 +1,53 @@[m
[32m+[m[32m#!/usr/bin/env php[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mdefine('LARAVEL_START', microtime(true));[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Register The Auto Loader[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| Composer provides a convenient, automatically generated class loader[m
[32m+[m[32m| for our application. We just need to utilize it! We'll require it[m
[32m+[m[32m| into the script here so that we do not have to worry about the[m
[32m+[m[32m| loading of any our classes "manually". Feels great to relax.[m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32mrequire __DIR__.'/vendor/autoload.php';[m
[32m+[m
[32m+[m[32m$app = require_once __DIR__.'/bootstrap/app.php';[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Run The Artisan Application[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| When we run the console application, the current CLI command will be[m
[32m+[m[32m| executed in this console and the response sent back to a terminal[m
[32m+[m[32m| or another output device for the developers. Here goes nothing![m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32m$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);[m
[32m+[m
[32m+[m[32m$status = $kernel->handle([m
[32m+[m[32m    $input = new Symfony\Component\Console\Input\ArgvInput,[m
[32m+[m[32m    new Symfony\Component\Console\Output\ConsoleOutput[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Shutdown The Application[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| Once Artisan has finished running, we will fire off the shutdown events[m
[32m+[m[32m| so that any final work may be done by the application before we shut[m
[32m+[m[32m| down the process. This is the last thing to happen to the request.[m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32m$kernel->terminate($input, $status);[m
[32m+[m
[32m+[m[32mexit($status);[m
[1mdiff --git a/bootstrap/app.php b/bootstrap/app.php[m
[1mnew file mode 100644[m
[1mindex 0000000..037e17d[m
[1m--- /dev/null[m
[1m+++ b/bootstrap/app.php[m
[36m@@ -0,0 +1,55 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Create The Application[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| The first thing we will do is create a new Laravel application instance[m
[32m+[m[32m| which serves as the "glue" for all the components of Laravel, and is[m
[32m+[m[32m| the IoC container for the system binding all of the various parts.[m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32m$app = new Illuminate\Foundation\Application([m
[32m+[m[32m    $_ENV['APP_BASE_PATH'] ?? dirname(__DIR__)[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Bind Important Interfaces[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| Next, we need to bind some important interfaces into the container so[m
[32m+[m[32m| we will be able to resolve them when needed. The kernels serve the[m
[32m+[m[32m| incoming requests to this application from both the web and CLI.[m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32m$app->singleton([m
[32m+[m[32m    Illuminate\Contracts\Http\Kernel::class,[m
[32m+[m[32m    App\Http\Kernel::class[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32m$app->singleton([m
[32m+[m[32m    Illuminate\Contracts\Console\Kernel::class,[m
[32m+[m[32m    App\Console\Kernel::class[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32m$app->singleton([m
[32m+[m[32m    Illuminate\Contracts\Debug\ExceptionHandler::class,[m
[32m+[m[32m    App\Exceptions\Handler::class[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Return The Application[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| This script returns the application instance. The instance is given to[m
[32m+[m[32m| the calling script so we can separate the building of the instances[m
[32m+[m[32m| from the actual running of the application and sending responses.[m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32mreturn $app;[m
[1mdiff --git a/bootstrap/cache/.gitignore b/bootstrap/cache/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..d6b7ef3[m
[1m--- /dev/null[m
[1m+++ b/bootstrap/cache/.gitignore[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32m*[m
[32m+[m[32m!.gitignore[m
[1mdiff --git a/composer.json b/composer.json[m
[1mnew file mode 100644[m
[1mindex 0000000..8e2b2d7[m
[1m--- /dev/null[m
[1m+++ b/composer.json[m
[36m@@ -0,0 +1,62 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "name": "laravel/laravel",[m
[32m+[m[32m    "type": "project",[m
[32m+[m[32m    "description": "The Laravel Framework.",[m
[32m+[m[32m    "keywords": [[m
[32m+[m[32m        "framework",[m
[32m+[m[32m        "laravel"[m
[32m+[m[32m    ],[m
[32m+[m[32m    "license": "MIT",[m
[32m+[m[32m    "require": {[m
[32m+[m[32m        "php": "^7.1.3",[m
[32m+[m[32m        "fideloper/proxy": "^4.0",[m
[32m+[m[32m        "laravel/framework": "5.8.*",[m
[32m+[m[32m        "laravel/tinker": "^1.0"[m
[32m+[m[32m    },[m
[32m+[m[32m    "require-dev": {[m
[32m+[m[32m        "beyondcode/laravel-dump-server": "^1.0",[m
[32m+[m[32m        "filp/whoops": "^2.0",[m
[32m+[m[32m        "fzaninotto/faker": "^1.4",[m
[32m+[m[32m        "mockery/mockery": "^1.0",[m
[32m+[m[32m        "nunomaduro/collision": "^3.0",[m
[32m+[m[32m        "phpunit/phpunit": "^7.5"[m
[32m+[m[32m    },[m
[32m+[m[32m    "config": {[m
[32m+[m[32m        "optimize-autoloader": true,[m
[32m+[m[32m        "preferred-install": "dist",[m
[32m+[m[32m        "sort-packages": true[m
[32m+[m[32m    },[m
[32m+[m[32m    "extra": {[m
[32m+[m[32m        "laravel": {[m
[32m+[m[32m            "dont-discover": [][m
[32m+[m[32m        }[m
[32m+[m[32m    },[m
[32m+[m[32m    "autoload": {[m
[32m+[m[32m        "psr-4": {[m
[32m+[m[32m            "App\\": "app/"[m
[32m+[m[32m        },[m
[32m+[m[32m        "classmap": [[m
[32m+[m[32m            "database/seeds",[m
[32m+[m[32m            "database/factories"[m
[32m+[m[32m        ][m
[32m+[m[32m    },[m
[32m+[m[32m    "autoload-dev": {[m
[32m+[m[32m        "psr-4": {[m
[32m+[m[32m            "Tests\\": "tests/"[m
[32m+[m[32m        }[m
[32m+[m[32m    },[m
[32m+[m[32m    "minimum-stability": "dev",[m
[32m+[m[32m    "prefer-stable": true,[m
[32m+[m[32m    "scripts": {[m
[32m+[m[32m        "post-autoload-dump": [[m
[32m+[m[32m            "Illuminate\\Foundation\\ComposerScripts::postAutoloadDump",[m
[32m+[m[32m            "@php artisan package:discover --ansi"[m
[32m+[m[32m        ],[m
[32m+[m[32m        "post-root-package-install": [[m
[32m+[m[32m            "@php -r \"file_exists('.env') || copy('.env.example', '.env');\""[m
[32m+[m[32m        ],[m
[32m+[m[32m        "post-create-project-cmd": [[m
[32m+[m[32m            "@php artisan key:generate --ansi"[m
[32m+[m[32m        ][m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/composer.lock b/composer.lock[m
[1mnew file mode 100644[m
[1mindex 0000000..a1bb9e7[m
[1m--- /dev/null[m
[1m+++ b/composer.lock[m
[36m@@ -0,0 +1,4736 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "_readme": [[m
[32m+[m[32m        "This file locks the dependencies of your project to a known state",[m
[32m+[m[32m        "Read more about it at https://getcomposer.org/doc/01-basic-usage.md#installing-dependencies",[m
[32m+[m[32m        "This file is @generated automatically"[m
[32m+[m[32m    ],[m
[32m+[m[32m    "content-hash": "94d4bf9ac7f4a933030e46a346ee2917",[m
[32m+[m[32m    "packages": [[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "dnoegel/php-xdg-base-dir",[m
[32m+[m[32m            "version": "v0.1.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/dnoegel/php-xdg-base-dir.git",[m
[32m+[m[32m                "reference": "8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/dnoegel/php-xdg-base-dir/zipball/8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd",[m
[32m+[m[32m                "reference": "8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.2"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "~7.0|~6.0|~5.0|~4.8.35"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "XdgBaseDir\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "implementation of xdg base directory specification for php",[m
[32m+[m[32m            "time": "2019-12-04T15:06:13+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "doctrine/inflector",[m
[32m+[m[32m            "version": "1.3.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/doctrine/inflector.git",[m
[32m+[m[32m                "reference": "ec3a55242203ffa6a4b27c58176da97ff0a7aec1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/doctrine/inflector/zipball/ec3a55242203ffa6a4b27c58176da97ff0a7aec1",[m
[32m+[m[32m                "reference": "ec3a55242203ffa6a4b27c58176da97ff0a7aec1",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^6.2"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.3.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Doctrine\\Common\\Inflector\\": "lib/Doctrine/Common/Inflector"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Guilherme Blanco",[m
[32m+[m[32m                    "email": "guilhermeblanco@gmail.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Roman Borschel",[m
[32m+[m[32m                    "email": "roman@code-factory.org"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Benjamin Eberlei",[m
[32m+[m[32m                    "email": "kontakt@beberlei.de"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Jonathan Wage",[m
[32m+[m[32m                    "email": "jonwage@gmail.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Johannes Schmitt",[m
[32m+[m[32m                    "email": "schmittjoh@gmail.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Common String Manipulations with regard to casing and singular/plural rules.",[m
[32m+[m[32m            "homepage": "http://www.doctrine-project.org",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "inflection",[m
[32m+[m[32m                "pluralize",[m
[32m+[m[32m                "singularize",[m
[32m+[m[32m                "string"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-10-30T19:59:35+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "doctrine/lexer",[m
[32m+[m[32m            "version": "1.0.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/doctrine/lexer.git",[m
[32m+[m[32m                "reference": "1febd6c3ef84253d7c815bed85fc622ad207a9f8"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/doctrine/lexer/zipball/1febd6c3ef84253d7c815bed85fc622ad207a9f8",[m
[32m+[m[32m                "reference": "1febd6c3ef84253d7c815bed85fc622ad207a9f8",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.2"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^4.5"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.0.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Doctrine\\Common\\Lexer\\": "lib/Doctrine/Common/Lexer"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Roman Borschel",[m
[32m+[m[32m                    "email": "roman@code-factory.org"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Guilherme Blanco",[m
[32m+[m[32m                    "email": "guilhermeblanco@gmail.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Johannes Schmitt",[m
[32m+[m[32m                    "email": "schmittjoh@gmail.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "PHP Doctrine Lexer parser library that can be used in Top-Down, Recursive Descent Parsers.",[m
[32m+[m[32m            "homepage": "https://www.doctrine-project.org/projects/lexer.html",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "annotations",[m
[32m+[m[32m                "docblock",[m
[32m+[m[32m                "lexer",[m
[32m+[m[32m                "parser",[m
[32m+[m[32m                "php"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-06-08T11:03:04+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "dragonmantank/cron-expression",[m
[32m+[m[32m            "version": "v2.3.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/dragonmantank/cron-expression.git",[m
[32m+[m[32m                "reference": "72b6fbf76adb3cf5bc0db68559b33d41219aba27"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/dragonmantank/cron-expression/zipball/72b6fbf76adb3cf5bc0db68559b33d41219aba27",[m
[32m+[m[32m                "reference": "72b6fbf76adb3cf5bc0db68559b33d41219aba27",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^6.4|^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.3-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Cron\\": "src/Cron/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Michael Dowling",[m
[32m+[m[32m                    "email": "mtdowling@gmail.com",[m
[32m+[m[32m                    "homepage": "https://github.com/mtdowling"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Chris Tankersley",[m
[32m+[m[32m                    "email": "chris@ctankersley.com",[m
[32m+[m[32m                    "homepage": "https://github.com/dragonmantank"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "CRON for PHP: Calculate the next or previous run date and determine if a CRON expression is due",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "cron",[m
[32m+[m[32m                "schedule"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-03-31T00:38:28+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "egulias/email-validator",[m
[32m+[m[32m            "version": "2.1.14",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/egulias/EmailValidator.git",[m
[32m+[m[32m                "reference": "c4b8d12921999d8a561004371701dbc2e05b5ece"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/egulias/EmailValidator/zipball/c4b8d12921999d8a561004371701dbc2e05b5ece",[m
[32m+[m[32m                "reference": "c4b8d12921999d8a561004371701dbc2e05b5ece",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "doctrine/lexer": "^1.0.1",[m
[32m+[m[32m                "php": ">=5.5"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "dominicsayers/isemail": "^3.0.7",[m
[32m+[m[32m                "phpunit/phpunit": "^4.8.36|^7.5.15",[m
[32m+[m[32m                "satooshi/php-coveralls": "^1.0.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-intl": "PHP Internationalization Libraries are required to use the SpoofChecking validation"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.1.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Egulias\\EmailValidator\\": "EmailValidator"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Eduardo Gulias Davis"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "A library for validating emails against several RFCs",[m
[32m+[m[32m            "homepage": "https://github.com/egulias/EmailValidator",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "email",[m
[32m+[m[32m                "emailvalidation",[m
[32m+[m[32m                "emailvalidator",[m
[32m+[m[32m                "validation",[m
[32m+[m[32m                "validator"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2020-01-05T14:11:20+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "erusev/parsedown",[m
[32m+[m[32m            "version": "1.7.4",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/erusev/parsedown.git",[m
[32m+[m[32m                "reference": "cb17b6477dfff935958ba01325f2e8a2bfa6dab3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/erusev/parsedown/zipball/cb17b6477dfff935958ba01325f2e8a2bfa6dab3",[m
[32m+[m[32m                "reference": "cb17b6477dfff935958ba01325f2e8a2bfa6dab3",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "ext-mbstring": "*",[m
[32m+[m[32m                "php": ">=5.3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^4.8.35"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-0": {[m
[32m+[m[32m                    "Parsedown": ""[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Emanuil Rusev",[m
[32m+[m[32m                    "email": "hello@erusev.com",[m
[32m+[m[32m                    "homepage": "http://erusev.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Parser for Markdown.",[m
[32m+[m[32m            "homepage": "http://parsedown.org",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "markdown",[m
[32m+[m[32m                "parser"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-30T22:54:17+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "fideloper/proxy",[m
[32m+[m[32m            "version": "4.2.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/fideloper/TrustedProxy.git",[m
[32m+[m[32m                "reference": "790194d5d3da89a713478875d2e2d05855a90a81"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/fideloper/TrustedProxy/zipball/790194d5d3da89a713478875d2e2d05855a90a81",[m
[32m+[m[32m                "reference": "790194d5d3da89a713478875d2e2d05855a90a81",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "illuminate/contracts": "^5.0|^6.0|^7.0",[m
[32m+[m[32m                "php": ">=5.4.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "illuminate/http": "^5.0|^6.0|^7.0",[m
[32m+[m[32m                "mockery/mockery": "^1.0",[m
[32m+[m[32m                "phpunit/phpunit": "^6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "laravel": {[m
[32m+[m[32m                    "providers": [[m
[32m+[m[32m                        "Fideloper\\Proxy\\TrustedProxyServiceProvider"[m
[32m+[m[32m                    ][m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Fideloper\\Proxy\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Chris Fidao",[m
[32m+[m[32m                    "email": "fideloper@gmail.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Set trusted proxies for Laravel",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "load balancing",[m
[32m+[m[32m                "proxy",[m
[32m+[m[32m                "trusted proxy"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-20T13:11:11+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "jakub-onderka/php-console-color",[m
[32m+[m[32m            "version": "v0.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/JakubOnderka/PHP-Console-Color.git",[m
[32m+[m[32m                "reference": "d5deaecff52a0d61ccb613bb3804088da0307191"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/JakubOnderka/PHP-Console-Color/zipball/d5deaecff52a0d61ccb613bb3804088da0307191",[m
[32m+[m[32m                "reference": "d5deaecff52a0d61ccb613bb3804088da0307191",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.4.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "jakub-onderka/php-code-style": "1.0",[m
[32m+[m[32m                "jakub-onderka/php-parallel-lint": "1.0",[m
[32m+[m[32m                "jakub-onderka/php-var-dump-check": "0.*",[m
[32m+[m[32m                "phpunit/phpunit": "~4.3",[m
[32m+[m[32m                "squizlabs/php_codesniffer": "1.*"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "JakubOnderka\\PhpConsoleColor\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-2-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Jakub Onderka",[m
[32m+[m[32m                    "email": "jakub.onderka@gmail.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2018-09-29T17:23:10+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "jakub-onderka/php-console-highlighter",[m
[32m+[m[32m            "version": "v0.4",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/JakubOnderka/PHP-Console-Highlighter.git",[m
[32m+[m[32m                "reference": "9f7a229a69d52506914b4bc61bfdb199d90c5547"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/JakubOnderka/PHP-Console-Highlighter/zipball/9f7a229a69d52506914b4bc61bfdb199d90c5547",[m
[32m+[m[32m                "reference": "9f7a229a69d52506914b4bc61bfdb199d90c5547",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "ext-tokenizer": "*",[m
[32m+[m[32m                "jakub-onderka/php-console-color": "~0.2",[m
[32m+[m[32m                "php": ">=5.4.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "jakub-onderka/php-code-style": "~1.0",[m
[32m+[m[32m                "jakub-onderka/php-parallel-lint": "~1.0",[m
[32m+[m[32m                "jakub-onderka/php-var-dump-check": "~0.1",[m
[32m+[m[32m                "phpunit/phpunit": "~4.0",[m
[32m+[m[32m                "squizlabs/php_codesniffer": "~1.5"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "JakubOnderka\\PhpConsoleHighlighter\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Jakub Onderka",[m
[32m+[m[32m                    "email": "acci@acci.cz",[m
[32m+[m[32m                    "homepage": "http://www.acci.cz/"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Highlight PHP code in terminal",[m
[32m+[m[32m            "time": "2018-09-29T18:48:56+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "laravel/framework",[m
[32m+[m[32m            "version": "v5.8.36",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/laravel/framework.git",[m
[32m+[m[32m                "reference": "ccf857af50897eda43ceaf12e318cf214e0e4e95"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/laravel/framework/zipball/ccf857af50897eda43ceaf12e318cf214e0e4e95",[m
[32m+[m[32m                "reference": "ccf857af50897eda43ceaf12e318cf214e0e4e95",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "doctrine/inflector": "^1.1",[m
[32m+[m[32m                "dragonmantank/cron-expression": "^2.0",[m
[32m+[m[32m                "egulias/email-validator": "^2.0",[m
[32m+[m[32m                "erusev/parsedown": "^1.7",[m
[32m+[m[32m                "ext-json": "*",[m
[32m+[m[32m                "ext-mbstring": "*",[m
[32m+[m[32m                "ext-openssl": "*",[m
[32m+[m[32m                "league/flysystem": "^1.0.8",[m
[32m+[m[32m                "monolog/monolog": "^1.12",[m
[32m+[m[32m                "nesbot/carbon": "^1.26.3 || ^2.0",[m
[32m+[m[32m                "opis/closure": "^3.1",[m
[32m+[m[32m                "php": "^7.1.3",[m
[32m+[m[32m                "psr/container": "^1.0",[m
[32m+[m[32m                "psr/simple-cache": "^1.0",[m
[32m+[m[32m                "ramsey/uuid": "^3.7",[m
[32m+[m[32m                "swiftmailer/swiftmailer": "^6.0",[m
[32m+[m[32m                "symfony/console": "^4.2",[m
[32m+[m[32m                "symfony/debug": "^4.2",[m
[32m+[m[32m                "symfony/finder": "^4.2",[m
[32m+[m[32m                "symfony/http-foundation": "^4.2",[m
[32m+[m[32m                "symfony/http-kernel": "^4.2",[m
[32m+[m[32m                "symfony/process": "^4.2",[m
[32m+[m[32m                "symfony/routing": "^4.2",[m
[32m+[m[32m                "symfony/var-dumper": "^4.2",[m
[32m+[m[32m                "tijsverkoyen/css-to-inline-styles": "^2.2.1",[m
[32m+[m[32m                "vlucas/phpdotenv": "^3.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "tightenco/collect": "<5.5.33"[m
[32m+[m[32m            },[m
[32m+[m[32m            "replace": {[m
[32m+[m[32m                "illuminate/auth": "self.version",[m
[32m+[m[32m                "illuminate/broadcasting": "self.version",[m
[32m+[m[32m                "illuminate/bus": "self.version",[m
[32m+[m[32m                "illuminate/cache": "self.version",[m
[32m+[m[32m                "illuminate/config": "self.version",[m
[32m+[m[32m                "illuminate/console": "self.version",[m
[32m+[m[32m                "illuminate/container": "self.version",[m
[32m+[m[32m                "illuminate/contracts": "self.version",[m
[32m+[m[32m                "illuminate/cookie": "self.version",[m
[32m+[m[32m                "illuminate/database": "self.version",[m
[32m+[m[32m                "illuminate/encryption": "self.version",[m
[32m+[m[32m                "illuminate/events": "self.version",[m
[32m+[m[32m                "illuminate/filesystem": "self.version",[m
[32m+[m[32m                "illuminate/hashing": "self.version",[m
[32m+[m[32m                "illuminate/http": "self.version",[m
[32m+[m[32m                "illuminate/log": "self.version",[m
[32m+[m[32m                "illuminate/mail": "self.version",[m
[32m+[m[32m                "illuminate/notifications": "self.version",[m
[32m+[m[32m                "illuminate/pagination": "self.version",[m
[32m+[m[32m                "illuminate/pipeline": "self.version",[m
[32m+[m[32m                "illuminate/queue": "self.version",[m
[32m+[m[32m                "illuminate/redis": "self.version",[m
[32m+[m[32m                "illuminate/routing": "self.version",[m
[32m+[m[32m                "illuminate/session": "self.version",[m
[32m+[m[32m                "illuminate/support": "self.version",[m
[32m+[m[32m                "illuminate/translation": "self.version",[m
[32m+[m[32m                "illuminate/validation": "self.version",[m
[32m+[m[32m                "illuminate/view": "self.version"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "aws/aws-sdk-php": "^3.0",[m
[32m+[m[32m                "doctrine/dbal": "^2.6",[m
[32m+[m[32m                "filp/whoops": "^2.1.4",[m
[32m+[m[32m                "guzzlehttp/guzzle": "^6.3",[m
[32m+[m[32m                "league/flysystem-cached-adapter": "^1.0",[m
[32m+[m[32m                "mockery/mockery": "^1.0",[m
[32m+[m[32m                "moontoast/math": "^1.1",[m
[32m+[m[32m                "orchestra/testbench-core": "3.8.*",[m
[32m+[m[32m                "pda/pheanstalk": "^4.0",[m
[32m+[m[32m                "phpunit/phpunit": "^7.5|^8.0",[m
[32m+[m[32m                "predis/predis": "^1.1.1",[m
[32m+[m[32m                "symfony/css-selector": "^4.2",[m
[32m+[m[32m                "symfony/dom-crawler": "^4.2",[m
[32m+[m[32m                "true/punycode": "^2.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "aws/aws-sdk-php": "Required to use the SQS queue driver and SES mail driver (^3.0).",[m
[32m+[m[32m                "doctrine/dbal": "Required to rename columns and drop SQLite columns (^2.6).",[m
[32m+[m[32m                "ext-gd": "Required to use Illuminate\\Http\\Testing\\FileFactory::image().",[m
[32m+[m[32m                "ext-pcntl": "Required to use all features of the queue worker.",[m
[32m+[m[32m                "ext-posix": "Required to use all features of the queue worker.",[m
[32m+[m[32m                "filp/whoops": "Required for friendly error pages in development (^2.1.4).",[m
[32m+[m[32m                "fzaninotto/faker": "Required to use the eloquent factory builder (^1.4).",[m
[32m+[m[32m                "guzzlehttp/guzzle": "Required to use the Mailgun and Mandrill mail drivers and the ping methods on schedules (^6.0).",[m
[32m+[m[32m                "laravel/tinker": "Required to use the tinker console command (^1.0).",[m
[32m+[m[32m                "league/flysystem-aws-s3-v3": "Required to use the Flysystem S3 driver (^1.0).",[m
[32m+[m[32m                "league/flysystem-cached-adapter": "Required to use the Flysystem cache (^1.0).",[m
[32m+[m[32m                "league/flysystem-rackspace": "Required to use the Flysystem Rackspace driver (^1.0).",[m
[32m+[m[32m                "league/flysystem-sftp": "Required to use the Flysystem SFTP driver (^1.0).",[m
[32m+[m[32m                "moontoast/math": "Required to use ordered UUIDs (^1.1).",[m
[32m+[m[32m                "nexmo/client": "Required to use the Nexmo transport (^1.0).",[m
[32m+[m[32m                "pda/pheanstalk": "Required to use the beanstalk queue driver (^4.0).",[m
[32m+[m[32m                "predis/predis": "Required to use the redis cache and queue drivers (^1.0).",[m
[32m+[m[32m                "pusher/pusher-php-server": "Required to use the Pusher broadcast driver (^3.0).",[m
[32m+[m[32m                "symfony/css-selector": "Required to use some of the crawler integration testing tools (^4.2).",[m
[32m+[m[32m                "symfony/dom-crawler": "Required to use most of the crawler integration testing tools (^4.2).",[m
[32m+[m[32m                "symfony/psr-http-message-bridge": "Required to use PSR-7 bridging features (^1.1).",[m
[32m+[m[32m                "wildbit/swiftmailer-postmark": "Required to use Postmark mail driver (^3.0)."[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "5.8-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "src/Illuminate/Foundation/helpers.php",[m
[32m+[m[32m                    "src/Illuminate/Support/helpers.php"[m
[32m+[m[32m                ],[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Illuminate\\": "src/Illuminate/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Taylor Otwell",[m
[32m+[m[32m                    "email": "taylor@laravel.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "The Laravel Framework.",[m
[32m+[m[32m            "homepage": "https://laravel.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "framework",[m
[32m+[m[32m                "laravel"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-17T16:00:14+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "laravel/tinker",[m
[32m+[m[32m            "version": "v1.0.10",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/laravel/tinker.git",[m
[32m+[m[32m                "reference": "ad571aacbac1539c30d480908f9d0c9614eaf1a7"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/laravel/tinker/zipball/ad571aacbac1539c30d480908f9d0c9614eaf1a7",[m
[32m+[m[32m                "reference": "ad571aacbac1539c30d480908f9d0c9614eaf1a7",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "illuminate/console": "~5.1|^6.0",[m
[32m+[m[32m                "illuminate/contracts": "~5.1|^6.0",[m
[32m+[m[32m                "illuminate/support": "~5.1|^6.0",[m
[32m+[m[32m                "php": ">=5.5.9",[m
[32m+[m[32m                "psy/psysh": "0.7.*|0.8.*|0.9.*",[m
[32m+[m[32m                "symfony/var-dumper": "~3.0|~4.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "~4.0|~5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "illuminate/database": "The Illuminate Database package (~5.1)."[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.0-dev"[m
[32m+[m[32m                },[m
[32m+[m[32m                "laravel": {[m
[32m+[m[32m                    "providers": [[m
[32m+[m[32m                        "Laravel\\Tinker\\TinkerServiceProvider"[m
[32m+[m[32m                    ][m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Laravel\\Tinker\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Taylor Otwell",[m
[32m+[m[32m                    "email": "taylor@laravel.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Powerful REPL for the Laravel framework.",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "REPL",[m
[32m+[m[32m                "Tinker",[m
[32m+[m[32m                "laravel",[m
[32m+[m[32m                "psysh"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-08-07T15:10:45+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "league/flysystem",[m
[32m+[m[32m            "version": "1.0.63",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/thephpleague/flysystem.git",[m
[32m+[m[32m                "reference": "8132daec326565036bc8e8d1876f77ec183a7bd6"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/thephpleague/flysystem/zipball/8132daec326565036bc8e8d1876f77ec183a7bd6",[m
[32m+[m[32m                "reference": "8132daec326565036bc8e8d1876f77ec183a7bd6",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "ext-fileinfo": "*",[m
[32m+[m[32m                "php": ">=5.5.9"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "league/flysystem-sftp": "<1.0.6"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpspec/phpspec": "^3.4",[m
[32m+[m[32m                "phpunit/phpunit": "^5.7.10"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-fileinfo": "Required for MimeType",[m
[32m+[m[32m                "ext-ftp": "Allows you to use FTP server storage",[m
[32m+[m[32m                "ext-openssl": "Allows you to use FTPS server storage",[m
[32m+[m[32m                "league/flysystem-aws-s3-v2": "Allows you to use S3 storage with AWS SDK v2",[m
[32m+[m[32m                "league/flysystem-aws-s3-v3": "Allows you to use S3 storage with AWS SDK v3",[m
[32m+[m[32m                "league/flysystem-azure": "Allows you to use Windows Azure Blob storage",[m
[32m+[m[32m                "league/flysystem-cached-adapter": "Flysystem adapter decorator for metadata caching",[m
[32m+[m[32m                "league/flysystem-eventable-filesystem": "Allows you to use EventableFilesystem",[m
[32m+[m[32m                "league/flysystem-rackspace": "Allows you to use Rackspace Cloud Files",[m
[32m+[m[32m                "league/flysystem-sftp": "Allows you to use SFTP server storage via phpseclib",[m
[32m+[m[32m                "league/flysystem-webdav": "Allows you to use WebDAV storage",[m
[32m+[m[32m                "league/flysystem-ziparchive": "Allows you to use ZipArchive adapter",[m
[32m+[m[32m                "spatie/flysystem-dropbox": "Allows you to use Dropbox storage",[m
[32m+[m[32m                "srmklive/flysystem-dropbox-v2": "Allows you to use Dropbox storage for PHP 5 applications"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.1-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "League\\Flysystem\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Frank de Jonge",[m
[32m+[m[32m                    "email": "info@frenky.net"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Filesystem abstraction: Many filesystems, one API.",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "Cloud Files",[m
[32m+[m[32m                "WebDAV",[m
[32m+[m[32m                "abstraction",[m
[32m+[m[32m                "aws",[m
[32m+[m[32m                "cloud",[m
[32m+[m[32m                "copy.com",[m
[32m+[m[32m                "dropbox",[m
[32m+[m[32m                "file systems",[m
[32m+[m[32m                "files",[m
[32m+[m[32m                "filesystem",[m
[32m+[m[32m                "filesystems",[m
[32m+[m[32m                "ftp",[m
[32m+[m[32m                "rackspace",[m
[32m+[m[32m                "remote",[m
[32m+[m[32m                "s3",[m
[32m+[m[32m                "sftp",[m
[32m+[m[32m                "storage"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2020-01-04T16:30:31+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "monolog/monolog",[m
[32m+[m[32m            "version": "1.25.3",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/Seldaek/monolog.git",[m
[32m+[m[32m                "reference": "fa82921994db851a8becaf3787a9e73c5976b6f1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/Seldaek/monolog/zipball/fa82921994db851a8becaf3787a9e73c5976b6f1",[m
[32m+[m[32m                "reference": "fa82921994db851a8becaf3787a9e73c5976b6f1",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.0",[m
[32m+[m[32m                "psr/log": "~1.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "provide": {[m
[32m+[m[32m                "psr/log-implementation": "1.0.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "aws/aws-sdk-php": "^2.4.9 || ^3.0",[m
[32m+[m[32m                "doctrine/couchdb": "~1.0@dev",[m
[32m+[m[32m                "graylog2/gelf-php": "~1.0",[m
[32m+[m[32m                "jakub-onderka/php-parallel-lint": "0.9",[m
[32m+[m[32m                "php-amqplib/php-amqplib": "~2.4",[m
[32m+[m[32m                "php-console/php-console": "^3.1.3",[m
[32m+[m[32m                "phpunit/phpunit": "~4.5",[m
[32m+[m[32m                "phpunit/phpunit-mock-objects": "2.3.0",[m
[32m+[m[32m                "ruflin/elastica": ">=0.90 <3.0",[m
[32m+[m[32m                "sentry/sentry": "^0.13",[m
[32m+[m[32m                "swiftmailer/swiftmailer": "^5.3|^6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "aws/aws-sdk-php": "Allow sending log messages to AWS services like DynamoDB",[m
[32m+[m[32m                "doctrine/couchdb": "Allow sending log messages to a CouchDB server",[m
[32m+[m[32m                "ext-amqp": "Allow sending log messages to an AMQP server (1.0+ required)",[m
[32m+[m[32m                "ext-mongo": "Allow sending log messages to a MongoDB server",[m
[32m+[m[32m                "graylog2/gelf-php": "Allow sending log messages to a GrayLog2 server",[m
[32m+[m[32m                "mongodb/mongodb": "Allow sending log messages to a MongoDB server via PHP Driver",[m
[32m+[m[32m                "php-amqplib/php-amqplib": "Allow sending log messages to an AMQP server using php-amqplib",[m
[32m+[m[32m                "php-console/php-console": "Allow sending log messages to Google Chrome",[m
[32m+[m[32m                "rollbar/rollbar": "Allow sending log messages to Rollbar",[m
[32m+[m[32m                "ruflin/elastica": "Allow sending log messages to an Elastic Search server",[m
[32m+[m[32m                "sentry/sentry": "Allow sending log messages to a Sentry server"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.0.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Monolog\\": "src/Monolog"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Jordi Boggiano",[m
[32m+[m[32m                    "email": "j.boggiano@seld.be",[m
[32m+[m[32m                    "homepage": "http://seld.be"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Sends your logs to files, sockets, inboxes, databases and various web services",[m
[32m+[m[32m            "homepage": "http://github.com/Seldaek/monolog",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "log",[m
[32m+[m[32m                "logging",[m
[32m+[m[32m                "psr-3"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-20T14:15:16+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "nesbot/carbon",[m
[32m+[m[32m            "version": "2.28.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/briannesbitt/Carbon.git",[m
[32m+[m[32m                "reference": "e2bcbcd43e67ee6101d321d5de916251d2870ca8"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/briannesbitt/Carbon/zipball/e2bcbcd43e67ee6101d321d5de916251d2870ca8",[m
[32m+[m[32m                "reference": "e2bcbcd43e67ee6101d321d5de916251d2870ca8",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "ext-json": "*",[m
[32m+[m[32m                "php": "^7.1.8 || ^8.0",[m
[32m+[m[32m                "symfony/translation": "^3.4 || ^4.0 || ^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "friendsofphp/php-cs-fixer": "^2.14 || ^3.0",[m
[32m+[m[32m                "kylekatarnls/multi-tester": "^1.1",[m
[32m+[m[32m                "phpmd/phpmd": "dev-php-7.1-compatibility",[m
[32m+[m[32m                "phpstan/phpstan": "^0.11",[m
[32m+[m[32m                "phpunit/phpunit": "^7.5 || ^8.0",[m
[32m+[m[32m                "squizlabs/php_codesniffer": "^3.4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "bin": [[m
[32m+[m[32m                "bin/carbon"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.x-dev"[m
[32m+[m[32m                },[m
[32m+[m[32m                "laravel": {[m
[32m+[m[32m                    "providers": [[m
[32m+[m[32m                        "Carbon\\Laravel\\ServiceProvider"[m
[32m+[m[32m                    ][m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Carbon\\": "src/Carbon/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Brian Nesbitt",[m
[32m+[m[32m                    "email": "brian@nesbot.com",[m
[32m+[m[32m                    "homepage": "http://nesbot.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "kylekatarnls",[m
[32m+[m[32m                    "homepage": "http://github.com/kylekatarnls"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "An API extension for DateTime that supports 281 different languages.",[m
[32m+[m[32m            "homepage": "http://carbon.nesbot.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "date",[m
[32m+[m[32m                "datetime",[m
[32m+[m[32m                "time"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-16T16:30:25+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "nikic/php-parser",[m
[32m+[m[32m            "version": "v4.3.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/nikic/PHP-Parser.git",[m
[32m+[m[32m                "reference": "9a9981c347c5c49d6dfe5cf826bb882b824080dc"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/nikic/PHP-Parser/zipball/9a9981c347c5c49d6dfe5cf826bb882b824080dc",[m
[32m+[m[32m                "reference": "9a9981c347c5c49d6dfe5cf826bb882b824080dc",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "ext-tokenizer": "*",[m
[32m+[m[32m                "php": ">=7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "ircmaxell/php-yacc": "0.0.5",[m
[32m+[m[32m                "phpunit/phpunit": "^6.5 || ^7.0 || ^8.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "bin": [[m
[32m+[m[32m                "bin/php-parse"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.3-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "PhpParser\\": "lib/PhpParser"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Nikita Popov"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "A PHP parser written in PHP",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "parser",[m
[32m+[m[32m                "php"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-08T13:50:10+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "opis/closure",[m
[32m+[m[32m            "version": "3.5.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/opis/closure.git",[m
[32m+[m[32m                "reference": "93ebc5712cdad8d5f489b500c59d122df2e53969"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/opis/closure/zipball/93ebc5712cdad8d5f489b500c59d122df2e53969",[m
[32m+[m[32m                "reference": "93ebc5712cdad8d5f489b500c59d122df2e53969",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^5.4 || ^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "jeremeamia/superclosure": "^2.0",[m
[32m+[m[32m                "phpunit/phpunit": "^4.0 || ^5.0 || ^6.0 || ^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.5.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Opis\\Closure\\": "src/"[m
[32m+[m[32m                },[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "functions.php"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Marius Sarca",[m
[32m+[m[32m                    "email": "marius.sarca@gmail.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sorin Sarca",[m
[32m+[m[32m                    "email": "sarca_sorin@hotmail.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "A library that can be used to serialize closures (anonymous functions) and arbitrary objects.",[m
[32m+[m[32m            "homepage": "https://opis.io/closure",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "anonymous functions",[m
[32m+[m[32m                "closure",[m
[32m+[m[32m                "function",[m
[32m+[m[32m                "serializable",[m
[32m+[m[32m                "serialization",[m
[32m+[m[32m                "serialize"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-29T22:36:02+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "paragonie/random_compat",[m
[32m+[m[32m            "version": "v9.99.99",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/paragonie/random_compat.git",[m
[32m+[m[32m                "reference": "84b4dfb120c6f9b4ff7b3685f9b8f1aa365a0c95"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/paragonie/random_compat/zipball/84b4dfb120c6f9b4ff7b3685f9b8f1aa365a0c95",[m
[32m+[m[32m                "reference": "84b4dfb120c6f9b4ff7b3685f9b8f1aa365a0c95",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "4.*|5.*",[m
[32m+[m[32m                "vimeo/psalm": "^1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-libsodium": "Provides a modern crypto API that can be used to generate random bytes."[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Paragon Initiative Enterprises",[m
[32m+[m[32m                    "email": "security@paragonie.com",[m
[32m+[m[32m                    "homepage": "https://paragonie.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "PHP 5.x polyfill for random_bytes() and random_int() from PHP 7",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "csprng",[m
[32m+[m[32m                "polyfill",[m
[32m+[m[32m                "pseudorandom",[m
[32m+[m[32m                "random"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2018-07-02T15:55:56+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phpoption/phpoption",[m
[32m+[m[32m            "version": "1.7.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/schmittjoh/php-option.git",[m
[32m+[m[32m                "reference": "77f7c4d2e65413aff5b5a8cc8b3caf7a28d81959"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/schmittjoh/php-option/zipball/77f7c4d2e65413aff5b5a8cc8b3caf7a28d81959",[m
[32m+[m[32m                "reference": "77f7c4d2e65413aff5b5a8cc8b3caf7a28d81959",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^5.5.9 || ^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "bamarni/composer-bin-plugin": "^1.3",[m
[32m+[m[32m                "phpunit/phpunit": "^4.8.35 || ^5.0 || ^6.0 || ^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.7-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "PhpOption\\": "src/PhpOption/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "Apache-2.0"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Johannes M. Schmitt",[m
[32m+[m[32m                    "email": "schmittjoh@gmail.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Graham Campbell",[m
[32m+[m[32m                    "email": "graham@alt-three.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Option Type for PHP",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "language",[m
[32m+[m[32m                "option",[m
[32m+[m[32m                "php",[m
[32m+[m[32m                "type"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-15T19:35:24+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "psr/container",[m
[32m+[m[32m            "version": "1.0.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/php-fig/container.git",[m
[32m+[m[32m                "reference": "b7ce3b176482dbbc1245ebf52b181af44c2cf55f"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/php-fig/container/zipball/b7ce3b176482dbbc1245ebf52b181af44c2cf55f",[m
[32m+[m[32m                "reference": "b7ce3b176482dbbc1245ebf52b181af44c2cf55f",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.0.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Psr\\Container\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "PHP-FIG",[m
[32m+[m[32m                    "homepage": "http://www.php-fig.org/"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Common Container Interface (PHP FIG PSR-11)",[m
[32m+[m[32m            "homepage": "https://github.com/php-fig/container",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "PSR-11",[m
[32m+[m[32m                "container",[m
[32m+[m[32m                "container-interface",[m
[32m+[m[32m                "container-interop",[m
[32m+[m[32m                "psr"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2017-02-14T16:28:37+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "psr/log",[m
[32m+[m[32m            "version": "1.1.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/php-fig/log.git",[m
[32m+[m[32m                "reference": "446d54b4cb6bf489fc9d75f55843658e6f25d801"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/php-fig/log/zipball/446d54b4cb6bf489fc9d75f55843658e6f25d801",[m
[32m+[m[32m                "reference": "446d54b4cb6bf489fc9d75f55843658e6f25d801",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.1.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Psr\\Log\\": "Psr/Log/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "PHP-FIG",[m
[32m+[m[32m                    "homepage": "http://www.php-fig.org/"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Common interface for logging libraries",[m
[32m+[m[32m            "homepage": "https://github.com/php-fig/log",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "log",[m
[32m+[m[32m                "psr",[m
[32m+[m[32m                "psr-3"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-01T11:05:21+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "psr/simple-cache",[m
[32m+[m[32m            "version": "1.0.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/php-fig/simple-cache.git",[m
[32m+[m[32m                "reference": "408d5eafb83c57f6365a3ca330ff23aa4a5fa39b"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/php-fig/simple-cache/zipball/408d5eafb83c57f6365a3ca330ff23aa4a5fa39b",[m
[32m+[m[32m                "reference": "408d5eafb83c57f6365a3ca330ff23aa4a5fa39b",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.0.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Psr\\SimpleCache\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "PHP-FIG",[m
[32m+[m[32m                    "homepage": "http://www.php-fig.org/"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Common interfaces for simple caching",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "cache",[m
[32m+[m[32m                "caching",[m
[32m+[m[32m                "psr",[m
[32m+[m[32m                "psr-16",[m
[32m+[m[32m                "simple-cache"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2017-10-23T01:57:42+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "psy/psysh",[m
[32m+[m[32m            "version": "v0.9.12",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/bobthecow/psysh.git",[m
[32m+[m[32m                "reference": "90da7f37568aee36b116a030c5f99c915267edd4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/bobthecow/psysh/zipball/90da7f37568aee36b116a030c5f99c915267edd4",[m
[32m+[m[32m                "reference": "90da7f37568aee36b116a030c5f99c915267edd4",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "dnoegel/php-xdg-base-dir": "0.1.*",[m
[32m+[m[32m                "ext-json": "*",[m
[32m+[m[32m                "ext-tokenizer": "*",[m
[32m+[m[32m                "jakub-onderka/php-console-highlighter": "0.3.*|0.4.*",[m
[32m+[m[32m                "nikic/php-parser": "~1.3|~2.0|~3.0|~4.0",[m
[32m+[m[32m                "php": ">=5.4.0",[m
[32m+[m[32m                "symfony/console": "~2.3.10|^2.4.2|~3.0|~4.0|~5.0",[m
[32m+[m[32m                "symfony/var-dumper": "~2.7|~3.0|~4.0|~5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "bamarni/composer-bin-plugin": "^1.2",[m
[32m+[m[32m                "hoa/console": "~2.15|~3.16",[m
[32m+[m[32m                "phpunit/phpunit": "~4.8.35|~5.0|~6.0|~7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-pcntl": "Enabling the PCNTL extension makes PsySH a lot happier :)",[m
[32m+[m[32m                "ext-pdo-sqlite": "The doc command requires SQLite to work.",[m
[32m+[m[32m                "ext-posix": "If you have PCNTL, you'll want the POSIX extension as well.",[m
[32m+[m[32m                "ext-readline": "Enables support for arrow-key history navigation, and showing and manipulating command history.",[m
[32m+[m[32m                "hoa/console": "A pure PHP readline implementation. You'll want this if your PHP install doesn't already support readline or libedit."[m
[32m+[m[32m            },[m
[32m+[m[32m            "bin": [[m
[32m+[m[32m                "bin/psysh"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-develop": "0.9.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "src/functions.php"[m
[32m+[m[32m                ],[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Psy\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Justin Hileman",[m
[32m+[m[32m                    "email": "justin@justinhileman.info",[m
[32m+[m[32m                    "homepage": "http://justinhileman.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "An interactive shell for modern PHP.",[m
[32m+[m[32m            "homepage": "http://psysh.org",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "REPL",[m
[32m+[m[32m                "console",[m
[32m+[m[32m                "interactive",[m
[32m+[m[32m                "shell"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-06T14:19:43+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "ramsey/uuid",[m
[32m+[m[32m            "version": "3.9.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/ramsey/uuid.git",[m
[32m+[m[32m                "reference": "7779489a47d443f845271badbdcedfe4df8e06fb"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/ramsey/uuid/zipball/7779489a47d443f845271badbdcedfe4df8e06fb",[m
[32m+[m[32m                "reference": "7779489a47d443f845271badbdcedfe4df8e06fb",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "ext-json": "*",[m
[32m+[m[32m                "paragonie/random_compat": "^1 | ^2 | 9.99.99",[m
[32m+[m[32m                "php": "^5.4 | ^7 | ^8",[m
[32m+[m[32m                "symfony/polyfill-ctype": "^1.8"[m
[32m+[m[32m            },[m
[32m+[m[32m            "replace": {[m
[32m+[m[32m                "rhumsaa/uuid": "self.version"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "codeception/aspect-mock": "^1 | ^2",[m
[32m+[m[32m                "doctrine/annotations": "^1.2",[m
[32m+[m[32m                "goaop/framework": "1.0.0-alpha.2 | ^1 | ^2.1",[m
[32m+[m[32m                "jakub-onderka/php-parallel-lint": "^1",[m
[32m+[m[32m                "mockery/mockery": "^0.9.11 | ^1",[m
[32m+[m[32m                "moontoast/math": "^1.1",[m
[32m+[m[32m                "paragonie/random-lib": "^2",[m
[32m+[m[32m                "php-mock/php-mock-phpunit": "^0.3 | ^1.1",[m
[32m+[m[32m                "phpunit/phpunit": "^4.8 | ^5.4 | ^6.5",[m
[32m+[m[32m                "squizlabs/php_codesniffer": "^3.5"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-ctype": "Provides support for PHP Ctype functions",[m
[32m+[m[32m                "ext-libsodium": "Provides the PECL libsodium extension for use with the SodiumRandomGenerator",[m
[32m+[m[32m                "ext-openssl": "Provides the OpenSSL extension for use with the OpenSslGenerator",[m
[32m+[m[32m                "ext-uuid": "Provides the PECL UUID extension for use with the PeclUuidTimeGenerator and PeclUuidRandomGenerator",[m
[32m+[m[32m                "moontoast/math": "Provides support for converting UUID to 128-bit integer (in string form).",[m
[32m+[m[32m                "paragonie/random-lib": "Provides RandomLib for use with the RandomLibAdapter",[m
[32m+[m[32m                "ramsey/uuid-console": "A console application for generating UUIDs with ramsey/uuid",[m
[32m+[m[32m                "ramsey/uuid-doctrine": "Allows the use of Ramsey\\Uuid\\Uuid as Doctrine field type."[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Ramsey\\Uuid\\": "src/"[m
[32m+[m[32m                },[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "src/functions.php"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Ben Ramsey",[m
[32m+[m[32m                    "email": "ben@benramsey.com",[m
[32m+[m[32m                    "homepage": "https://benramsey.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Marijn Huizendveld",[m
[32m+[m[32m                    "email": "marijn.huizendveld@gmail.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Thibaud Fabre",[m
[32m+[m[32m                    "email": "thibaud@aztech.io"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Formerly rhumsaa/uuid. A PHP 5.4+ library for generating RFC 4122 version 1, 3, 4, and 5 universally unique identifiers (UUID).",[m
[32m+[m[32m            "homepage": "https://github.com/ramsey/uuid",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "guid",[m
[32m+[m[32m                "identifier",[m
[32m+[m[32m                "uuid"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-17T08:18:51+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "swiftmailer/swiftmailer",[m
[32m+[m[32m            "version": "v6.2.3",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/swiftmailer/swiftmailer.git",[m
[32m+[m[32m                "reference": "149cfdf118b169f7840bbe3ef0d4bc795d1780c9"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/swiftmailer/swiftmailer/zipball/149cfdf118b169f7840bbe3ef0d4bc795d1780c9",[m
[32m+[m[32m                "reference": "149cfdf118b169f7840bbe3ef0d4bc795d1780c9",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "egulias/email-validator": "~2.0",[m
[32m+[m[32m                "php": ">=7.0.0",[m
[32m+[m[32m                "symfony/polyfill-iconv": "^1.0",[m
[32m+[m[32m                "symfony/polyfill-intl-idn": "^1.10",[m
[32m+[m[32m                "symfony/polyfill-mbstring": "^1.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "mockery/mockery": "~0.9.1",[m
[32m+[m[32m                "symfony/phpunit-bridge": "^3.4.19|^4.1.8"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-intl": "Needed to support internationalized email addresses",[m
[32m+[m[32m                "true/punycode": "Needed to support internationalized email addresses, if ext-intl is not installed"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "6.2-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "lib/swift_required.php"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Chris Corbyn"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Swiftmailer, free feature-rich PHP mailer",[m
[32m+[m[32m            "homepage": "https://swiftmailer.symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "email",[m
[32m+[m[32m                "mail",[m
[32m+[m[32m                "mailer"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-12T09:31:26+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/console",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/console.git",[m
[32m+[m[32m                "reference": "82437719dab1e6bdd28726af14cb345c2ec816d0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/console/zipball/82437719dab1e6bdd28726af14cb345c2ec816d0",[m
[32m+[m[32m                "reference": "82437719dab1e6bdd28726af14cb345c2ec816d0",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3",[m
[32m+[m[32m                "symfony/polyfill-mbstring": "~1.0",[m
[32m+[m[32m                "symfony/polyfill-php73": "^1.8",[m
[32m+[m[32m                "symfony/service-contracts": "^1.1|^2"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "symfony/dependency-injection": "<3.4",[m
[32m+[m[32m                "symfony/event-dispatcher": "<4.3|>=5",[m
[32m+[m[32m                "symfony/lock": "<4.4",[m
[32m+[m[32m                "symfony/process": "<3.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "provide": {[m
[32m+[m[32m                "psr/log-implementation": "1.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "psr/log": "~1.0",[m
[32m+[m[32m                "symfony/config": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/dependency-injection": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/event-dispatcher": "^4.3",[m
[32m+[m[32m                "symfony/lock": "^4.4|^5.0",[m
[32m+[m[32m                "symfony/process": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/var-dumper": "^4.3|^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "psr/log": "For using the console logger",[m
[32m+[m[32m                "symfony/event-dispatcher": "",[m
[32m+[m[32m                "symfony/lock": "",[m
[32m+[m[32m                "symfony/process": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\Console\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony Console Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2019-12-17T10:32:23+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/css-selector",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/css-selector.git",[m
[32m+[m[32m                "reference": "64acec7e0d67125e9f4656c68d4a38a42ab5a0b7"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/css-selector/zipball/64acec7e0d67125e9f4656c68d4a38a42ab5a0b7",[m
[32m+[m[32m                "reference": "64acec7e0d67125e9f4656c68d4a38a42ab5a0b7",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\CssSelector\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Jean-François Simon",[m
[32m+[m[32m                    "email": "jeanfrancois.simon@sensiolabs.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony CssSelector Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2019-10-12T00:35:04+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/debug",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/debug.git",[m
[32m+[m[32m                "reference": "5c4c1db977dc70bb3250e1308d3e8c6341aa38f5"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/debug/zipball/5c4c1db977dc70bb3250e1308d3e8c6341aa38f5",[m
[32m+[m[32m                "reference": "5c4c1db977dc70bb3250e1308d3e8c6341aa38f5",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3",[m
[32m+[m[32m                "psr/log": "~1.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "symfony/http-kernel": "<3.4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "symfony/http-kernel": "^3.4|^4.0|^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\Debug\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony Debug Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2019-12-16T14:46:54+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/error-handler",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/error-handler.git",[m
[32m+[m[32m                "reference": "6d7d7712a6ff5215ec26215672293b154f1db8c1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/error-handler/zipball/6d7d7712a6ff5215ec26215672293b154f1db8c1",[m
[32m+[m[32m                "reference": "6d7d7712a6ff5215ec26215672293b154f1db8c1",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3",[m
[32m+[m[32m                "psr/log": "~1.0",[m
[32m+[m[32m                "symfony/debug": "^4.4",[m
[32m+[m[32m                "symfony/var-dumper": "^4.4|^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "symfony/http-kernel": "^4.4|^5.0",[m
[32m+[m[32m                "symfony/serializer": "^4.4|^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\ErrorHandler\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony ErrorHandler Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2019-12-16T14:46:54+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/event-dispatcher",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/event-dispatcher.git",[m
[32m+[m[32m                "reference": "b3c3068a72623287550fe20b84a2b01dcba2686f"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/event-dispatcher/zipball/b3c3068a72623287550fe20b84a2b01dcba2686f",[m
[32m+[m[32m                "reference": "b3c3068a72623287550fe20b84a2b01dcba2686f",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3",[m
[32m+[m[32m                "symfony/event-dispatcher-contracts": "^1.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "symfony/dependency-injection": "<3.4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "provide": {[m
[32m+[m[32m                "psr/event-dispatcher-implementation": "1.0",[m
[32m+[m[32m                "symfony/event-dispatcher-implementation": "1.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "psr/log": "~1.0",[m
[32m+[m[32m                "symfony/config": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/dependency-injection": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/expression-language": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/http-foundation": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/service-contracts": "^1.1|^2",[m
[32m+[m[32m                "symfony/stopwatch": "^3.4|^4.0|^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "symfony/dependency-injection": "",[m
[32m+[m[32m                "symfony/http-kernel": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\EventDispatcher\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony EventDispatcher Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2019-11-28T13:33:56+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/event-dispatcher-contracts",[m
[32m+[m[32m            "version": "v1.1.7",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/event-dispatcher-contracts.git",[m
[32m+[m[32m                "reference": "c43ab685673fb6c8d84220c77897b1d6cdbe1d18"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/c43ab685673fb6c8d84220c77897b1d6cdbe1d18",[m
[32m+[m[32m                "reference": "c43ab685673fb6c8d84220c77897b1d6cdbe1d18",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "psr/event-dispatcher": "",[m
[32m+[m[32m                "symfony/event-dispatcher-implementation": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.1-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Contracts\\EventDispatcher\\": ""[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Nicolas Grekas",[m
[32m+[m[32m                    "email": "p@tchwork.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Generic abstractions related to dispatching event",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "abstractions",[m
[32m+[m[32m                "contracts",[m
[32m+[m[32m                "decoupling",[m
[32m+[m[32m                "interfaces",[m
[32m+[m[32m                "interoperability",[m
[32m+[m[32m                "standards"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-09-17T09:54:03+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/finder",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/finder.git",[m
[32m+[m[32m                "reference": "ce8743441da64c41e2a667b8eb66070444ed911e"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/finder/zipball/ce8743441da64c41e2a667b8eb66070444ed911e",[m
[32m+[m[32m                "reference": "ce8743441da64c41e2a667b8eb66070444ed911e",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\Finder\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony Finder Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2019-11-17T21:56:56+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/http-foundation",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/http-foundation.git",[m
[32m+[m[32m                "reference": "fcae1cff5b57b2a9c3aabefeb1527678705ddb62"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/http-foundation/zipball/fcae1cff5b57b2a9c3aabefeb1527678705ddb62",[m
[32m+[m[32m                "reference": "fcae1cff5b57b2a9c3aabefeb1527678705ddb62",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3",[m
[32m+[m[32m                "symfony/mime": "^4.3|^5.0",[m
[32m+[m[32m                "symfony/polyfill-mbstring": "~1.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "predis/predis": "~1.0",[m
[32m+[m[32m                "symfony/expression-language": "^3.4|^4.0|^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\HttpFoundation\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony HttpFoundation Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2019-12-19T15:57:49+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/http-kernel",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/http-kernel.git",[m
[32m+[m[32m                "reference": "fe310d2e95cd4c356836c8ecb0895a46d97fede2"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/http-kernel/zipball/fe310d2e95cd4c356836c8ecb0895a46d97fede2",[m
[32m+[m[32m                "reference": "fe310d2e95cd4c356836c8ecb0895a46d97fede2",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3",[m
[32m+[m[32m                "psr/log": "~1.0",[m
[32m+[m[32m                "symfony/error-handler": "^4.4",[m
[32m+[m[32m                "symfony/event-dispatcher": "^4.4",[m
[32m+[m[32m                "symfony/http-foundation": "^4.4|^5.0",[m
[32m+[m[32m                "symfony/polyfill-ctype": "^1.8",[m
[32m+[m[32m                "symfony/polyfill-php73": "^1.9"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "symfony/browser-kit": "<4.3",[m
[32m+[m[32m                "symfony/config": "<3.4",[m
[32m+[m[32m                "symfony/console": ">=5",[m
[32m+[m[32m                "symfony/dependency-injection": "<4.3",[m
[32m+[m[32m                "symfony/translation": "<4.2",[m
[32m+[m[32m                "twig/twig": "<1.34|<2.4,>=2"[m
[32m+[m[32m            },[m
[32m+[m[32m            "provide": {[m
[32m+[m[32m                "psr/log-implementation": "1.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "psr/cache": "~1.0",[m
[32m+[m[32m                "symfony/browser-kit": "^4.3|^5.0",[m
[32m+[m[32m                "symfony/config": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/console": "^3.4|^4.0",[m
[32m+[m[32m                "symfony/css-selector": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/dependency-injection": "^4.3|^5.0",[m
[32m+[m[32m                "symfony/dom-crawler": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/expression-language": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/finder": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/process": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/routing": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/stopwatch": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/templating": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/translation": "^4.2|^5.0",[m
[32m+[m[32m                "symfony/translation-contracts": "^1.1|^2",[m
[32m+[m[32m                "twig/twig": "^1.34|^2.4|^3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "symfony/browser-kit": "",[m
[32m+[m[32m                "symfony/config": "",[m
[32m+[m[32m                "symfony/console": "",[m
[32m+[m[32m                "symfony/dependency-injection": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\HttpKernel\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony HttpKernel Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2019-12-19T16:23:40+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/mime",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/mime.git",[m
[32m+[m[32m                "reference": "010cc488e56cafe5f7494dea70aea93100c234df"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/mime/zipball/010cc488e56cafe5f7494dea70aea93100c234df",[m
[32m+[m[32m                "reference": "010cc488e56cafe5f7494dea70aea93100c234df",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3",[m
[32m+[m[32m                "symfony/polyfill-intl-idn": "^1.10",[m
[32m+[m[32m                "symfony/polyfill-mbstring": "^1.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "symfony/mailer": "<4.4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "egulias/email-validator": "^2.1.10",[m
[32m+[m[32m                "symfony/dependency-injection": "^3.4|^4.1|^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\Mime\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "A library to manipulate MIME messages",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "mime",[m
[32m+[m[32m                "mime-type"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-30T08:27:26+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/polyfill-ctype",[m
[32m+[m[32m            "version": "v1.13.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/polyfill-ctype.git",[m
[32m+[m[32m                "reference": "f8f0b461be3385e56d6de3dbb5a0df24c0c275e3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/polyfill-ctype/zipball/f8f0b461be3385e56d6de3dbb5a0df24c0c275e3",[m
[32m+[m[32m                "reference": "f8f0b461be3385e56d6de3dbb5a0df24c0c275e3",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-ctype": "For best performance"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.13-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Polyfill\\Ctype\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "bootstrap.php"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Gert de Pagter",[m
[32m+[m[32m                    "email": "BackEndTea@gmail.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony polyfill for ctype functions",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "compatibility",[m
[32m+[m[32m                "ctype",[m
[32m+[m[32m                "polyfill",[m
[32m+[m[32m                "portable"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-27T13:56:44+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/polyfill-iconv",[m
[32m+[m[32m            "version": "v1.13.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/polyfill-iconv.git",[m
[32m+[m[32m                "reference": "a019efccc03f1a335af6b4f20c30f5ea8060be36"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/polyfill-iconv/zipball/a019efccc03f1a335af6b4f20c30f5ea8060be36",[m
[32m+[m[32m                "reference": "a019efccc03f1a335af6b4f20c30f5ea8060be36",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-iconv": "For best performance"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.13-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Polyfill\\Iconv\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "bootstrap.php"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Nicolas Grekas",[m
[32m+[m[32m                    "email": "p@tchwork.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony polyfill for the Iconv extension",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "compatibility",[m
[32m+[m[32m                "iconv",[m
[32m+[m[32m                "polyfill",[m
[32m+[m[32m                "portable",[m
[32m+[m[32m                "shim"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-27T13:56:44+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/polyfill-intl-idn",[m
[32m+[m[32m            "version": "v1.13.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/polyfill-intl-idn.git",[m
[32m+[m[32m                "reference": "6f9c239e61e1b0c9229a28ff89a812dc449c3d46"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/6f9c239e61e1b0c9229a28ff89a812dc449c3d46",[m
[32m+[m[32m                "reference": "6f9c239e61e1b0c9229a28ff89a812dc449c3d46",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.3",[m
[32m+[m[32m                "symfony/polyfill-mbstring": "^1.3",[m
[32m+[m[32m                "symfony/polyfill-php72": "^1.9"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-intl": "For best performance"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.13-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Polyfill\\Intl\\Idn\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "bootstrap.php"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Laurent Bassin",[m
[32m+[m[32m                    "email": "laurent@bassin.info"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony polyfill for intl's idn_to_ascii and idn_to_utf8 functions",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "compatibility",[m
[32m+[m[32m                "idn",[m
[32m+[m[32m                "intl",[m
[32m+[m[32m                "polyfill",[m
[32m+[m[32m                "portable",[m
[32m+[m[32m                "shim"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-27T13:56:44+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/polyfill-mbstring",[m
[32m+[m[32m            "version": "v1.13.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/polyfill-mbstring.git",[m
[32m+[m[32m                "reference": "7b4aab9743c30be783b73de055d24a39cf4b954f"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/7b4aab9743c30be783b73de055d24a39cf4b954f",[m
[32m+[m[32m                "reference": "7b4aab9743c30be783b73de055d24a39cf4b954f",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-mbstring": "For best performance"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.13-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Polyfill\\Mbstring\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "bootstrap.php"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Nicolas Grekas",[m
[32m+[m[32m                    "email": "p@tchwork.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony polyfill for the Mbstring extension",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "compatibility",[m
[32m+[m[32m                "mbstring",[m
[32m+[m[32m                "polyfill",[m
[32m+[m[32m                "portable",[m
[32m+[m[32m                "shim"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-27T14:18:11+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/polyfill-php72",[m
[32m+[m[32m            "version": "v1.13.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/polyfill-php72.git",[m
[32m+[m[32m                "reference": "66fea50f6cb37a35eea048d75a7d99a45b586038"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/polyfill-php72/zipball/66fea50f6cb37a35eea048d75a7d99a45b586038",[m
[32m+[m[32m                "reference": "66fea50f6cb37a35eea048d75a7d99a45b586038",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.13-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Polyfill\\Php72\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "bootstrap.php"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Nicolas Grekas",[m
[32m+[m[32m                    "email": "p@tchwork.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony polyfill backporting some PHP 7.2+ features to lower PHP versions",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "compatibility",[m
[32m+[m[32m                "polyfill",[m
[32m+[m[32m                "portable",[m
[32m+[m[32m                "shim"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-27T13:56:44+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/polyfill-php73",[m
[32m+[m[32m            "version": "v1.13.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/polyfill-php73.git",[m
[32m+[m[32m                "reference": "4b0e2222c55a25b4541305a053013d5647d3a25f"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/polyfill-php73/zipball/4b0e2222c55a25b4541305a053013d5647d3a25f",[m
[32m+[m[32m                "reference": "4b0e2222c55a25b4541305a053013d5647d3a25f",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.13-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Polyfill\\Php73\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "bootstrap.php"[m
[32m+[m[32m                ],[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "Resources/stubs"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Nicolas Grekas",[m
[32m+[m[32m                    "email": "p@tchwork.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony polyfill backporting some PHP 7.3+ features to lower PHP versions",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "compatibility",[m
[32m+[m[32m                "polyfill",[m
[32m+[m[32m                "portable",[m
[32m+[m[32m                "shim"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-27T16:25:15+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/process",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/process.git",[m
[32m+[m[32m                "reference": "b84501ad50adb72a94fb460a5b5c91f693e99c9b"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/process/zipball/b84501ad50adb72a94fb460a5b5c91f693e99c9b",[m
[32m+[m[32m                "reference": "b84501ad50adb72a94fb460a5b5c91f693e99c9b",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\Process\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony Process Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2019-12-06T10:06:46+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/routing",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/routing.git",[m
[32m+[m[32m                "reference": "628bcafae1b2043969378dcfbf9c196539a38722"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/routing/zipball/628bcafae1b2043969378dcfbf9c196539a38722",[m
[32m+[m[32m                "reference": "628bcafae1b2043969378dcfbf9c196539a38722",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "symfony/config": "<4.2",[m
[32m+[m[32m                "symfony/dependency-injection": "<3.4",[m
[32m+[m[32m                "symfony/yaml": "<3.4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "doctrine/annotations": "~1.2",[m
[32m+[m[32m                "psr/log": "~1.0",[m
[32m+[m[32m                "symfony/config": "^4.2|^5.0",[m
[32m+[m[32m                "symfony/dependency-injection": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/expression-language": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/http-foundation": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/yaml": "^3.4|^4.0|^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "doctrine/annotations": "For using the annotation loader",[m
[32m+[m[32m                "symfony/config": "For using the all-in-one router or any loader",[m
[32m+[m[32m                "symfony/expression-language": "For using expression matching",[m
[32m+[m[32m                "symfony/http-foundation": "For using a Symfony Request object",[m
[32m+[m[32m                "symfony/yaml": "For using the YAML loader"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\Routing\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony Routing Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "router",[m
[32m+[m[32m                "routing",[m
[32m+[m[32m                "uri",[m
[32m+[m[32m                "url"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-12T12:53:52+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/service-contracts",[m
[32m+[m[32m            "version": "v1.1.8",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/service-contracts.git",[m
[32m+[m[32m                "reference": "ffc7f5692092df31515df2a5ecf3b7302b3ddacf"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/service-contracts/zipball/ffc7f5692092df31515df2a5ecf3b7302b3ddacf",[m
[32m+[m[32m                "reference": "ffc7f5692092df31515df2a5ecf3b7302b3ddacf",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3",[m
[32m+[m[32m                "psr/container": "^1.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "symfony/service-implementation": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.1-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Contracts\\Service\\": ""[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Nicolas Grekas",[m
[32m+[m[32m                    "email": "p@tchwork.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Generic abstractions related to writing services",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "abstractions",[m
[32m+[m[32m                "contracts",[m
[32m+[m[32m                "decoupling",[m
[32m+[m[32m                "interfaces",[m
[32m+[m[32m                "interoperability",[m
[32m+[m[32m                "standards"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-10-14T12:27:06+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/translation",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/translation.git",[m
[32m+[m[32m                "reference": "f7669f48a9633bf8139bc026c755e894b7206677"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/translation/zipball/f7669f48a9633bf8139bc026c755e894b7206677",[m
[32m+[m[32m                "reference": "f7669f48a9633bf8139bc026c755e894b7206677",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3",[m
[32m+[m[32m                "symfony/polyfill-mbstring": "~1.0",[m
[32m+[m[32m                "symfony/translation-contracts": "^1.1.6|^2"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "symfony/config": "<3.4",[m
[32m+[m[32m                "symfony/dependency-injection": "<3.4",[m
[32m+[m[32m                "symfony/http-kernel": "<4.4",[m
[32m+[m[32m                "symfony/yaml": "<3.4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "provide": {[m
[32m+[m[32m                "symfony/translation-implementation": "1.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "psr/log": "~1.0",[m
[32m+[m[32m                "symfony/config": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/console": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/dependency-injection": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/finder": "~2.8|~3.0|~4.0|^5.0",[m
[32m+[m[32m                "symfony/http-kernel": "^4.4",[m
[32m+[m[32m                "symfony/intl": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/service-contracts": "^1.1.2|^2",[m
[32m+[m[32m                "symfony/yaml": "^3.4|^4.0|^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "psr/log-implementation": "To use logging capability in translator",[m
[32m+[m[32m                "symfony/config": "",[m
[32m+[m[32m                "symfony/yaml": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\Translation\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony Translation Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2019-12-12T12:53:52+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/translation-contracts",[m
[32m+[m[32m            "version": "v1.1.7",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/translation-contracts.git",[m
[32m+[m[32m                "reference": "364518c132c95642e530d9b2d217acbc2ccac3e6"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/translation-contracts/zipball/364518c132c95642e530d9b2d217acbc2ccac3e6",[m
[32m+[m[32m                "reference": "364518c132c95642e530d9b2d217acbc2ccac3e6",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "symfony/translation-implementation": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.1-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Contracts\\Translation\\": ""[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Nicolas Grekas",[m
[32m+[m[32m                    "email": "p@tchwork.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Generic abstractions related to translation",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "abstractions",[m
[32m+[m[32m                "contracts",[m
[32m+[m[32m                "decoupling",[m
[32m+[m[32m                "interfaces",[m
[32m+[m[32m                "interoperability",[m
[32m+[m[32m                "standards"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-09-17T11:12:18+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/var-dumper",[m
[32m+[m[32m            "version": "v4.4.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/var-dumper.git",[m
[32m+[m[32m                "reference": "be330f919bdb395d1e0c3f2bfb8948512d6bdd99"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/var-dumper/zipball/be330f919bdb395d1e0c3f2bfb8948512d6bdd99",[m
[32m+[m[32m                "reference": "be330f919bdb395d1e0c3f2bfb8948512d6bdd99",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1.3",[m
[32m+[m[32m                "symfony/polyfill-mbstring": "~1.0",[m
[32m+[m[32m                "symfony/polyfill-php72": "~1.5"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "phpunit/phpunit": "<4.8.35|<5.4.3,>=5.0",[m
[32m+[m[32m                "symfony/console": "<3.4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "ext-iconv": "*",[m
[32m+[m[32m                "symfony/console": "^3.4|^4.0|^5.0",[m
[32m+[m[32m                "symfony/process": "^4.4|^5.0",[m
[32m+[m[32m                "twig/twig": "^1.34|^2.4|^3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-iconv": "To convert non-UTF-8 strings to UTF-8 (or symfony/polyfill-iconv in case ext-iconv cannot be used).",[m
[32m+[m[32m                "ext-intl": "To show region name in time zone dump",[m
[32m+[m[32m                "symfony/console": "To use the ServerDumpCommand and/or the bin/var-dump-server script"[m
[32m+[m[32m            },[m
[32m+[m[32m            "bin": [[m
[32m+[m[32m                "Resources/bin/var-dump-server"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.4-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "Resources/functions/dump.php"[m
[32m+[m[32m                ],[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\VarDumper\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Nicolas Grekas",[m
[32m+[m[32m                    "email": "p@tchwork.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony mechanism for exploring and dumping PHP variables",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "debug",[m
[32m+[m[32m                "dump"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-18T13:41:29+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "tijsverkoyen/css-to-inline-styles",[m
[32m+[m[32m            "version": "2.2.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/tijsverkoyen/CssToInlineStyles.git",[m
[32m+[m[32m                "reference": "dda2ee426acd6d801d5b7fd1001cde9b5f790e15"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/dda2ee426acd6d801d5b7fd1001cde9b5f790e15",[m
[32m+[m[32m                "reference": "dda2ee426acd6d801d5b7fd1001cde9b5f790e15",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "ext-dom": "*",[m
[32m+[m[32m                "ext-libxml": "*",[m
[32m+[m[32m                "php": "^5.5 || ^7.0",[m
[32m+[m[32m                "symfony/css-selector": "^2.7 || ^3.0 || ^4.0 || ^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^4.8.35 || ^5.7 || ^6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.2.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "TijsVerkoyen\\CssToInlineStyles\\": "src"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Tijs Verkoyen",[m
[32m+[m[32m                    "email": "css_to_inline_styles@verkoyen.eu",[m
[32m+[m[32m                    "role": "Developer"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "CssToInlineStyles is a class that enables you to convert HTML-pages/files into HTML-pages/files with inline styles. This is very useful when you're sending emails.",[m
[32m+[m[32m            "homepage": "https://github.com/tijsverkoyen/CssToInlineStyles",[m
[32m+[m[32m            "time": "2019-10-24T08:53:34+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "vlucas/phpdotenv",[m
[32m+[m[32m            "version": "v3.6.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/vlucas/phpdotenv.git",[m
[32m+[m[32m                "reference": "1bdf24f065975594f6a117f0f1f6cabf1333b156"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/vlucas/phpdotenv/zipball/1bdf24f065975594f6a117f0f1f6cabf1333b156",[m
[32m+[m[32m                "reference": "1bdf24f065975594f6a117f0f1f6cabf1333b156",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^5.4 || ^7.0",[m
[32m+[m[32m                "phpoption/phpoption": "^1.5",[m
[32m+[m[32m                "symfony/polyfill-ctype": "^1.9"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^4.8.35 || ^5.0 || ^6.0 || ^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.6-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Dotenv\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Graham Campbell",[m
[32m+[m[32m                    "email": "graham@alt-three.com",[m
[32m+[m[32m                    "homepage": "https://gjcampbell.co.uk/"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Vance Lucas",[m
[32m+[m[32m                    "email": "vance@vancelucas.com",[m
[32m+[m[32m                    "homepage": "https://vancelucas.com/"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Loads environment variables from `.env` to `getenv()`, `$_ENV` and `$_SERVER` automagically.",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "dotenv",[m
[32m+[m[32m                "env",[m
[32m+[m[32m                "environment"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-09-10T21:37:39+00:00"[m
[32m+[m[32m        }[m
[32m+[m[32m    ],[m
[32m+[m[32m    "packages-dev": [[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "beyondcode/laravel-dump-server",[m
[32m+[m[32m            "version": "1.3.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/beyondcode/laravel-dump-server.git",[m
[32m+[m[32m                "reference": "fcc88fa66895f8c1ff83f6145a5eff5fa2a0739a"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/beyondcode/laravel-dump-server/zipball/fcc88fa66895f8c1ff83f6145a5eff5fa2a0739a",[m
[32m+[m[32m                "reference": "fcc88fa66895f8c1ff83f6145a5eff5fa2a0739a",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "illuminate/console": "5.6.*|5.7.*|5.8.*|^6.0",[m
[32m+[m[32m                "illuminate/http": "5.6.*|5.7.*|5.8.*|^6.0",[m
[32m+[m[32m                "illuminate/support": "5.6.*|5.7.*|5.8.*|^6.0",[m
[32m+[m[32m                "php": "^7.1",[m
[32m+[m[32m                "symfony/var-dumper": "^4.1.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "larapack/dd": "^1.0",[m
[32m+[m[32m                "phpunit/phpunit": "^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "laravel": {[m
[32m+[m[32m                    "providers": [[m
[32m+[m[32m                        "BeyondCode\\DumpServer\\DumpServerServiceProvider"[m
[32m+[m[32m                    ][m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "BeyondCode\\DumpServer\\": "src"[m
[32m+[m[32m                },[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "helpers.php"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Marcel Pociot",[m
[32m+[m[32m                    "email": "marcel@beyondco.de",[m
[32m+[m[32m                    "homepage": "https://beyondco.de",[m
[32m+[m[32m                    "role": "Developer"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony Var-Dump Server for Laravel",[m
[32m+[m[32m            "homepage": "https://github.com/beyondcode/laravel-dump-server",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "beyondcode",[m
[32m+[m[32m                "laravel-dump-server"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-08-11T13:17:40+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "doctrine/instantiator",[m
[32m+[m[32m            "version": "1.3.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/doctrine/instantiator.git",[m
[32m+[m[32m                "reference": "ae466f726242e637cebdd526a7d991b9433bacf1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/doctrine/instantiator/zipball/ae466f726242e637cebdd526a7d991b9433bacf1",[m
[32m+[m[32m                "reference": "ae466f726242e637cebdd526a7d991b9433bacf1",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "doctrine/coding-standard": "^6.0",[m
[32m+[m[32m                "ext-pdo": "*",[m
[32m+[m[32m                "ext-phar": "*",[m
[32m+[m[32m                "phpbench/phpbench": "^0.13",[m
[32m+[m[32m                "phpstan/phpstan-phpunit": "^0.11",[m
[32m+[m[32m                "phpstan/phpstan-shim": "^0.11",[m
[32m+[m[32m                "phpunit/phpunit": "^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.2.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Doctrine\\Instantiator\\": "src/Doctrine/Instantiator/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Marco Pivetta",[m
[32m+[m[32m                    "email": "ocramius@gmail.com",[m
[32m+[m[32m                    "homepage": "http://ocramius.github.com/"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "A small, lightweight utility to instantiate objects in PHP without invoking their constructors",[m
[32m+[m[32m            "homepage": "https://www.doctrine-project.org/projects/instantiator.html",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "constructor",[m
[32m+[m[32m                "instantiate"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-10-21T16:45:58+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "filp/whoops",[m
[32m+[m[32m            "version": "2.7.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/filp/whoops.git",[m
[32m+[m[32m                "reference": "4c97f814aa2f0dd4d5bedc89181c10ef12c004c5"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/filp/whoops/zipball/4c97f814aa2f0dd4d5bedc89181c10ef12c004c5",[m
[32m+[m[32m                "reference": "4c97f814aa2f0dd4d5bedc89181c10ef12c004c5",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^5.5.9 || ^7.0",[m
[32m+[m[32m                "psr/log": "^1.0.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "mockery/mockery": "^0.9 || ^1.0",[m
[32m+[m[32m                "phpunit/phpunit": "^4.8.35 || ^5.7 || ^6.0",[m
[32m+[m[32m                "symfony/var-dumper": "^2.6 || ^3.0 || ^4.0 || ^5.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "symfony/var-dumper": "Pretty print complex values better with var-dumper available",[m
[32m+[m[32m                "whoops/soap": "Formats errors as SOAP responses"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.6-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Whoops\\": "src/Whoops/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Filipe Dobreira",[m
[32m+[m[32m                    "homepage": "https://github.com/filp",[m
[32m+[m[32m                    "role": "Developer"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "php error handling for cool kids",[m
[32m+[m[32m            "homepage": "https://filp.github.io/whoops/",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "error",[m
[32m+[m[32m                "exception",[m
[32m+[m[32m                "handling",[m
[32m+[m[32m                "library",[m
[32m+[m[32m                "throwable",[m
[32m+[m[32m                "whoops"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-29T10:00:00+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "fzaninotto/faker",[m
[32m+[m[32m            "version": "v1.9.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/fzaninotto/Faker.git",[m
[32m+[m[32m                "reference": "fc10d778e4b84d5bd315dad194661e091d307c6f"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/fzaninotto/Faker/zipball/fc10d778e4b84d5bd315dad194661e091d307c6f",[m
[32m+[m[32m                "reference": "fc10d778e4b84d5bd315dad194661e091d307c6f",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^5.3.3 || ^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "ext-intl": "*",[m
[32m+[m[32m                "phpunit/phpunit": "^4.8.35 || ^5.7",[m
[32m+[m[32m                "squizlabs/php_codesniffer": "^2.9.2"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.9-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Faker\\": "src/Faker/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "François Zaninotto"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Faker is a PHP library that generates fake data for you.",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "data",[m
[32m+[m[32m                "faker",[m
[32m+[m[32m                "fixtures"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-12T13:22:17+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "hamcrest/hamcrest-php",[m
[32m+[m[32m            "version": "v2.0.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/hamcrest/hamcrest-php.git",[m
[32m+[m[32m                "reference": "776503d3a8e85d4f9a1148614f95b7a608b046ad"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/hamcrest/hamcrest-php/zipball/776503d3a8e85d4f9a1148614f95b7a608b046ad",[m
[32m+[m[32m                "reference": "776503d3a8e85d4f9a1148614f95b7a608b046ad",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^5.3|^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "replace": {[m
[32m+[m[32m                "cordoval/hamcrest-php": "*",[m
[32m+[m[32m                "davedevelopment/hamcrest-php": "*",[m
[32m+[m[32m                "kodova/hamcrest-php": "*"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/php-file-iterator": "1.3.3",[m
[32m+[m[32m                "phpunit/phpunit": "~4.0",[m
[32m+[m[32m                "satooshi/php-coveralls": "^1.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.0-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "hamcrest"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "This is the PHP port of Hamcrest Matchers",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "test"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2016-01-20T08:20:44+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "mockery/mockery",[m
[32m+[m[32m            "version": "1.3.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/mockery/mockery.git",[m
[32m+[m[32m                "reference": "f69bbde7d7a75d6b2862d9ca8fab1cd28014b4be"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/mockery/mockery/zipball/f69bbde7d7a75d6b2862d9ca8fab1cd28014b4be",[m
[32m+[m[32m                "reference": "f69bbde7d7a75d6b2862d9ca8fab1cd28014b4be",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "hamcrest/hamcrest-php": "~2.0",[m
[32m+[m[32m                "lib-pcre": ">=7.0",[m
[32m+[m[32m                "php": ">=5.6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "~5.7.10|~6.5|~7.0|~8.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.3.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-0": {[m
[32m+[m[32m                    "Mockery": "library/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Pádraic Brady",[m
[32m+[m[32m                    "email": "padraic.brady@gmail.com",[m
[32m+[m[32m                    "homepage": "http://blog.astrumfutura.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Dave Marshall",[m
[32m+[m[32m                    "email": "dave.marshall@atstsolutions.co.uk",[m
[32m+[m[32m                    "homepage": "http://davedevelopment.co.uk"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Mockery is a simple yet flexible PHP mock object framework",[m
[32m+[m[32m            "homepage": "https://github.com/mockery/mockery",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "BDD",[m
[32m+[m[32m                "TDD",[m
[32m+[m[32m                "library",[m
[32m+[m[32m                "mock",[m
[32m+[m[32m                "mock objects",[m
[32m+[m[32m                "mockery",[m
[32m+[m[32m                "stub",[m
[32m+[m[32m                "test",[m
[32m+[m[32m                "test double",[m
[32m+[m[32m                "testing"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-26T09:49:15+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "myclabs/deep-copy",[m
[32m+[m[32m            "version": "1.9.4",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/myclabs/DeepCopy.git",[m
[32m+[m[32m                "reference": "579bb7356d91f9456ccd505f24ca8b667966a0a7"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/myclabs/DeepCopy/zipball/579bb7356d91f9456ccd505f24ca8b667966a0a7",[m
[32m+[m[32m                "reference": "579bb7356d91f9456ccd505f24ca8b667966a0a7",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "replace": {[m
[32m+[m[32m                "myclabs/deep-copy": "self.version"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "doctrine/collections": "^1.0",[m
[32m+[m[32m                "doctrine/common": "^2.6",[m
[32m+[m[32m                "phpunit/phpunit": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "DeepCopy\\": "src/DeepCopy/"[m
[32m+[m[32m                },[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "src/DeepCopy/deep_copy.php"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Create deep copies (clones) of your objects",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "clone",[m
[32m+[m[32m                "copy",[m
[32m+[m[32m                "duplicate",[m
[32m+[m[32m                "object",[m
[32m+[m[32m                "object graph"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-15T19:12:40+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "nunomaduro/collision",[m
[32m+[m[32m            "version": "v3.0.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/nunomaduro/collision.git",[m
[32m+[m[32m                "reference": "af42d339fe2742295a54f6fdd42aaa6f8c4aca68"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/nunomaduro/collision/zipball/af42d339fe2742295a54f6fdd42aaa6f8c4aca68",[m
[32m+[m[32m                "reference": "af42d339fe2742295a54f6fdd42aaa6f8c4aca68",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "filp/whoops": "^2.1.4",[m
[32m+[m[32m                "jakub-onderka/php-console-highlighter": "0.3.*|0.4.*",[m
[32m+[m[32m                "php": "^7.1",[m
[32m+[m[32m                "symfony/console": "~2.8|~3.3|~4.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "laravel/framework": "5.8.*",[m
[32m+[m[32m                "nunomaduro/larastan": "^0.3.0",[m
[32m+[m[32m                "phpstan/phpstan": "^0.11",[m
[32m+[m[32m                "phpunit/phpunit": "~8.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "laravel": {[m
[32m+[m[32m                    "providers": [[m
[32m+[m[32m                        "NunoMaduro\\Collision\\Adapters\\Laravel\\CollisionServiceProvider"[m
[32m+[m[32m                    ][m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "NunoMaduro\\Collision\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Nuno Maduro",[m
[32m+[m[32m                    "email": "enunomaduro@gmail.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Cli error handling for console/command-line PHP applications.",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "artisan",[m
[32m+[m[32m                "cli",[m
[32m+[m[32m                "command-line",[m
[32m+[m[32m                "console",[m
[32m+[m[32m                "error",[m
[32m+[m[32m                "handling",[m
[32m+[m[32m                "laravel",[m
[32m+[m[32m                "laravel-zero",[m
[32m+[m[32m                "php",[m
[32m+[m[32m                "symfony"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-03-07T21:35:13+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phar-io/manifest",[m
[32m+[m[32m            "version": "1.0.3",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/phar-io/manifest.git",[m
[32m+[m[32m                "reference": "7761fcacf03b4d4f16e7ccb606d4879ca431fcf4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/phar-io/manifest/zipball/7761fcacf03b4d4f16e7ccb606d4879ca431fcf4",[m
[32m+[m[32m                "reference": "7761fcacf03b4d4f16e7ccb606d4879ca431fcf4",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "ext-dom": "*",[m
[32m+[m[32m                "ext-phar": "*",[m
[32m+[m[32m                "phar-io/version": "^2.0",[m
[32m+[m[32m                "php": "^5.6 || ^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.0.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Arne Blankerts",[m
[32m+[m[32m                    "email": "arne@blankerts.de",[m
[32m+[m[32m                    "role": "Developer"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Heuer",[m
[32m+[m[32m                    "email": "sebastian@phpeople.de",[m
[32m+[m[32m                    "role": "Developer"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de",[m
[32m+[m[32m                    "role": "Developer"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Component for reading phar.io manifest information from a PHP Archive (PHAR)",[m
[32m+[m[32m            "time": "2018-07-08T19:23:20+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phar-io/version",[m
[32m+[m[32m            "version": "2.0.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/phar-io/version.git",[m
[32m+[m[32m                "reference": "45a2ec53a73c70ce41d55cedef9063630abaf1b6"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/phar-io/version/zipball/45a2ec53a73c70ce41d55cedef9063630abaf1b6",[m
[32m+[m[32m                "reference": "45a2ec53a73c70ce41d55cedef9063630abaf1b6",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^5.6 || ^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Arne Blankerts",[m
[32m+[m[32m                    "email": "arne@blankerts.de",[m
[32m+[m[32m                    "role": "Developer"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Heuer",[m
[32m+[m[32m                    "email": "sebastian@phpeople.de",[m
[32m+[m[32m                    "role": "Developer"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de",[m
[32m+[m[32m                    "role": "Developer"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Library for handling version information and constraints",[m
[32m+[m[32m            "time": "2018-07-08T19:19:57+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phpdocumentor/reflection-common",[m
[32m+[m[32m            "version": "2.0.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/phpDocumentor/ReflectionCommon.git",[m
[32m+[m[32m                "reference": "63a995caa1ca9e5590304cd845c15ad6d482a62a"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/63a995caa1ca9e5590304cd845c15ad6d482a62a",[m
[32m+[m[32m                "reference": "63a995caa1ca9e5590304cd845c15ad6d482a62a",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "~6"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "phpDocumentor\\Reflection\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Jaap van Otterdijk",[m
[32m+[m[32m                    "email": "opensource@ijaap.nl"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Common reflection classes used by phpdocumentor to reflect the code structure",[m
[32m+[m[32m            "homepage": "http://www.phpdoc.org",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "FQSEN",[m
[32m+[m[32m                "phpDocumentor",[m
[32m+[m[32m                "phpdoc",[m
[32m+[m[32m                "reflection",[m
[32m+[m[32m                "static analysis"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2018-08-07T13:53:10+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phpdocumentor/reflection-docblock",[m
[32m+[m[32m            "version": "4.3.4",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/phpDocumentor/ReflectionDocBlock.git",[m
[32m+[m[32m                "reference": "da3fd972d6bafd628114f7e7e036f45944b62e9c"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/da3fd972d6bafd628114f7e7e036f45944b62e9c",[m
[32m+[m[32m                "reference": "da3fd972d6bafd628114f7e7e036f45944b62e9c",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.0",[m
[32m+[m[32m                "phpdocumentor/reflection-common": "^1.0.0 || ^2.0.0",[m
[32m+[m[32m                "phpdocumentor/type-resolver": "~0.4 || ^1.0.0",[m
[32m+[m[32m                "webmozart/assert": "^1.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "doctrine/instantiator": "^1.0.5",[m
[32m+[m[32m                "mockery/mockery": "^1.0",[m
[32m+[m[32m                "phpdocumentor/type-resolver": "0.4.*",[m
[32m+[m[32m                "phpunit/phpunit": "^6.4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "phpDocumentor\\Reflection\\": [[m
[32m+[m[32m                        "src/"[m
[32m+[m[32m                    ][m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Mike van Riel",[m
[32m+[m[32m                    "email": "me@mikevanriel.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "With this component, a library can provide support for annotations via DocBlocks or otherwise retrieve information that is embedded in a DocBlock.",[m
[32m+[m[32m            "time": "2019-12-28T18:55:12+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phpdocumentor/type-resolver",[m
[32m+[m[32m            "version": "1.0.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/phpDocumentor/TypeResolver.git",[m
[32m+[m[32m                "reference": "2e32a6d48972b2c1976ed5d8967145b6cec4a4a9"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/2e32a6d48972b2c1976ed5d8967145b6cec4a4a9",[m
[32m+[m[32m                "reference": "2e32a6d48972b2c1976ed5d8967145b6cec4a4a9",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1",[m
[32m+[m[32m                "phpdocumentor/reflection-common": "^2.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "ext-tokenizer": "^7.1",[m
[32m+[m[32m                "mockery/mockery": "~1",[m
[32m+[m[32m                "phpunit/phpunit": "^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "phpDocumentor\\Reflection\\": "src"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Mike van Riel",[m
[32m+[m[32m                    "email": "me@mikevanriel.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "A PSR-5 based resolver of Class names, Types and Structural Element Names",[m
[32m+[m[32m            "time": "2019-08-22T18:11:29+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phpspec/prophecy",[m
[32m+[m[32m            "version": "1.10.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/phpspec/prophecy.git",[m
[32m+[m[32m                "reference": "cbe1df668b3fe136bcc909126a0f529a78d4cbbc"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/phpspec/prophecy/zipball/cbe1df668b3fe136bcc909126a0f529a78d4cbbc",[m
[32m+[m[32m                "reference": "cbe1df668b3fe136bcc909126a0f529a78d4cbbc",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "doctrine/instantiator": "^1.0.2",[m
[32m+[m[32m                "php": "^5.3|^7.0",[m
[32m+[m[32m                "phpdocumentor/reflection-docblock": "^2.0|^3.0.2|^4.0|^5.0",[m
[32m+[m[32m                "sebastian/comparator": "^1.2.3|^2.0|^3.0",[m
[32m+[m[32m                "sebastian/recursion-context": "^1.0|^2.0|^3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpspec/phpspec": "^2.5 || ^3.2",[m
[32m+[m[32m                "phpunit/phpunit": "^4.8.35 || ^5.7 || ^6.5 || ^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.10.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Prophecy\\": "src/Prophecy"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Konstantin Kudryashov",[m
[32m+[m[32m                    "email": "ever.zet@gmail.com",[m
[32m+[m[32m                    "homepage": "http://everzet.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Marcello Duarte",[m
[32m+[m[32m                    "email": "marcello.duarte@gmail.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Highly opinionated mocking framework for PHP 5.3+",[m
[32m+[m[32m            "homepage": "https://github.com/phpspec/prophecy",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "Double",[m
[32m+[m[32m                "Dummy",[m
[32m+[m[32m                "fake",[m
[32m+[m[32m                "mock",[m
[32m+[m[32m                "spy",[m
[32m+[m[32m                "stub"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-12-22T21:05:45+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phpunit/php-code-coverage",[m
[32m+[m[32m            "version": "6.1.4",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/php-code-coverage.git",[m
[32m+[m[32m                "reference": "807e6013b00af69b6c5d9ceb4282d0393dbb9d8d"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/807e6013b00af69b6c5d9ceb4282d0393dbb9d8d",[m
[32m+[m[32m                "reference": "807e6013b00af69b6c5d9ceb4282d0393dbb9d8d",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "ext-dom": "*",[m
[32m+[m[32m                "ext-xmlwriter": "*",[m
[32m+[m[32m                "php": "^7.1",[m
[32m+[m[32m                "phpunit/php-file-iterator": "^2.0",[m
[32m+[m[32m                "phpunit/php-text-template": "^1.2.1",[m
[32m+[m[32m                "phpunit/php-token-stream": "^3.0",[m
[32m+[m[32m                "sebastian/code-unit-reverse-lookup": "^1.0.1",[m
[32m+[m[32m                "sebastian/environment": "^3.1 || ^4.0",[m
[32m+[m[32m                "sebastian/version": "^2.0.1",[m
[32m+[m[32m                "theseer/tokenizer": "^1.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-xdebug": "^2.6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "6.1-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de",[m
[32m+[m[32m                    "role": "lead"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Library that provides collection, processing, and rendering functionality for PHP code coverage information.",[m
[32m+[m[32m            "homepage": "https://github.com/sebastianbergmann/php-code-coverage",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "coverage",[m
[32m+[m[32m                "testing",[m
[32m+[m[32m                "xunit"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2018-10-31T16:06:48+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phpunit/php-file-iterator",[m
[32m+[m[32m            "version": "2.0.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/php-file-iterator.git",[m
[32m+[m[32m                "reference": "050bedf145a257b1ff02746c31894800e5122946"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/050bedf145a257b1ff02746c31894800e5122946",[m
[32m+[m[32m                "reference": "050bedf145a257b1ff02746c31894800e5122946",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.0.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de",[m
[32m+[m[32m                    "role": "lead"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "FilterIterator implementation that filters files based on a list of suffixes.",[m
[32m+[m[32m            "homepage": "https://github.com/sebastianbergmann/php-file-iterator/",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "filesystem",[m
[32m+[m[32m                "iterator"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2018-09-13T20:33:42+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phpunit/php-text-template",[m
[32m+[m[32m            "version": "1.2.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/php-text-template.git",[m
[32m+[m[32m                "reference": "31f8b717e51d9a2afca6c9f046f5d69fc27c8686"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/31f8b717e51d9a2afca6c9f046f5d69fc27c8686",[m
[32m+[m[32m                "reference": "31f8b717e51d9a2afca6c9f046f5d69fc27c8686",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de",[m
[32m+[m[32m                    "role": "lead"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Simple template engine.",[m
[32m+[m[32m            "homepage": "https://github.com/sebastianbergmann/php-text-template/",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "template"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2015-06-21T13:50:34+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phpunit/php-timer",[m
[32m+[m[32m            "version": "2.1.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/php-timer.git",[m
[32m+[m[32m                "reference": "1038454804406b0b5f5f520358e78c1c2f71501e"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/1038454804406b0b5f5f520358e78c1c2f71501e",[m
[32m+[m[32m                "reference": "1038454804406b0b5f5f520358e78c1c2f71501e",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.1-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de",[m
[32m+[m[32m                    "role": "lead"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Utility class for timing",[m
[32m+[m[32m            "homepage": "https://github.com/sebastianbergmann/php-timer/",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "timer"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-06-07T04:22:29+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phpunit/php-token-stream",[m
[32m+[m[32m            "version": "3.1.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/php-token-stream.git",[m
[32m+[m[32m                "reference": "995192df77f63a59e47f025390d2d1fdf8f425ff"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/php-token-stream/zipball/995192df77f63a59e47f025390d2d1fdf8f425ff",[m
[32m+[m[32m                "reference": "995192df77f63a59e47f025390d2d1fdf8f425ff",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "ext-tokenizer": "*",[m
[32m+[m[32m                "php": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.1-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Wrapper around PHP's tokenizer extension.",[m
[32m+[m[32m            "homepage": "https://github.com/sebastianbergmann/php-token-stream/",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "tokenizer"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-09-17T06:23:10+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "phpunit/phpunit",[m
[32m+[m[32m            "version": "7.5.20",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/phpunit.git",[m
[32m+[m[32m                "reference": "9467db479d1b0487c99733bb1e7944d32deded2c"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/9467db479d1b0487c99733bb1e7944d32deded2c",[m
[32m+[m[32m                "reference": "9467db479d1b0487c99733bb1e7944d32deded2c",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "doctrine/instantiator": "^1.1",[m
[32m+[m[32m                "ext-dom": "*",[m
[32m+[m[32m                "ext-json": "*",[m
[32m+[m[32m                "ext-libxml": "*",[m
[32m+[m[32m                "ext-mbstring": "*",[m
[32m+[m[32m                "ext-xml": "*",[m
[32m+[m[32m                "myclabs/deep-copy": "^1.7",[m
[32m+[m[32m                "phar-io/manifest": "^1.0.2",[m
[32m+[m[32m                "phar-io/version": "^2.0",[m
[32m+[m[32m                "php": "^7.1",[m
[32m+[m[32m                "phpspec/prophecy": "^1.7",[m
[32m+[m[32m                "phpunit/php-code-coverage": "^6.0.7",[m
[32m+[m[32m                "phpunit/php-file-iterator": "^2.0.1",[m
[32m+[m[32m                "phpunit/php-text-template": "^1.2.1",[m
[32m+[m[32m                "phpunit/php-timer": "^2.1",[m
[32m+[m[32m                "sebastian/comparator": "^3.0",[m
[32m+[m[32m                "sebastian/diff": "^3.0",[m
[32m+[m[32m                "sebastian/environment": "^4.0",[m
[32m+[m[32m                "sebastian/exporter": "^3.1",[m
[32m+[m[32m                "sebastian/global-state": "^2.0",[m
[32m+[m[32m                "sebastian/object-enumerator": "^3.0.3",[m
[32m+[m[32m                "sebastian/resource-operations": "^2.0",[m
[32m+[m[32m                "sebastian/version": "^2.0.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "phpunit/phpunit-mock-objects": "*"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "ext-pdo": "*"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-soap": "*",[m
[32m+[m[32m                "ext-xdebug": "*",[m
[32m+[m[32m                "phpunit/php-invoker": "^2.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "bin": [[m
[32m+[m[32m                "phpunit"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "7.5-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de",[m
[32m+[m[32m                    "role": "lead"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "The PHP Unit Testing framework.",[m
[32m+[m[32m            "homepage": "https://phpunit.de/",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "phpunit",[m
[32m+[m[32m                "testing",[m
[32m+[m[32m                "xunit"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2020-01-08T08:45:45+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "sebastian/code-unit-reverse-lookup",[m
[32m+[m[32m            "version": "1.0.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/code-unit-reverse-lookup.git",[m
[32m+[m[32m                "reference": "4419fcdb5eabb9caa61a27c7a1db532a6b55dd18"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/4419fcdb5eabb9caa61a27c7a1db532a6b55dd18",[m
[32m+[m[32m                "reference": "4419fcdb5eabb9caa61a27c7a1db532a6b55dd18",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^5.6 || ^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^5.7 || ^6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.0.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Looks up which function or method a line of code belongs to",[m
[32m+[m[32m            "homepage": "https://github.com/sebastianbergmann/code-unit-reverse-lookup/",[m
[32m+[m[32m            "time": "2017-03-04T06:30:41+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "sebastian/comparator",[m
[32m+[m[32m            "version": "3.0.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/comparator.git",[m
[32m+[m[32m                "reference": "5de4fc177adf9bce8df98d8d141a7559d7ccf6da"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/comparator/zipball/5de4fc177adf9bce8df98d8d141a7559d7ccf6da",[m
[32m+[m[32m                "reference": "5de4fc177adf9bce8df98d8d141a7559d7ccf6da",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1",[m
[32m+[m[32m                "sebastian/diff": "^3.0",[m
[32m+[m[32m                "sebastian/exporter": "^3.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.0-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Jeff Welch",[m
[32m+[m[32m                    "email": "whatthejeff@gmail.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Volker Dusch",[m
[32m+[m[32m                    "email": "github@wallbash.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Bernhard Schussek",[m
[32m+[m[32m                    "email": "bschussek@2bepublished.at"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Provides the functionality to compare PHP values for equality",[m
[32m+[m[32m            "homepage": "https://github.com/sebastianbergmann/comparator",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "comparator",[m
[32m+[m[32m                "compare",[m
[32m+[m[32m                "equality"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2018-07-12T15:12:46+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "sebastian/diff",[m
[32m+[m[32m            "version": "3.0.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/diff.git",[m
[32m+[m[32m                "reference": "720fcc7e9b5cf384ea68d9d930d480907a0c1a29"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/diff/zipball/720fcc7e9b5cf384ea68d9d930d480907a0c1a29",[m
[32m+[m[32m                "reference": "720fcc7e9b5cf384ea68d9d930d480907a0c1a29",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^7.5 || ^8.0",[m
[32m+[m[32m                "symfony/process": "^2 || ^3.3 || ^4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.0-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Kore Nordmann",[m
[32m+[m[32m                    "email": "mail@kore-nordmann.de"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Diff implementation",[m
[32m+[m[32m            "homepage": "https://github.com/sebastianbergmann/diff",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "diff",[m
[32m+[m[32m                "udiff",[m
[32m+[m[32m                "unidiff",[m
[32m+[m[32m                "unified diff"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-02-04T06:01:07+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "sebastian/environment",[m
[32m+[m[32m            "version": "4.2.3",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/environment.git",[m
[32m+[m[32m                "reference": "464c90d7bdf5ad4e8a6aea15c091fec0603d4368"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/environment/zipball/464c90d7bdf5ad4e8a6aea15c091fec0603d4368",[m
[32m+[m[32m                "reference": "464c90d7bdf5ad4e8a6aea15c091fec0603d4368",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^7.5"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-posix": "*"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "4.2-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Provides functionality to handle HHVM/PHP environments",[m
[32m+[m[32m            "homepage": "http://www.github.com/sebastianbergmann/environment",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "Xdebug",[m
[32m+[m[32m                "environment",[m
[32m+[m[32m                "hhvm"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-20T08:46:58+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "sebastian/exporter",[m
[32m+[m[32m            "version": "3.1.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/exporter.git",[m
[32m+[m[32m                "reference": "68609e1261d215ea5b21b7987539cbfbe156ec3e"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/exporter/zipball/68609e1261d215ea5b21b7987539cbfbe156ec3e",[m
[32m+[m[32m                "reference": "68609e1261d215ea5b21b7987539cbfbe156ec3e",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.0",[m
[32m+[m[32m                "sebastian/recursion-context": "^3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "ext-mbstring": "*",[m
[32m+[m[32m                "phpunit/phpunit": "^6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.1.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Jeff Welch",[m
[32m+[m[32m                    "email": "whatthejeff@gmail.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Volker Dusch",[m
[32m+[m[32m                    "email": "github@wallbash.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Adam Harvey",[m
[32m+[m[32m                    "email": "aharvey@php.net"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Bernhard Schussek",[m
[32m+[m[32m                    "email": "bschussek@gmail.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Provides the functionality to export PHP variables for visualization",[m
[32m+[m[32m            "homepage": "http://www.github.com/sebastianbergmann/exporter",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "export",[m
[32m+[m[32m                "exporter"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-09-14T09:02:43+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "sebastian/global-state",[m
[32m+[m[32m            "version": "2.0.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/global-state.git",[m
[32m+[m[32m                "reference": "e8ba02eed7bbbb9e59e43dedd3dddeff4a56b0c4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/global-state/zipball/e8ba02eed7bbbb9e59e43dedd3dddeff4a56b0c4",[m
[32m+[m[32m                "reference": "e8ba02eed7bbbb9e59e43dedd3dddeff4a56b0c4",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-uopz": "*"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.0-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Snapshotting of global state",[m
[32m+[m[32m            "homepage": "http://www.github.com/sebastianbergmann/global-state",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "global state"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2017-04-27T15:39:26+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "sebastian/object-enumerator",[m
[32m+[m[32m            "version": "3.0.3",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/object-enumerator.git",[m
[32m+[m[32m                "reference": "7cfd9e65d11ffb5af41198476395774d4c8a84c5"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/7cfd9e65d11ffb5af41198476395774d4c8a84c5",[m
[32m+[m[32m                "reference": "7cfd9e65d11ffb5af41198476395774d4c8a84c5",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.0",[m
[32m+[m[32m                "sebastian/object-reflector": "^1.1.1",[m
[32m+[m[32m                "sebastian/recursion-context": "^3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.0.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Traverses array structures and object graphs to enumerate all referenced objects",[m
[32m+[m[32m            "homepage": "https://github.com/sebastianbergmann/object-enumerator/",[m
[32m+[m[32m            "time": "2017-08-03T12:35:26+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "sebastian/object-reflector",[m
[32m+[m[32m            "version": "1.1.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/object-reflector.git",[m
[32m+[m[32m                "reference": "773f97c67f28de00d397be301821b06708fca0be"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/773f97c67f28de00d397be301821b06708fca0be",[m
[32m+[m[32m                "reference": "773f97c67f28de00d397be301821b06708fca0be",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.1-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Allows reflection of object attributes, including inherited and non-public ones",[m
[32m+[m[32m            "homepage": "https://github.com/sebastianbergmann/object-reflector/",[m
[32m+[m[32m            "time": "2017-03-29T09:07:27+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "sebastian/recursion-context",[m
[32m+[m[32m            "version": "3.0.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/recursion-context.git",[m
[32m+[m[32m                "reference": "5b0cd723502bac3b006cbf3dbf7a1e3fcefe4fa8"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/5b0cd723502bac3b006cbf3dbf7a1e3fcefe4fa8",[m
[32m+[m[32m                "reference": "5b0cd723502bac3b006cbf3dbf7a1e3fcefe4fa8",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.0.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Jeff Welch",[m
[32m+[m[32m                    "email": "whatthejeff@gmail.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Adam Harvey",[m
[32m+[m[32m                    "email": "aharvey@php.net"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Provides functionality to recursively process PHP variables",[m
[32m+[m[32m            "homepage": "http://www.github.com/sebastianbergmann/recursion-context",[m
[32m+[m[32m            "time": "2017-03-03T06:23:57+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "sebastian/resource-operations",[m
[32m+[m[32m            "version": "2.0.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/resource-operations.git",[m
[32m+[m[32m                "reference": "4d7a795d35b889bf80a0cc04e08d77cedfa917a9"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/4d7a795d35b889bf80a0cc04e08d77cedfa917a9",[m
[32m+[m[32m                "reference": "4d7a795d35b889bf80a0cc04e08d77cedfa917a9",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^7.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.0-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Provides a list of PHP built-in functions that operate on resources",[m
[32m+[m[32m            "homepage": "https://www.github.com/sebastianbergmann/resource-operations",[m
[32m+[m[32m            "time": "2018-10-04T04:07:39+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "sebastian/version",[m
[32m+[m[32m            "version": "2.0.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/sebastianbergmann/version.git",[m
[32m+[m[32m                "reference": "99732be0ddb3361e16ad77b68ba41efc8e979019"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/sebastianbergmann/version/zipball/99732be0ddb3361e16ad77b68ba41efc8e979019",[m
[32m+[m[32m                "reference": "99732be0ddb3361e16ad77b68ba41efc8e979019",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.6"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "2.0.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Sebastian Bergmann",[m
[32m+[m[32m                    "email": "sebastian@phpunit.de",[m
[32m+[m[32m                    "role": "lead"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Library that helps with managing the version number of Git-hosted PHP projects",[m
[32m+[m[32m            "homepage": "https://github.com/sebastianbergmann/version",[m
[32m+[m[32m            "time": "2016-10-03T07:35:21+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "theseer/tokenizer",[m
[32m+[m[32m            "version": "1.1.3",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/theseer/tokenizer.git",[m
[32m+[m[32m                "reference": "11336f6f84e16a720dae9d8e6ed5019efa85a0f9"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/theseer/tokenizer/zipball/11336f6f84e16a720dae9d8e6ed5019efa85a0f9",[m
[32m+[m[32m                "reference": "11336f6f84e16a720dae9d8e6ed5019efa85a0f9",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "ext-dom": "*",[m
[32m+[m[32m                "ext-tokenizer": "*",[m
[32m+[m[32m                "ext-xmlwriter": "*",[m
[32m+[m[32m                "php": "^7.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "classmap": [[m
[32m+[m[32m                    "src/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Arne Blankerts",[m
[32m+[m[32m                    "email": "arne@blankerts.de",[m
[32m+[m[32m                    "role": "Developer"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "A small library for converting tokenized PHP source code into XML and potentially other formats",[m
[32m+[m[32m            "time": "2019-06-13T22:48:21+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "webmozart/assert",[m
[32m+[m[32m            "version": "1.6.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/webmozart/assert.git",[m
[32m+[m[32m                "reference": "573381c0a64f155a0d9a23f4b0c797194805b925"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/webmozart/assert/zipball/573381c0a64f155a0d9a23f4b0c797194805b925",[m
[32m+[m[32m                "reference": "573381c0a64f155a0d9a23f4b0c797194805b925",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": "^5.3.3 || ^7.0",[m
[32m+[m[32m                "symfony/polyfill-ctype": "^1.8"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "vimeo/psalm": "<3.6.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "phpunit/phpunit": "^4.8.36 || ^7.5.13"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Webmozart\\Assert\\": "src/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Bernhard Schussek",[m
[32m+[m[32m                    "email": "bschussek@gmail.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Assertions to validate method input/output with nice error messages.",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "assert",[m
[32m+[m[32m                "check",[m
[32m+[m[32m                "validate"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2019-11-24T13:36:37+00:00"[m
[32m+[m[32m        }[m
[32m+[m[32m    ],[m
[32m+[m[32m    "aliases": [],[m
[32m+[m[32m    "minimum-stability": "dev",[m
[32m+[m[32m    "stability-flags": [],[m
[32m+[m[32m    "prefer-stable": true,[m
[32m+[m[32m    "prefer-lowest": false,[m
[32m+[m[32m    "platform": {[m
[32m+[m[32m        "php": "^7.1.3"[m
[32m+[m[32m    },[m
[32m+[m[32m    "platform-dev": [][m
[32m+[m[32m}[m
[1mdiff --git a/config/app.php b/config/app.php[m
[1mnew file mode 100644[m
[1mindex 0000000..c9960cd[m
[1m--- /dev/null[m
[1m+++ b/config/app.php[m
[36m@@ -0,0 +1,231 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Application Name[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This value is the name of your application. This value is used when the[m
[32m+[m[32m    | framework needs to place the application's name in a notification or[m
[32m+[m[32m    | any other location as required by the application or its packages.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'name' => env('APP_NAME', 'Laravel'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Application Environment[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This value determines the "environment" your application is currently[m
[32m+[m[32m    | running in. This may determine how you prefer to configure various[m
[32m+[m[32m    | services the application utilizes. Set this in your ".env" file.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'env' => env('APP_ENV', 'production'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Application Debug Mode[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | When your application is in debug mode, detailed error messages with[m
[32m+[m[32m    | stack traces will be shown on every error that occurs within your[m
[32m+[m[32m    | application. If disabled, a simple generic error page is shown.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'debug' => env('APP_DEBUG', false),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Application URL[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This URL is used by the console to properly generate URLs when using[m
[32m+[m[32m    | the Artisan command line tool. You should set this to the root of[m
[32m+[m[32m    | your application so that it is used when running Artisan tasks.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'url' => env('APP_URL', 'http://localhost'),[m
[32m+[m
[32m+[m[32m    'asset_url' => env('ASSET_URL', null),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Application Timezone[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may specify the default timezone for your application, which[m
[32m+[m[32m    | will be used by the PHP date and date-time functions. We have gone[m
[32m+[m[32m    | ahead and set this to a sensible default for you out of the box.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'timezone' => 'UTC',[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Application Locale Configuration[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | The application locale determines the default locale that will be used[m
[32m+[m[32m    | by the translation service provider. You are free to set this value[m
[32m+[m[32m    | to any of the locales which will be supported by the application.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'locale' => 'en',[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Application Fallback Locale[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | The fallback locale determines the locale to use when the current one[m
[32m+[m[32m    | is not available. You may change the value to correspond to any of[m
[32m+[m[32m    | the language folders that are provided through your application.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'fallback_locale' => 'en',[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Faker Locale[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This locale will be used by the Faker PHP library when generating fake[m
[32m+[m[32m    | data for your database seeds. For example, this will be used to get[m
[32m+[m[32m    | localized telephone numbers, street address information and more.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'faker_locale' => 'en_US',[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Encryption Key[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This key is used by the Illuminate encrypter service and should be set[m
[32m+[m[32m    | to a random, 32 character string, otherwise these encrypted strings[m
[32m+[m[32m    | will not be safe. Please do this before deploying an application![m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'key' => env('APP_KEY'),[m
[32m+[m
[32m+[m[32m    'cipher' => 'AES-256-CBC',[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Autoloaded Service Providers[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | The service providers listed here will be automatically loaded on the[m
[32m+[m[32m    | request to your application. Feel free to add your own services to[m
[32m+[m[32m    | this array to grant expanded functionality to your applications.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'providers' => [[m
[32m+[m
[32m+[m[32m        /*[m
[32m+[m[32m         * Laravel Framework Service Providers...[m
[32m+[m[32m         */[m
[32m+[m[32m        Illuminate\Auth\AuthServiceProvider::class,[m
[32m+[m[32m        Illuminate\Broadcasting\BroadcastServiceProvider::class,[m
[32m+[m[32m        Illuminate\Bus\BusServiceProvider::class,[m
[32m+[m[32m        Illuminate\Cache\CacheServiceProvider::class,[m
[32m+[m[32m        Illuminate\Foundation\Providers\ConsoleSupportServiceProvider::class,[m
[32m+[m[32m        Illuminate\Cookie\CookieServiceProvider::class,[m
[32m+[m[32m        Illuminate\Database\DatabaseServiceProvider::class,[m
[32m+[m[32m        Illuminate\Encryption\EncryptionServiceProvider::class,[m
[32m+[m[32m        Illuminate\Filesystem\FilesystemServiceProvider::class,[m
[32m+[m[32m        Illuminate\Foundation\Providers\FoundationServiceProvider::class,[m
[32m+[m[32m        Illuminate\Hashing\HashServiceProvider::class,[m
[32m+[m[32m        Illuminate\Mail\MailServiceProvider::class,[m
[32m+[m[32m        Illuminate\Notifications\NotificationServiceProvider::class,[m
[32m+[m[32m        Illuminate\Pagination\PaginationServiceProvider::class,[m
[32m+[m[32m        Illuminate\Pipeline\PipelineServiceProvider::class,[m
[32m+[m[32m        Illuminate\Queue\QueueServiceProvider::class,[m
[32m+[m[32m        Illuminate\Redis\RedisServiceProvider::class,[m
[32m+[m[32m        Illuminate\Auth\Passwords\PasswordResetServiceProvider::class,[m
[32m+[m[32m        Illuminate\Session\SessionServiceProvider::class,[m
[32m+[m[32m        Illuminate\Translation\TranslationServiceProvider::class,[m
[32m+[m[32m        Illuminate\Validation\ValidationServiceProvider::class,[m
[32m+[m[32m        Illuminate\View\ViewServiceProvider::class,[m
[32m+[m
[32m+[m[32m        /*[m
[32m+[m[32m         * Package Service Providers...[m
[32m+[m[32m         */[m
[32m+[m
[32m+[m[32m        /*[m
[32m+[m[32m         * Application Service Providers...[m
[32m+[m[32m         */[m
[32m+[m[32m        App\Providers\AppServiceProvider::class,[m
[32m+[m[32m        App\Providers\AuthServiceProvider::class,[m
[32m+[m[32m        // App\Providers\BroadcastServiceProvider::class,[m
[32m+[m[32m        App\Providers\EventServiceProvider::class,[m
[32m+[m[32m        App\Providers\RouteServiceProvider::class,[m
[32m+[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Class Aliases[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This array of class aliases will be registered when this application[m
[32m+[m[32m    | is started. However, feel free to register as many as you wish as[m
[32m+[m[32m    | the aliases are "lazy" loaded so they don't hinder performance.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'aliases' => [[m
[32m+[m
[32m+[m[32m        'App' => Illuminate\Support\Facades\App::class,[m
[32m+[m[32m        'Arr' => Illuminate\Support\Arr::class,[m
[32m+[m[32m        'Artisan' => Illuminate\Support\Facades\Artisan::class,[m
[32m+[m[32m        'Auth' => Illuminate\Support\Facades\Auth::class,[m
[32m+[m[32m        'Blade' => Illuminate\Support\Facades\Blade::class,[m
[32m+[m[32m        'Broadcast' => Illuminate\Support\Facades\Broadcast::class,[m
[32m+[m[32m        'Bus' => Illuminate\Support\Facades\Bus::class,[m
[32m+[m[32m        'Cache' => Illuminate\Support\Facades\Cache::class,[m
[32m+[m[32m        'Config' => Illuminate\Support\Facades\Config::class,[m
[32m+[m[32m        'Cookie' => Illuminate\Support\Facades\Cookie::class,[m
[32m+[m[32m        'Crypt' => Illuminate\Support\Facades\Crypt::class,[m
[32m+[m[32m        'DB' => Illuminate\Support\Facades\DB::class,[m
[32m+[m[32m        'Eloquent' => Illuminate\Database\Eloquent\Model::class,[m
[32m+[m[32m        'Event' => Illuminate\Support\Facades\Event::class,[m
[32m+[m[32m        'File' => Illuminate\Support\Facades\File::class,[m
[32m+[m[32m        'Gate' => Illuminate\Support\Facades\Gate::class,[m
[32m+[m[32m        'Hash' => Illuminate\Support\Facades\Hash::class,[m
[32m+[m[32m        'Lang' => Illuminate\Support\Facades\Lang::class,[m
[32m+[m[32m        'Log' => Illuminate\Support\Facades\Log::class,[m
[32m+[m[32m        'Mail' => Illuminate\Support\Facades\Mail::class,[m
[32m+[m[32m        'Notification' => Illuminate\Support\Facades\Notification::class,[m
[32m+[m[32m        'Password' => Illuminate\Support\Facades\Password::class,[m
[32m+[m[32m        'Queue' => Illuminate\Support\Facades\Queue::class,[m
[32m+[m[32m        'Redirect' => Illuminate\Support\Facades\Redirect::class,[m
[32m+[m[32m        'Redis' => Illuminate\Support\Facades\Redis::class,[m
[32m+[m[32m        'Request' => Illuminate\Support\Facades\Request::class,[m
[32m+[m[32m        'Response' => Illuminate\Support\Facades\Response::class,[m
[32m+[m[32m        'Route' => Illuminate\Support\Facades\Route::class,[m
[32m+[m[32m        'Schema' => Illuminate\Support\Facades\Schema::class,[m
[32m+[m[32m        'Session' => Illuminate\Support\Facades\Session::class,[m
[32m+[m[32m        'Storage' => Illuminate\Support\Facades\Storage::class,[m
[32m+[m[32m        'Str' => Illuminate\Support\Str::class,[m
[32m+[m[32m        'URL' => Illuminate\Support\Facades\URL::class,[m
[32m+[m[32m        'Validator' => Illuminate\Support\Facades\Validator::class,[m
[32m+[m[32m        'View' => Illuminate\Support\Facades\View::class,[m
[32m+[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/auth.php b/config/auth.php[m
[1mnew file mode 100644[m
[1mindex 0000000..897dc82[m
[1m--- /dev/null[m
[1m+++ b/config/auth.php[m
[36m@@ -0,0 +1,103 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Authentication Defaults[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This option controls the default authentication "guard" and password[m
[32m+[m[32m    | reset options for your application. You may change these defaults[m
[32m+[m[32m    | as required, but they're a perfect start for most applications.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'defaults' => [[m
[32m+[m[32m        'guard' => 'web',[m
[32m+[m[32m        'passwords' => 'users',[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Authentication Guards[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Next, you may define every authentication guard for your application.[m
[32m+[m[32m    | Of course, a great default configuration has been defined for you[m
[32m+[m[32m    | here which uses session storage and the Eloquent user provider.[m
[32m+[m[32m    |[m
[32m+[m[32m    | All authentication drivers have a user provider. This defines how the[m
[32m+[m[32m    | users are actually retrieved out of your database or other storage[m
[32m+[m[32m    | mechanisms used by this application to persist your user's data.[m
[32m+[m[32m    |[m
[32m+[m[32m    | Supported: "session", "token"[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'guards' => [[m
[32m+[m[32m        'web' => [[m
[32m+[m[32m            'driver' => 'session',[m
[32m+[m[32m            'provider' => 'users',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'api' => [[m
[32m+[m[32m            'driver' => 'token',[m
[32m+[m[32m            'provider' => 'users',[m
[32m+[m[32m            'hash' => false,[m
[32m+[m[32m        ],[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | User Providers[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | All authentication drivers have a user provider. This defines how the[m
[32m+[m[32m    | users are actually retrieved out of your database or other storage[m
[32m+[m[32m    | mechanisms used by this application to persist your user's data.[m
[32m+[m[32m    |[m
[32m+[m[32m    | If you have multiple user tables or models you may configure multiple[m
[32m+[m[32m    | sources which represent each model / table. These sources may then[m
[32m+[m[32m    | be assigned to any extra authentication guards you have defined.[m
[32m+[m[32m    |[m
[32m+[m[32m    | Supported: "database", "eloquent"[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'providers' => [[m
[32m+[m[32m        'users' => [[m
[32m+[m[32m            'driver' => 'eloquent',[m
[32m+[m[32m            'model' => App\User::class,[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        // 'users' => [[m
[32m+[m[32m        //     'driver' => 'database',[m
[32m+[m[32m        //     'table' => 'users',[m
[32m+[m[32m        // ],[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Resetting Passwords[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | You may specify multiple password reset configurations if you have more[m
[32m+[m[32m    | than one user table or model in the application and you want to have[m
[32m+[m[32m    | separate password reset settings based on the specific user types.[m
[32m+[m[32m    |[m
[32m+[m[32m    | The expire time is the number of minutes that the reset token should be[m
[32m+[m[32m    | considered valid. This security feature keeps tokens short-lived so[m
[32m+[m[32m    | they have less time to be guessed. You may change this as needed.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'passwords' => [[m
[32m+[m[32m        'users' => [[m
[32m+[m[32m            'provider' => 'users',[m
[32m+[m[32m            'table' => 'password_resets',[m
[32m+[m[32m            'expire' => 60,[m
[32m+[m[32m        ],[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/broadcasting.php b/config/broadcasting.php[m
[1mnew file mode 100644[m
[1mindex 0000000..3bba110[m
[1m--- /dev/null[m
[1m+++ b/config/broadcasting.php[m
[36m@@ -0,0 +1,59 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Default Broadcaster[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This option controls the default broadcaster that will be used by the[m
[32m+[m[32m    | framework when an event needs to be broadcast. You may set this to[m
[32m+[m[32m    | any of the connections defined in the "connections" array below.[m
[32m+[m[32m    |[m
[32m+[m[32m    | Supported: "pusher", "redis", "log", "null"[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'default' => env('BROADCAST_DRIVER', 'null'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Broadcast Connections[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may define all of the broadcast connections that will be used[m
[32m+[m[32m    | to broadcast events to other systems or over websockets. Samples of[m
[32m+[m[32m    | each available type of connection are provided inside this array.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'connections' => [[m
[32m+[m
[32m+[m[32m        'pusher' => [[m
[32m+[m[32m            'driver' => 'pusher',[m
[32m+[m[32m            'key' => env('PUSHER_APP_KEY'),[m
[32m+[m[32m            'secret' => env('PUSHER_APP_SECRET'),[m
[32m+[m[32m            'app_id' => env('PUSHER_APP_ID'),[m
[32m+[m[32m            'options' => [[m
[32m+[m[32m                'cluster' => env('PUSHER_APP_CLUSTER'),[m
[32m+[m[32m                'useTLS' => true,[m
[32m+[m[32m            ],[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'redis' => [[m
[32m+[m[32m            'driver' => 'redis',[m
[32m+[m[32m            'connection' => 'default',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'log' => [[m
[32m+[m[32m            'driver' => 'log',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'null' => [[m
[32m+[m[32m            'driver' => 'null',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/cache.php b/config/cache.php[m
[1mnew file mode 100644[m
[1mindex 0000000..46751e6[m
[1m--- /dev/null[m
[1m+++ b/config/cache.php[m
[36m@@ -0,0 +1,103 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32muse Illuminate\Support\Str;[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Default Cache Store[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This option controls the default cache connection that gets used while[m
[32m+[m[32m    | using this caching library. This connection is used when another is[m
[32m+[m[32m    | not explicitly specified when executing a given caching function.[m
[32m+[m[32m    |[m
[32m+[m[32m    | Supported: "apc", "array", "database", "file",[m
[32m+[m[32m    |            "memcached", "redis", "dynamodb"[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'default' => env('CACHE_DRIVER', 'file'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Cache Stores[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may define all of the cache "stores" for your application as[m
[32m+[m[32m    | well as their drivers. You may even define multiple stores for the[m
[32m+[m[32m    | same cache driver to group types of items stored in your caches.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'stores' => [[m
[32m+[m
[32m+[m[32m        'apc' => [[m
[32m+[m[32m            'driver' => 'apc',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'array' => [[m
[32m+[m[32m            'driver' => 'array',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'database' => [[m
[32m+[m[32m            'driver' => 'database',[m
[32m+[m[32m            'table' => 'cache',[m
[32m+[m[32m            'connection' => null,[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'file' => [[m
[32m+[m[32m            'driver' => 'file',[m
[32m+[m[32m            'path' => storage_path('framework/cache/data'),[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'memcached' => [[m
[32m+[m[32m            'driver' => 'memcached',[m
[32m+[m[32m            'persistent_id' => env('MEMCACHED_PERSISTENT_ID'),[m
[32m+[m[32m            'sasl' => [[m
[32m+[m[32m                env('MEMCACHED_USERNAME'),[m
[32m+[m[32m                env('MEMCACHED_PASSWORD'),[m
[32m+[m[32m            ],[m
[32m+[m[32m            'options' => [[m
[32m+[m[32m                // Memcached::OPT_CONNECT_TIMEOUT => 2000,[m
[32m+[m[32m            ],[m
[32m+[m[32m            'servers' => [[m
[32m+[m[32m                [[m
[32m+[m[32m                    'host' => env('MEMCACHED_HOST', '127.0.0.1'),[m
[32m+[m[32m                    'port' => env('MEMCACHED_PORT', 11211),[m
[32m+[m[32m                    'weight' => 100,[m
[32m+[m[32m                ],[m
[32m+[m[32m            ],[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'redis' => [[m
[32m+[m[32m            'driver' => 'redis',[m
[32m+[m[32m            'connection' => 'cache',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'dynamodb' => [[m
[32m+[m[32m            'driver' => 'dynamodb',[m
[32m+[m[32m            'key' => env('AWS_ACCESS_KEY_ID'),[m
[32m+[m[32m            'secret' => env('AWS_SECRET_ACCESS_KEY'),[m
[32m+[m[32m            'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),[m
[32m+[m[32m            'table' => env('DYNAMODB_CACHE_TABLE', 'cache'),[m
[32m+[m[32m            'endpoint' => env('DYNAMODB_ENDPOINT'),[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Cache Key Prefix[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | When utilizing a RAM based store such as APC or Memcached, there might[m
[32m+[m[32m    | be other applications utilizing the same cache. So, we'll specify a[m
[32m+[m[32m    | value to get prefixed to all our keys so we can avoid collisions.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'prefix' => env('CACHE_PREFIX', Str::slug(env('APP_NAME', 'laravel'), '_').'_cache'),[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/database.php b/config/database.php[m
[1mnew file mode 100644[m
[1mindex 0000000..921769c[m
[1m--- /dev/null[m
[1m+++ b/config/database.php[m
[36m@@ -0,0 +1,147 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32muse Illuminate\Support\Str;[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Default Database Connection Name[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may specify which of the database connections below you wish[m
[32m+[m[32m    | to use as your default connection for all database work. Of course[m
[32m+[m[32m    | you may use many connections at once using the Database library.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'default' => env('DB_CONNECTION', 'mysql'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Database Connections[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here are each of the database connections setup for your application.[m
[32m+[m[32m    | Of course, examples of configuring each database platform that is[m
[32m+[m[32m    | supported by Laravel is shown below to make development simple.[m
[32m+[m[32m    |[m
[32m+[m[32m    |[m
[32m+[m[32m    | All database work in Laravel is done through the PHP PDO facilities[m
[32m+[m[32m    | so make sure you have the driver for your particular database of[m
[32m+[m[32m    | choice installed on your machine before you begin development.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'connections' => [[m
[32m+[m
[32m+[m[32m        'sqlite' => [[m
[32m+[m[32m            'driver' => 'sqlite',[m
[32m+[m[32m            'url' => env('DATABASE_URL'),[m
[32m+[m[32m            'database' => env('DB_DATABASE', database_path('database.sqlite')),[m
[32m+[m[32m            'prefix' => '',[m
[32m+[m[32m            'foreign_key_constraints' => env('DB_FOREIGN_KEYS', true),[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'mysql' => [[m
[32m+[m[32m            'driver' => 'mysql',[m
[32m+[m[32m            'url' => env('DATABASE_URL'),[m
[32m+[m[32m            'host' => env('DB_HOST', '127.0.0.1'),[m
[32m+[m[32m            'port' => env('DB_PORT', '3306'),[m
[32m+[m[32m            'database' => env('DB_DATABASE', 'forge'),[m
[32m+[m[32m            'username' => env('DB_USERNAME', 'forge'),[m
[32m+[m[32m            'password' => env('DB_PASSWORD', ''),[m
[32m+[m[32m            'unix_socket' => env('DB_SOCKET', ''),[m
[32m+[m[32m            'charset' => 'utf8mb4',[m
[32m+[m[32m            'collation' => 'utf8mb4_unicode_ci',[m
[32m+[m[32m            'prefix' => '',[m
[32m+[m[32m            'prefix_indexes' => true,[m
[32m+[m[32m            'strict' => true,[m
[32m+[m[32m            'engine' => null,[m
[32m+[m[32m            'options' => extension_loaded('pdo_mysql') ? array_filter([[m
[32m+[m[32m                PDO::MYSQL_ATTR_SSL_CA => env('MYSQL_ATTR_SSL_CA'),[m
[32m+[m[32m            ]) : [],[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'pgsql' => [[m
[32m+[m[32m            'driver' => 'pgsql',[m
[32m+[m[32m            'url' => env('DATABASE_URL'),[m
[32m+[m[32m            'host' => env('DB_HOST', '127.0.0.1'),[m
[32m+[m[32m            'port' => env('DB_PORT', '5432'),[m
[32m+[m[32m            'database' => env('DB_DATABASE', 'forge'),[m
[32m+[m[32m            'username' => env('DB_USERNAME', 'forge'),[m
[32m+[m[32m            'password' => env('DB_PASSWORD', ''),[m
[32m+[m[32m            'charset' => 'utf8',[m
[32m+[m[32m            'prefix' => '',[m
[32m+[m[32m            'prefix_indexes' => true,[m
[32m+[m[32m            'schema' => 'public',[m
[32m+[m[32m            'sslmode' => 'prefer',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'sqlsrv' => [[m
[32m+[m[32m            'driver' => 'sqlsrv',[m
[32m+[m[32m            'url' => env('DATABASE_URL'),[m
[32m+[m[32m            'host' => env('DB_HOST', 'localhost'),[m
[32m+[m[32m            'port' => env('DB_PORT', '1433'),[m
[32m+[m[32m            'database' => env('DB_DATABASE', 'forge'),[m
[32m+[m[32m            'username' => env('DB_USERNAME', 'forge'),[m
[32m+[m[32m            'password' => env('DB_PASSWORD', ''),[m
[32m+[m[32m            'charset' => 'utf8',[m
[32m+[m[32m            'prefix' => '',[m
[32m+[m[32m            'prefix_indexes' => true,[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Migration Repository Table[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This table keeps track of all the migrations that have already run for[m
[32m+[m[32m    | your application. Using this information, we can determine which of[m
[32m+[m[32m    | the migrations on disk haven't actually been run in the database.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'migrations' => 'migrations',[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Redis Databases[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Redis is an open source, fast, and advanced key-value store that also[m
[32m+[m[32m    | provides a richer body of commands than a typical key-value system[m
[32m+[m[32m    | such as APC or Memcached. Laravel makes it easy to dig right in.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'redis' => [[m
[32m+[m
[32m+[m[32m        'client' => env('REDIS_CLIENT', 'predis'),[m
[32m+[m
[32m+[m[32m        'options' => [[m
[32m+[m[32m            'cluster' => env('REDIS_CLUSTER', 'predis'),[m
[32m+[m[32m            'prefix' => env('REDIS_PREFIX', Str::slug(env('APP_NAME', 'laravel'), '_').'_database_'),[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'default' => [[m
[32m+[m[32m            'url' => env('REDIS_URL'),[m
[32m+[m[32m            'host' => env('REDIS_HOST', '127.0.0.1'),[m
[32m+[m[32m            'password' => env('REDIS_PASSWORD', null),[m
[32m+[m[32m            'port' => env('REDIS_PORT', 6379),[m
[32m+[m[32m            'database' => env('REDIS_DB', 0),[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'cache' => [[m
[32m+[m[32m            'url' => env('REDIS_URL'),[m
[32m+[m[32m            'host' => env('REDIS_HOST', '127.0.0.1'),[m
[32m+[m[32m            'password' => env('REDIS_PASSWORD', null),[m
[32m+[m[32m            'port' => env('REDIS_PORT', 6379),[m
[32m+[m[32m            'database' => env('REDIS_CACHE_DB', 1),[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/filesystems.php b/config/filesystems.php[m
[1mnew file mode 100644[m
[1mindex 0000000..77fa5de[m
[1m--- /dev/null[m
[1m+++ b/config/filesystems.php[m
[36m@@ -0,0 +1,69 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Default Filesystem Disk[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may specify the default filesystem disk that should be used[m
[32m+[m[32m    | by the framework. The "local" disk, as well as a variety of cloud[m
[32m+[m[32m    | based disks are available to your application. Just store away![m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'default' => env('FILESYSTEM_DRIVER', 'local'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Default Cloud Filesystem Disk[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Many applications store files both locally and in the cloud. For this[m
[32m+[m[32m    | reason, you may specify a default "cloud" driver here. This driver[m
[32m+[m[32m    | will be bound as the Cloud disk implementation in the container.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'cloud' => env('FILESYSTEM_CLOUD', 's3'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Filesystem Disks[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may configure as many filesystem "disks" as you wish, and you[m
[32m+[m[32m    | may even configure multiple disks of the same driver. Defaults have[m
[32m+[m[32m    | been setup for each driver as an example of the required options.[m
[32m+[m[32m    |[m
[32m+[m[32m    | Supported Drivers: "local", "ftp", "sftp", "s3", "rackspace"[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'disks' => [[m
[32m+[m
[32m+[m[32m        'local' => [[m
[32m+[m[32m            'driver' => 'local',[m
[32m+[m[32m            'root' => storage_path('app'),[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'public' => [[m
[32m+[m[32m            'driver' => 'local',[m
[32m+[m[32m            'root' => storage_path('app/public'),[m
[32m+[m[32m            'url' => env('APP_URL').'/storage',[m
[32m+[m[32m            'visibility' => 'public',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        's3' => [[m
[32m+[m[32m            'driver' => 's3',[m
[32m+[m[32m            'key' => env('AWS_ACCESS_KEY_ID'),[m
[32m+[m[32m            'secret' => env('AWS_SECRET_ACCESS_KEY'),[m
[32m+[m[32m            'region' => env('AWS_DEFAULT_REGION'),[m
[32m+[m[32m            'bucket' => env('AWS_BUCKET'),[m
[32m+[m[32m            'url' => env('AWS_URL'),[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/hashing.php b/config/hashing.php[m
[1mnew file mode 100644[m
[1mindex 0000000..8425770[m
[1m--- /dev/null[m
[1m+++ b/config/hashing.php[m
[36m@@ -0,0 +1,52 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Default Hash Driver[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This option controls the default hash driver that will be used to hash[m
[32m+[m[32m    | passwords for your application. By default, the bcrypt algorithm is[m
[32m+[m[32m    | used; however, you remain free to modify this option if you wish.[m
[32m+[m[32m    |[m
[32m+[m[32m    | Supported: "bcrypt", "argon", "argon2id"[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'driver' => 'bcrypt',[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Bcrypt Options[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may specify the configuration options that should be used when[m
[32m+[m[32m    | passwords are hashed using the Bcrypt algorithm. This will allow you[m
[32m+[m[32m    | to control the amount of time it takes to hash the given password.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'bcrypt' => [[m
[32m+[m[32m        'rounds' => env('BCRYPT_ROUNDS', 10),[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Argon Options[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may specify the configuration options that should be used when[m
[32m+[m[32m    | passwords are hashed using the Argon algorithm. These will allow you[m
[32m+[m[32m    | to control the amount of time it takes to hash the given password.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'argon' => [[m
[32m+[m[32m        'memory' => 1024,[m
[32m+[m[32m        'threads' => 2,[m
[32m+[m[32m        'time' => 2,[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/logging.php b/config/logging.php[m
[1mnew file mode 100644[m
[1mindex 0000000..d09cd7d[m
[1m--- /dev/null[m
[1m+++ b/config/logging.php[m
[36m@@ -0,0 +1,94 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32muse Monolog\Handler\StreamHandler;[m
[32m+[m[32muse Monolog\Handler\SyslogUdpHandler;[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Default Log Channel[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This option defines the default log channel that gets used when writing[m
[32m+[m[32m    | messages to the logs. The name specified in this option should match[m
[32m+[m[32m    | one of the channels defined in the "channels" configuration array.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'default' => env('LOG_CHANNEL', 'stack'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Log Channels[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may configure the log channels for your application. Out of[m
[32m+[m[32m    | the box, Laravel uses the Monolog PHP logging library. This gives[m
[32m+[m[32m    | you a variety of powerful log handlers / formatters to utilize.[m
[32m+[m[32m    |[m
[32m+[m[32m    | Available Drivers: "single", "daily", "slack", "syslog",[m
[32m+[m[32m    |                    "errorlog", "monolog",[m
[32m+[m[32m    |                    "custom", "stack"[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'channels' => [[m
[32m+[m[32m        'stack' => [[m
[32m+[m[32m            'driver' => 'stack',[m
[32m+[m[32m            'channels' => ['daily'],[m
[32m+[m[32m            'ignore_exceptions' => false,[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'single' => [[m
[32m+[m[32m            'driver' => 'single',[m
[32m+[m[32m            'path' => storage_path('logs/laravel.log'),[m
[32m+[m[32m            'level' => 'debug',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'daily' => [[m
[32m+[m[32m            'driver' => 'daily',[m
[32m+[m[32m            'path' => storage_path('logs/laravel.log'),[m
[32m+[m[32m            'level' => 'debug',[m
[32m+[m[32m            'days' => 14,[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'slack' => [[m
[32m+[m[32m            'driver' => 'slack',[m
[32m+[m[32m            'url' => env('LOG_SLACK_WEBHOOK_URL'),[m
[32m+[m[32m            'username' => 'Laravel Log',[m
[32m+[m[32m            'emoji' => ':boom:',[m
[32m+[m[32m            'level' => 'critical',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'papertrail' => [[m
[32m+[m[32m            'driver' => 'monolog',[m
[32m+[m[32m            'level' => 'debug',[m
[32m+[m[32m            'handler' => SyslogUdpHandler::class,[m
[32m+[m[32m            'handler_with' => [[m
[32m+[m[32m                'host' => env('PAPERTRAIL_URL'),[m
[32m+[m[32m                'port' => env('PAPERTRAIL_PORT'),[m
[32m+[m[32m            ],[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'stderr' => [[m
[32m+[m[32m            'driver' => 'monolog',[m
[32m+[m[32m            'handler' => StreamHandler::class,[m
[32m+[m[32m            'formatter' => env('LOG_STDERR_FORMATTER'),[m
[32m+[m[32m            'with' => [[m
[32m+[m[32m                'stream' => 'php://stderr',[m
[32m+[m[32m            ],[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'syslog' => [[m
[32m+[m[32m            'driver' => 'syslog',[m
[32m+[m[32m            'level' => 'debug',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'errorlog' => [[m
[32m+[m[32m            'driver' => 'errorlog',[m
[32m+[m[32m            'level' => 'debug',[m
[32m+[m[32m        ],[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/mail.php b/config/mail.php[m
[1mnew file mode 100644[m
[1mindex 0000000..6f8469f[m
[1m--- /dev/null[m
[1m+++ b/config/mail.php[m
[36m@@ -0,0 +1,136 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Mail Driver[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Laravel supports both SMTP and PHP's "mail" function as drivers for the[m
[32m+[m[32m    | sending of e-mail. You may specify which one you're using throughout[m
[32m+[m[32m    | your application here. By default, Laravel is setup for SMTP mail.[m
[32m+[m[32m    |[m
[32m+[m[32m    | Supported: "smtp", "sendmail", "mailgun", "mandrill", "ses",[m
[32m+[m[32m    |            "sparkpost", "postmark", "log", "array"[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'driver' => env('MAIL_DRIVER', 'smtp'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | SMTP Host Address[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may provide the host address of the SMTP server used by your[m
[32m+[m[32m    | applications. A default option is provided that is compatible with[m
[32m+[m[32m    | the Mailgun mail service which will provide reliable deliveries.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'host' => env('MAIL_HOST', 'smtp.mailgun.org'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | SMTP Host Port[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This is the SMTP port used by your application to deliver e-mails to[m
[32m+[m[32m    | users of the application. Like the host we have set this value to[m
[32m+[m[32m    | stay compatible with the Mailgun e-mail application by default.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'port' => env('MAIL_PORT', 587),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Global "From" Address[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | You may wish for all e-mails sent by your application to be sent from[m
[32m+[m[32m    | the same address. Here, you may specify a name and address that is[m
[32m+[m[32m    | used globally for all e-mails that are sent by your application.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'from' => [[m
[32m+[m[32m        'address' => env('MAIL_FROM_ADDRESS', 'hello@example.com'),[m
[32m+[m[32m        'name' => env('MAIL_FROM_NAME', 'Example'),[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | E-Mail Encryption Protocol[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may specify the encryption protocol that should be used when[m
[32m+[m[32m    | the application send e-mail messages. A sensible default using the[m
[32m+[m[32m    | transport layer security protocol should provide great security.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'encryption' => env('MAIL_ENCRYPTION', 'tls'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | SMTP Server Username[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | If your SMTP server requires a username for authentication, you should[m
[32m+[m[32m    | set it here. This will get used to authenticate with your server on[m
[32m+[m[32m    | connection. You may also set the "password" value below this one.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'username' => env('MAIL_USERNAME'),[m
[32m+[m
[32m+[m[32m    'password' => env('MAIL_PASSWORD'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Sendmail System Path[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | When using the "sendmail" driver to send e-mails, we will need to know[m
[32m+[m[32m    | the path to where Sendmail lives on this server. A default path has[m
[32m+[m[32m    | been provided here, which will work well on most of your systems.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'sendmail' => '/usr/sbin/sendmail -bs',[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Markdown Mail Settings[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | If you are using Markdown based email rendering, you may configure your[m
[32m+[m[32m    | theme and component paths here, allowing you to customize the design[m
[32m+[m[32m    | of the emails. Or, you may simply stick with the Laravel defaults![m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'markdown' => [[m
[32m+[m[32m        'theme' => 'default',[m
[32m+[m
[32m+[m[32m        'paths' => [[m
[32m+[m[32m            resource_path('views/vendor/mail'),[m
[32m+[m[32m        ],[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Log Channel[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | If you are using the "log" driver, you may specify the logging channel[m
[32m+[m[32m    | if you prefer to keep mail messages separate from other log entries[m
[32m+[m[32m    | for simpler reading. Otherwise, the default channel will be used.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'log_channel' => env('MAIL_LOG_CHANNEL'),[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/queue.php b/config/queue.php[m
[1mnew file mode 100644[m
[1mindex 0000000..07c7d2a[m
[1m--- /dev/null[m
[1m+++ b/config/queue.php[m
[36m@@ -0,0 +1,87 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Default Queue Connection Name[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Laravel's queue API supports an assortment of back-ends via a single[m
[32m+[m[32m    | API, giving you convenient access to each back-end using the same[m
[32m+[m[32m    | syntax for every one. Here you may define a default connection.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'default' => env('QUEUE_CONNECTION', 'sync'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Queue Connections[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may configure the connection information for each server that[m
[32m+[m[32m    | is used by your application. A default configuration has been added[m
[32m+[m[32m    | for each back-end shipped with Laravel. You are free to add more.[m
[32m+[m[32m    |[m
[32m+[m[32m    | Drivers: "sync", "database", "beanstalkd", "sqs", "redis", "null"[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'connections' => [[m
[32m+[m
[32m+[m[32m        'sync' => [[m
[32m+[m[32m            'driver' => 'sync',[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'database' => [[m
[32m+[m[32m            'driver' => 'database',[m
[32m+[m[32m            'table' => 'jobs',[m
[32m+[m[32m            'queue' => 'default',[m
[32m+[m[32m            'retry_after' => 90,[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'beanstalkd' => [[m
[32m+[m[32m            'driver' => 'beanstalkd',[m
[32m+[m[32m            'host' => 'localhost',[m
[32m+[m[32m            'queue' => 'default',[m
[32m+[m[32m            'retry_after' => 90,[m
[32m+[m[32m            'block_for' => 0,[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'sqs' => [[m
[32m+[m[32m            'driver' => 'sqs',[m
[32m+[m[32m            'key' => env('AWS_ACCESS_KEY_ID'),[m
[32m+[m[32m            'secret' => env('AWS_SECRET_ACCESS_KEY'),[m
[32m+[m[32m            'prefix' => env('SQS_PREFIX', 'https://sqs.us-east-1.amazonaws.com/your-account-id'),[m
[32m+[m[32m            'queue' => env('SQS_QUEUE', 'your-queue-name'),[m
[32m+[m[32m            'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m        'redis' => [[m
[32m+[m[32m            'driver' => 'redis',[m
[32m+[m[32m            'connection' => 'default',[m
[32m+[m[32m            'queue' => env('REDIS_QUEUE', 'default'),[m
[32m+[m[32m            'retry_after' => 90,[m
[32m+[m[32m            'block_for' => null,[m
[32m+[m[32m        ],[m
[32m+[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Failed Queue Jobs[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | These options configure the behavior of failed queue job logging so you[m
[32m+[m[32m    | can control which database and table are used to store the jobs that[m
[32m+[m[32m    | have failed. You may change them to any database / table you wish.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'failed' => [[m
[32m+[m[32m        'database' => env('DB_CONNECTION', 'mysql'),[m
[32m+[m[32m        'table' => 'failed_jobs',[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/services.php b/config/services.php[m
[1mnew file mode 100644[m
[1mindex 0000000..8ce6cc6[m
[1m--- /dev/null[m
[1m+++ b/config/services.php[m
[36m@@ -0,0 +1,37 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Third Party Services[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This file is for storing the credentials for third party services such[m
[32m+[m[32m    | as Mailgun, SparkPost and others. This file provides a sane default[m
[32m+[m[32m    | location for this type of information, allowing packages to have[m
[32m+[m[32m    | a conventional file to locate the various service credentials.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'mailgun' => [[m
[32m+[m[32m        'domain' => env('MAILGUN_DOMAIN'),[m
[32m+[m[32m        'secret' => env('MAILGUN_SECRET'),[m
[32m+[m[32m        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    'postmark' => [[m
[32m+[m[32m        'token' => env('POSTMARK_TOKEN'),[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    'ses' => [[m
[32m+[m[32m        'key' => env('AWS_ACCESS_KEY_ID'),[m
[32m+[m[32m        'secret' => env('AWS_SECRET_ACCESS_KEY'),[m
[32m+[m[32m        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    'sparkpost' => [[m
[32m+[m[32m        'secret' => env('SPARKPOST_SECRET'),[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/session.php b/config/session.php[m
[1mnew file mode 100644[m
[1mindex 0000000..fbb9b4d[m
[1m--- /dev/null[m
[1m+++ b/config/session.php[m
[36m@@ -0,0 +1,199 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32muse Illuminate\Support\Str;[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Default Session Driver[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This option controls the default session "driver" that will be used on[m
[32m+[m[32m    | requests. By default, we will use the lightweight native driver but[m
[32m+[m[32m    | you may specify any of the other wonderful drivers provided here.[m
[32m+[m[32m    |[m
[32m+[m[32m    | Supported: "file", "cookie", "database", "apc",[m
[32m+[m[32m    |            "memcached", "redis", "dynamodb", "array"[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'driver' => env('SESSION_DRIVER', 'file'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Session Lifetime[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may specify the number of minutes that you wish the session[m
[32m+[m[32m    | to be allowed to remain idle before it expires. If you want them[m
[32m+[m[32m    | to immediately expire on the browser closing, set that option.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'lifetime' => env('SESSION_LIFETIME', 120),[m
[32m+[m
[32m+[m[32m    'expire_on_close' => false,[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Session Encryption[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This option allows you to easily specify that all of your session data[m
[32m+[m[32m    | should be encrypted before it is stored. All encryption will be run[m
[32m+[m[32m    | automatically by Laravel and you can use the Session like normal.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'encrypt' => false,[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Session File Location[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | When using the native session driver, we need a location where session[m
[32m+[m[32m    | files may be stored. A default has been set for you but a different[m
[32m+[m[32m    | location may be specified. This is only needed for file sessions.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'files' => storage_path('framework/sessions'),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Session Database Connection[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | When using the "database" or "redis" session drivers, you may specify a[m
[32m+[m[32m    | connection that should be used to manage these sessions. This should[m
[32m+[m[32m    | correspond to a connection in your database configuration options.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'connection' => env('SESSION_CONNECTION', null),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Session Database Table[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | When using the "database" session driver, you may specify the table we[m
[32m+[m[32m    | should use to manage the sessions. Of course, a sensible default is[m
[32m+[m[32m    | provided for you; however, you are free to change this as needed.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'table' => 'sessions',[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Session Cache Store[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | When using the "apc", "memcached", or "dynamodb" session drivers you may[m
[32m+[m[32m    | list a cache store that should be used for these sessions. This value[m
[32m+[m[32m    | must match with one of the application's configured cache "stores".[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'store' => env('SESSION_STORE', null),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Session Sweeping Lottery[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Some session drivers must manually sweep their storage location to get[m
[32m+[m[32m    | rid of old sessions from storage. Here are the chances that it will[m
[32m+[m[32m    | happen on a given request. By default, the odds are 2 out of 100.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'lottery' => [2, 100],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Session Cookie Name[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may change the name of the cookie used to identify a session[m
[32m+[m[32m    | instance by ID. The name specified here will get used every time a[m
[32m+[m[32m    | new session cookie is created by the framework for every driver.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'cookie' => env([m
[32m+[m[32m        'SESSION_COOKIE',[m
[32m+[m[32m        Str::slug(env('APP_NAME', 'laravel'), '_').'_session'[m
[32m+[m[32m    ),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Session Cookie Path[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | The session cookie path determines the path for which the cookie will[m
[32m+[m[32m    | be regarded as available. Typically, this will be the root path of[m
[32m+[m[32m    | your application but you are free to change this when necessary.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'path' => '/',[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Session Cookie Domain[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may change the domain of the cookie used to identify a session[m
[32m+[m[32m    | in your application. This will determine which domains the cookie is[m
[32m+[m[32m    | available to in your application. A sensible default has been set.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'domain' => env('SESSION_DOMAIN', null),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | HTTPS Only Cookies[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | By setting this option to true, session cookies will only be sent back[m
[32m+[m[32m    | to the server if the browser has a HTTPS connection. This will keep[m
[32m+[m[32m    | the cookie from being sent to you if it can not be done securely.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'secure' => env('SESSION_SECURE_COOKIE', false),[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | HTTP Access Only[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Setting this value to true will prevent JavaScript from accessing the[m
[32m+[m[32m    | value of the cookie and the cookie will only be accessible through[m
[32m+[m[32m    | the HTTP protocol. You are free to modify this option if needed.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'http_only' => true,[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Same-Site Cookies[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This option determines how your cookies behave when cross-site requests[m
[32m+[m[32m    | take place, and can be used to mitigate CSRF attacks. By default, we[m
[32m+[m[32m    | do not enable this as other CSRF protection services are in place.[m
[32m+[m[32m    |[m
[32m+[m[32m    | Supported: "lax", "strict"[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'same_site' => null,[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/config/view.php b/config/view.php[m
[1mnew file mode 100644[m
[1mindex 0000000..22b8a18[m
[1m--- /dev/null[m
[1m+++ b/config/view.php[m
[36m@@ -0,0 +1,36 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | View Storage Paths[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Most templating systems load templates from disk. Here you may specify[m
[32m+[m[32m    | an array of paths that should be checked for your views. Of course[m
[32m+[m[32m    | the usual Laravel view path has already been registered for you.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'paths' => [[m
[32m+[m[32m        resource_path('views'),[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Compiled View Path[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This option determines where all the compiled Blade templates will be[m
[32m+[m[32m    | stored for your application. Typically, this is within the storage[m
[32m+[m[32m    | directory. However, as usual, you are free to change this value.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'compiled' => env([m
[32m+[m[32m        'VIEW_COMPILED_PATH',[m
[32m+[m[32m        realpath(storage_path('framework/views'))[m
[32m+[m[32m    ),[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/database/.gitignore b/database/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..97fc976[m
[1m--- /dev/null[m
[1m+++ b/database/.gitignore[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32m*.sqlite[m
[32m+[m[32m*.sqlite-journal[m
[1mdiff --git a/database/factories/UserFactory.php b/database/factories/UserFactory.php[m
[1mnew file mode 100644[m
[1mindex 0000000..5e516ce[m
[1m--- /dev/null[m
[1m+++ b/database/factories/UserFactory.php[m
[36m@@ -0,0 +1,27 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32m/** @var \Illuminate\Database\Eloquent\Factory $factory */[m
[32m+[m[32muse App\User;[m
[32m+[m[32muse Illuminate\Support\Str;[m
[32m+[m[32muse Faker\Generator as Faker;[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Model Factories[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| This directory should contain each of the model factory definitions for[m
[32m+[m[32m| your application. Factories provide a convenient way to generate new[m
[32m+[m[32m| model instances for testing / seeding your application's database.[m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32m$factory->define(User::class, function (Faker $faker) {[m
[32m+[m[32m    return [[m
[32m+[m[32m        'name' => $faker->name,[m
[32m+[m[32m        'email' => $faker->unique()->safeEmail,[m
[32m+[m[32m        'email_verified_at' => now(),[m
[32m+[m[32m        'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password[m
[32m+[m[32m        'remember_token' => Str::random(10),[m
[32m+[m[32m    ];[m
[32m+[m[32m});[m
[1mdiff --git a/database/migrations/2014_10_12_000000_create_users_table.php b/database/migrations/2014_10_12_000000_create_users_table.php[m
[1mnew file mode 100644[m
[1mindex 0000000..4a3ba47[m
[1m--- /dev/null[m
[1m+++ b/database/migrations/2014_10_12_000000_create_users_table.php[m
[36m@@ -0,0 +1,36 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32muse Illuminate\Support\Facades\Schema;[m
[32m+[m[32muse Illuminate\Database\Schema\Blueprint;[m
[32m+[m[32muse Illuminate\Database\Migrations\Migration;[m
[32m+[m
[32m+[m[32mclass CreateUsersTable extends Migration[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Run the migrations.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function up()[m
[32m+[m[32m    {[m
[32m+[m[32m        Schema::create('users', function (Blueprint $table) {[m
[32m+[m[32m            $table->bigIncrements('id');[m
[32m+[m[32m            $table->string('name');[m
[32m+[m[32m            $table->string('email')->unique();[m
[32m+[m[32m            $table->timestamp('email_verified_at')->nullable();[m
[32m+[m[32m            $table->string('password');[m
[32m+[m[32m            $table->rememberToken();[m
[32m+[m[32m            $table->timestamps();[m
[32m+[m[32m        });[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Reverse the migrations.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function down()[m
[32m+[m[32m    {[m
[32m+[m[32m        Schema::dropIfExists('users');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/database/migrations/2014_10_12_100000_create_password_resets_table.php b/database/migrations/2014_10_12_100000_create_password_resets_table.php[m
[1mnew file mode 100644[m
[1mindex 0000000..0d5cb84[m
[1m--- /dev/null[m
[1m+++ b/database/migrations/2014_10_12_100000_create_password_resets_table.php[m
[36m@@ -0,0 +1,32 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32muse Illuminate\Support\Facades\Schema;[m
[32m+[m[32muse Illuminate\Database\Schema\Blueprint;[m
[32m+[m[32muse Illuminate\Database\Migrations\Migration;[m
[32m+[m
[32m+[m[32mclass CreatePasswordResetsTable extends Migration[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Run the migrations.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function up()[m
[32m+[m[32m    {[m
[32m+[m[32m        Schema::create('password_resets', function (Blueprint $table) {[m
[32m+[m[32m            $table->string('email')->index();[m
[32m+[m[32m            $table->string('token');[m
[32m+[m[32m            $table->timestamp('created_at')->nullable();[m
[32m+[m[32m        });[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Reverse the migrations.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function down()[m
[32m+[m[32m    {[m
[32m+[m[32m        Schema::dropIfExists('password_resets');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/database/seeds/DatabaseSeeder.php b/database/seeds/DatabaseSeeder.php[m
[1mnew file mode 100644[m
[1mindex 0000000..91cb6d1[m
[1m--- /dev/null[m
[1m+++ b/database/seeds/DatabaseSeeder.php[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32muse Illuminate\Database\Seeder;[m
[32m+[m
[32m+[m[32mclass DatabaseSeeder extends Seeder[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Seed the application's database.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function run()[m
[32m+[m[32m    {[m
[32m+[m[32m        // $this->call(UsersTableSeeder::class);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/package.json b/package.json[m
[1mnew file mode 100644[m
[1mindex 0000000..bf85f38[m
[1m--- /dev/null[m
[1m+++ b/package.json[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "private": true,[m
[32m+[m[32m    "scripts": {[m
[32m+[m[32m        "dev": "npm run development",[m
[32m+[m[32m        "development": "cross-env NODE_ENV=development node_modules/webpack/bin/webpack.js --progress --hide-modules --config=node_modules/laravel-mix/setup/webpack.config.js",[m
[32m+[m[32m        "watch": "npm run development -- --watch",[m
[32m+[m[32m        "watch-poll": "npm run watch -- --watch-poll",[m
[32m+[m[32m        "hot": "cross-env NODE_ENV=development node_modules/webpack-dev-server/bin/webpack-dev-server.js --inline --hot --config=node_modules/laravel-mix/setup/webpack.config.js",[m
[32m+[m[32m        "prod": "npm run production",[m
[32m+[m[32m        "production": "cross-env NODE_ENV=production node_modules/webpack/bin/webpack.js --no-progress --hide-modules --config=node_modules/laravel-mix/setup/webpack.config.js"[m
[32m+[m[32m    },[m
[32m+[m[32m    "devDependencies": {[m
[32m+[m[32m        "axios": "^0.19",[m
[32m+[m[32m        "bootstrap": "^4.1.0",[m
[32m+[m[32m        "cross-env": "^5.1",[m
[32m+[m[32m        "jquery": "^3.2",[m
[32m+[m[32m        "laravel-mix": "^4.0.7",[m
[32m+[m[32m        "lodash": "^4.17.13",[m
[32m+[m[32m        "popper.js": "^1.12",[m
[32m+[m[32m        "resolve-url-loader": "^2.3.1",[m
[32m+[m[32m        "sass": "^1.15.2",[m
[32m+[m[32m        "sass-loader": "^7.1.0",[m
[32m+[m[32m        "vue": "^2.5.17"[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/phpunit.xml b/phpunit.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..da4add3[m
[1m--- /dev/null[m
[1m+++ b/phpunit.xml[m
[36m@@ -0,0 +1,33 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<phpunit backupGlobals="false"[m
[32m+[m[32m         backupStaticAttributes="false"[m
[32m+[m[32m         bootstrap="vendor/autoload.php"[m
[32m+[m[32m         colors="true"[m
[32m+[m[32m         convertErrorsToExceptions="true"[m
[32m+[m[32m         convertNoticesToExceptions="true"[m
[32m+[m[32m         convertWarningsToExceptions="true"[m
[32m+[m[32m         processIsolation="false"[m
[32m+[m[32m         stopOnFailure="false">[m
[32m+[m[32m    <testsuites>[m
[32m+[m[32m        <testsuite name="Unit">[m
[32m+[m[32m            <directory suffix="Test.php">./tests/Unit</directory>[m
[32m+[m[32m        </testsuite>[m
[32m+[m
[32m+[m[32m        <testsuite name="Feature">[m
[32m+[m[32m            <directory suffix="Test.php">./tests/Feature</directory>[m
[32m+[m[32m        </testsuite>[m
[32m+[m[32m    </testsuites>[m
[32m+[m[32m    <filter>[m
[32m+[m[32m        <whitelist processUncoveredFilesFromWhitelist="true">[m
[32m+[m[32m            <directory suffix=".php">./app</directory>[m
[32m+[m[32m        </whitelist>[m
[32m+[m[32m    </filter>[m
[32m+[m[32m    <php>[m
[32m+[m[32m        <server name="APP_ENV" value="testing"/>[m
[32m+[m[32m        <server name="BCRYPT_ROUNDS" value="4"/>[m
[32m+[m[32m        <server name="CACHE_DRIVER" value="array"/>[m
[32m+[m[32m        <server name="MAIL_DRIVER" value="array"/>[m
[32m+[m[32m        <server name="QUEUE_CONNECTION" value="sync"/>[m
[32m+[m[32m        <server name="SESSION_DRIVER" value="array"/>[m
[32m+[m[32m    </php>[m
[32m+[m[32m</phpunit>[m
[1mdiff --git a/public/.htaccess b/public/.htaccess[m
[1mnew file mode 100644[m
[1mindex 0000000..b75525b[m
[1m--- /dev/null[m
[1m+++ b/public/.htaccess[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32m<IfModule mod_rewrite.c>[m
[32m+[m[32m    <IfModule mod_negotiation.c>[m
[32m+[m[32m        Options -MultiViews -Indexes[m
[32m+[m[32m    </IfModule>[m
[32m+[m
[32m+[m[32m    RewriteEngine On[m
[32m+[m
[32m+[m[32m    # Handle Authorization Header[m
[32m+[m[32m    RewriteCond %{HTTP:Authorization} .[m
[32m+[m[32m    RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}][m
[32m+[m
[32m+[m[32m    # Redirect Trailing Slashes If Not A Folder...[m
[32m+[m[32m    RewriteCond %{REQUEST_FILENAME} !-d[m
[32m+[m[32m    RewriteCond %{REQUEST_URI} (.+)/$[m
[32m+[m[32m    RewriteRule ^ %1 [L,R=301][m
[32m+[m
[32m+[m[32m    # Handle Front Controller...[m
[32m+[m[32m    RewriteCond %{REQUEST_FILENAME} !-d[m
[32m+[m[32m    RewriteCond %{REQUEST_FILENAME} !-f[m
[32m+[m[32m    RewriteRule ^ index.php [L][m
[32m+[m[32m</IfModule>[m
[1mdiff --git a/public/css/app.css b/public/css/app.css[m
[1mnew file mode 100644[m
[1mindex 0000000..1937c51[m
[1m--- /dev/null[m
[1m+++ b/public/css/app.css[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m@import url(https://fonts.googleapis.com/css?family=Nunito);[m
[32m+[m
[32m+[m[32m/*![m
[32m+[m[32m * Bootstrap v4.1.3 (https://getbootstrap.com/)[m
[32m+[m[32m * Copyright 2011-2018 The Bootstrap Authors[m
[32m+[m[32m * Copyright 2011-2018 Twitter, Inc.[m
[32m+[m[32m * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)[m
[32m+[m[32m */:root{--blue:#3490dc;--indigo:#6574cd;--purple:#9561e2;--pink:#f66d9b;--red:#e3342f;--orange:#f6993f;--yellow:#ffed4a;--green:#38c172;--teal:#4dc0b5;--cyan:#6cb2eb;--white:#fff;--gray:#6c757d;--gray-dark:#343a40;--primary:#3490dc;--secondary:#6c757d;--success:#38c172;--info:#6cb2eb;--warning:#ffed4a;--danger:#e3342f;--light:#f8f9fa;--dark:#343a40;--breakpoint-xs:0;--breakpoint-sm:576px;--breakpoint-md:768px;--breakpoint-lg:992px;--breakpoint-xl:1200px;--font-family-sans-serif:"Nunito",sans-serif;--font-family-monospace:SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace}*,:after,:before{box-sizing:border-box}html{font-family:sans-serif;line-height:1.15;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;-ms-overflow-style:scrollbar;-webkit-tap-highlight-color:rgba(0,0,0,0)}@-ms-viewport{width:device-width}article,aside,figcaption,figure,footer,header,hgroup,main,nav,section{display:block}body{margin:0;font-family:Nunito,sans-serif;font-size:.9rem;font-weight:400;line-height:1.6;color:#212529;text-align:left;background-color:#f8fafc}[tabindex="-1"]:focus{outline:0!important}hr{box-sizing:content-box;height:0;overflow:visible}h1,h2,h3,h4,h5,h6{margin-top:0;margin-bottom:.5rem}p{margin-top:0;margin-bottom:1rem}abbr[data-original-title],abbr[title]{text-decoration:underline;-webkit-text-decoration:underline dotted;text-decoration:underline dotted;cursor:help;border-bottom:0}address{font-style:normal;line-height:inherit}address,dl,ol,ul{margin-bottom:1rem}dl,ol,ul{margin-top:0}ol ol,ol ul,ul ol,ul ul{margin-bottom:0}dt{font-weight:700}dd{margin-bottom:.5rem;margin-left:0}blockquote{margin:0 0 1rem}dfn{font-style:italic}b,strong{font-weight:bolder}small{font-size:80%}sub,sup{position:relative;font-size:75%;line-height:0;vertical-align:baseline}sub{bottom:-.25em}sup{top:-.5em}a{color:#3490dc;text-decoration:none;background-color:transparent;-webkit-text-decoration-skip:objects}a:hover{color:#1d68a7;text-decoration:underline}a:not([href]):not([tabindex]),a:not([href]):not([tabindex]):focus,a:not([href]):not([tabindex]):hover{color:inherit;text-decoration:none}a:not([href]):not([tabindex]):focus{outline:0}code,kbd,pre,samp{font-family:SFMono-Regular,Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace;font-size:1em}pre{margin-top:0;margin-bottom:1rem;overflow:auto;-ms-overflow-style:scrollbar}figure{margin:0 0 1rem}img{border-style:none}img,svg{vertical-align:middle}svg{overflow:hidden}table{border-collapse:collapse}caption{padding-top:.75rem;padding-bottom:.75rem;color:#6c757d;text-align:left;caption-side:bottom}th{text-align:inherit}label{display:inline-block;margin-bottom:.5rem}button{border-radius:0}button:focus{outline:1px dotted;outline:5px auto -webkit-focus-ring-color}button,input,optgroup,select,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}button,input{overflow:visible}button,select{text-transform:none}[type=reset],[type=submit],button,html [type=button]{-webkit-appearance:button}[type=button]::-moz-focus-inner,[type=reset]::-moz-focus-inner,[type=submit]::-moz-focus-inner,button::-moz-focus-inner{padding:0;border-style:none}input[type=checkbox],input[type=radio]{box-sizing:border-box;padding:0}input[type=date],input[type=datetime-local],input[type=month],input[type=time]{-webkit-appearance:listbox}textarea{overflow:auto;resize:vertical}fieldset{min-width:0;padding:0;margin:0;border:0}legend{display:block;width:100%;max-width:100%;padding:0;margin-bottom:.5rem;font-size:1.5rem;line-height:inherit;color:inherit;white-space:normal}progress{vertical-align:baseline}[type=number]::-webkit-inner-spin-button,[type=number]::-webkit-outer-spin-button{height:auto}[type=search]{outline-offset:-2px;-webkit-appearance:none}[type=search]::-webkit-search-cancel-button,[type=search]::-webkit-search-decoration{-webkit-appearance:none}::-webkit-file-upload-button{font:inherit;-webkit-appearance:button}output{display:inline-block}summary{display:list-item;cursor:pointer}template{display:none}[hidden]{display:none!important}.h1,.h2,.h3,.h4,.h5,.h6,h1,h2,h3,h4,h5,h6{margin-bottom:.5rem;font-family:inherit;font-weight:500;line-height:1.2;color:inherit}.h1,h1{font-size:2.25rem}.h2,h2{font-size:1.8rem}.h3,h3{font-size:1.575rem}.h4,h4{font-size:1.35rem}.h5,h5{font-size:1.125rem}.h6,h6{font-size:.9rem}.lead{font-size:1.125rem;font-weight:300}.display-1{font-size:6rem}.display-1,.display-2{font-weight:300;line-height:1.2}.display-2{font-size:5.5rem}.display-3{font-size:4.5rem}.display-3,.display-4{font-weight:300;line-height:1.2}.display-4{font-size:3.5rem}hr{margin-top:1rem;margin-bottom:1rem;border:0;border-top:1px solid rgba(0,0,0,.1)}.small,small{font-size:80%;font-weight:400}.mark,mark{padding:.2em;background-color:#fcf8e3}.list-inline,.list-unstyled{padding-left:0;list-style:none}.list-inline-item{display:inline-block}.list-inline-item:not(:last-child){margin-right:.5rem}.initialism{font-size:90%;text-transform:uppercase}.blockquote{margin-bottom:1rem;font-size:1.125rem}.blockquote-footer{display:block;font-size:80%;color:#6c757d}.blockquote-footer:before{content:"\2014\A0"}.img-fluid,.img-thumbnail{max-width:100%;height:auto}.img-thumbnail{padding:.25rem;background-color:#f8fafc;border:1px solid #dee2e6;border-radius:.25rem}.figure{display:inline-block}.figure-img{margin-bottom:.5rem;line-height:1}.figure-caption{font-size:90%;color:#6c757d}code{font-size:87.5%;color:#f66d9b;word-break:break-word}a>code{color:inherit}kbd{padding:.2rem .4rem;font-size:87.5%;color:#fff;background-color:#212529;border-radius:.2rem}kbd kbd{padding:0;font-size:100%;font-weight:700}pre{display:block;font-size:87.5%;color:#212529}pre code{font-size:inherit;color:inherit;word-break:normal}.pre-scrollable{max-height:340px;overflow-y:scroll}.container{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}@media (min-width:576px){.container{max-width:540px}}@media (min-width:768px){.container{max-width:720px}}@media (min-width:992px){.container{max-width:960px}}@media (min-width:1200px){.container{max-width:1140px}}.container-fluid{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}.row{display:flex;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}.no-gutters{margin-right:0;margin-left:0}.no-gutters>.col,.no-gutters>[class*=col-]{padding-right:0;padding-left:0}.col,.col-1,.col-2,.col-3,.col-4,.col-5,.col-6,.col-7,.col-8,.col-9,.col-10,.col-11,.col-12,.col-auto,.col-lg,.col-lg-1,.col-lg-2,.col-lg-3,.col-lg-4,.col-lg-5,.col-lg-6,.col-lg-7,.col-lg-8,.col-lg-9,.col-lg-10,.col-lg-11,.col-lg-12,.col-lg-auto,.col-md,.col-md-1,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-10,.col-md-11,.col-md-12,.col-md-auto,.col-sm,.col-sm-1,.col-sm-2,.col-sm-3,.col-sm-4,.col-sm-5,.col-sm-6,.col-sm-7,.col-sm-8,.col-sm-9,.col-sm-10,.col-sm-11,.col-sm-12,.col-sm-auto,.col-xl,.col-xl-1,.col-xl-2,.col-xl-3,.col-xl-4,.col-xl-5,.col-xl-6,.col-xl-7,.col-xl-8,.col-xl-9,.col-xl-10,.col-xl-11,.col-xl-12,.col-xl-auto{position:relative;width:100%;min-height:1px;padding-right:15px;padding-left:15px}.col{flex-basis:0;flex-grow:1;max-width:100%}.col-auto{flex:0 0 auto;width:auto;max-width:none}.col-1{flex:0 0 8.3333333333%;max-width:8.3333333333%}.col-2{flex:0 0 16.6666666667%;max-width:16.6666666667%}.col-3{flex:0 0 25%;max-width:25%}.col-4{flex:0 0 33.3333333333%;max-width:33.3333333333%}.col-5{flex:0 0 41.6666666667%;max-width:41.6666666667%}.col-6{flex:0 0 50%;max-width:50%}.col-7{flex:0 0 58.3333333333%;max-width:58.3333333333%}.col-8{flex:0 0 66.6666666667%;max-width:66.6666666667%}.col-9{flex:0 0 75%;max-width:75%}.col-10{flex:0 0 83.3333333333%;max-width:83.3333333333%}.col-11{flex:0 0 91.6666666667%;max-width:91.6666666667%}.col-12{flex:0 0 100%;max-width:100%}.order-first{order:-1}.order-last{order:13}.order-0{order:0}.order-1{order:1}.order-2{order:2}.order-3{order:3}.order-4{order:4}.order-5{order:5}.order-6{order:6}.order-7{order:7}.order-8{order:8}.order-9{order:9}.order-10{order:10}.order-11{order:11}.order-12{order:12}.offset-1{margin-left:8.3333333333%}.offset-2{margin-left:16.6666666667%}.offset-3{margin-left:25%}.offset-4{margin-left:33.3333333333%}.offset-5{margin-left:41.6666666667%}.offset-6{margin-left:50%}.offset-7{margin-left:58.3333333333%}.offset-8{margin-left:66.6666666667%}.offset-9{margin-left:75%}.offset-10{margin-left:83.3333333333%}.offset-11{margin-left:91.6666666667%}@media (min-width:576px){.col-sm{flex-basis:0;flex-grow:1;max-width:100%}.col-sm-auto{flex:0 0 auto;width:auto;max-width:none}.col-sm-1{flex:0 0 8.3333333333%;max-width:8.3333333333%}.col-sm-2{flex:0 0 16.6666666667%;max-width:16.6666666667%}.col-sm-3{flex:0 0 25%;max-width:25%}.col-sm-4{flex:0 0 33.3333333333%;max-width:33.3333333333%}.col-sm-5{flex:0 0 41.6666666667%;max-width:41.6666666667%}.col-sm-6{flex:0 0 50%;max-width:50%}.col-sm-7{flex:0 0 58.3333333333%;max-width:58.3333333333%}.col-sm-8{flex:0 0 66.6666666667%;max-width:66.6666666667%}.col-sm-9{flex:0 0 75%;max-width:75%}.col-sm-10{flex:0 0 83.3333333333%;max-width:83.3333333333%}.col-sm-11{flex:0 0 91.6666666667%;max-width:91.6666666667%}.col-sm-12{flex:0 0 100%;max-width:100%}.order-sm-first{order:-1}.order-sm-last{order:13}.order-sm-0{order:0}.order-sm-1{order:1}.order-sm-2{order:2}.order-sm-3{order:3}.order-sm-4{order:4}.order-sm-5{order:5}.order-sm-6{order:6}.order-sm-7{order:7}.order-sm-8{order:8}.order-sm-9{order:9}.order-sm-10{order:10}.order-sm-11{order:11}.order-sm-12{order:12}.offset-sm-0{margin-left:0}.offset-sm-1{margin-left:8.3333333333%}.offset-sm-2{margin-left:16.6666666667%}.offset-sm-3{margin-left:25%}.offset-sm-4{margin-left:33.3333333333%}.offset-sm-5{margin-left:41.6666666667%}.offset-sm-6{margin-left:50%}.offset-sm-7{margin-left:58.3333333333%}.offset-sm-8{margin-left:66.6666666667%}.offset-sm-9{margin-left:75%}.offset-sm-10{margin-left:83.3333333333%}.offset-sm-11{margin-left:91.6666666667%}}@media (min-width:768px){.col-md{flex-basis:0;flex-grow:1;max-width:100%}.col-md-auto{flex:0 0 auto;width:auto;max-width:none}.col-md-1{flex:0 0 8.3333333333%;max-width:8.3333333333%}.col-md-2{flex:0 0 16.6666666667%;max-width:16.6666666667%}.col-md-3{flex:0 0 25%;max-width:25%}.col-md-4{flex:0 0 33.3333333333%;max-width:33.3333333333%}.col-md-5{flex:0 0 41.6666666667%;max-width:41.6666666667%}.col-md-6{flex:0 0 50%;max-width:50%}.col-md-7{flex:0 0 58.3333333333%;max-width:58.3333333333%}.col-md-8{flex:0 0 66.6666666667%;max-width:66.6666666667%}.col-md-9{flex:0 0 75%;max-width:75%}.col-md-10{flex:0 0 83.3333333333%;max-width:83.3333333333%}.col-md-11{flex:0 0 91.6666666667%;max-width:91.6666666667%}.col-md-12{flex:0 0 100%;max-width:100%}.order-md-first{order:-1}.order-md-last{order:13}.order-md-0{order:0}.order-md-1{order:1}.order-md-2{order:2}.order-md-3{order:3}.order-md-4{order:4}.order-md-5{order:5}.order-md-6{order:6}.order-md-7{order:7}.order-md-8{order:8}.order-md-9{order:9}.order-md-10{order:10}.order-md-11{order:11}.order-md-12{order:12}.offset-md-0{margin-left:0}.offset-md-1{margin-left:8.3333333333%}.offset-md-2{margin-left:16.6666666667%}.offset-md-3{margin-left:25%}.offset-md-4{margin-left:33.3333333333%}.offset-md-5{margin-left:41.6666666667%}.offset-md-6{margin-left:50%}.offset-md-7{margin-left:58.3333333333%}.offset-md-8{margin-left:66.6666666667%}.offset-md-9{margin-left:75%}.offset-md-10{margin-left:83.3333333333%}.offset-md-11{margin-left:91.6666666667%}}@media (min-width:992px){.col-lg{flex-basis:0;flex-grow:1;max-width:100%}.col-lg-auto{flex:0 0 auto;width:auto;max-width:none}.col-lg-1{flex:0 0 8.3333333333%;max-width:8.3333333333%}.col-lg-2{flex:0 0 16.6666666667%;max-width:16.6666666667%}.col-lg-3{flex:0 0 25%;max-width:25%}.col-lg-4{flex:0 0 33.3333333333%;max-width:33.3333333333%}.col-lg-5{flex:0 0 41.6666666667%;max-width:41.6666666667%}.col-lg-6{flex:0 0 50%;max-width:50%}.col-lg-7{flex:0 0 58.3333333333%;max-width:58.3333333333%}.col-lg-8{flex:0 0 66.6666666667%;max-width:66.6666666667%}.col-lg-9{flex:0 0 75%;max-width:75%}.col-lg-10{flex:0 0 83.3333333333%;max-width:83.3333333333%}.col-lg-11{flex:0 0 91.6666666667%;max-width:91.6666666667%}.col-lg-12{flex:0 0 100%;max-width:100%}.order-lg-first{order:-1}.order-lg-last{order:13}.order-lg-0{order:0}.order-lg-1{order:1}.order-lg-2{order:2}.order-lg-3{order:3}.order-lg-4{order:4}.order-lg-5{order:5}.order-lg-6{order:6}.order-lg-7{order:7}.order-lg-8{order:8}.order-lg-9{order:9}.order-lg-10{order:10}.order-lg-11{order:11}.order-lg-12{order:12}.offset-lg-0{margin-left:0}.offset-lg-1{margin-left:8.3333333333%}.offset-lg-2{margin-left:16.6666666667%}.offset-lg-3{margin-left:25%}.offset-lg-4{margin-left:33.3333333333%}.offset-lg-5{margin-left:41.6666666667%}.offset-lg-6{margin-left:50%}.offset-lg-7{margin-left:58.3333333333%}.offset-lg-8{margin-left:66.6666666667%}.offset-lg-9{margin-left:75%}.offset-lg-10{margin-left:83.3333333333%}.offset-lg-11{margin-left:91.6666666667%}}@media (min-width:1200px){.col-xl{flex-basis:0;flex-grow:1;max-width:100%}.col-xl-auto{flex:0 0 auto;width:auto;max-width:none}.col-xl-1{flex:0 0 8.3333333333%;max-width:8.3333333333%}.col-xl-2{flex:0 0 16.6666666667%;max-width:16.6666666667%}.col-xl-3{flex:0 0 25%;max-width:25%}.col-xl-4{flex:0 0 33.3333333333%;max-width:33.3333333333%}.col-xl-5{flex:0 0 41.6666666667%;max-width:41.6666666667%}.col-xl-6{flex:0 0 50%;max-width:50%}.col-xl-7{flex:0 0 58.3333333333%;max-width:58.3333333333%}.col-xl-8{flex:0 0 66.6666666667%;max-width:66.6666666667%}.col-xl-9{flex:0 0 75%;max-width:75%}.col-xl-10{flex:0 0 83.3333333333%;max-width:83.3333333333%}.col-xl-11{flex:0 0 91.6666666667%;max-width:91.6666666667%}.col-xl-12{flex:0 0 100%;max-width:100%}.order-xl-first{order:-1}.order-xl-last{order:13}.order-xl-0{order:0}.order-xl-1{order:1}.order-xl-2{order:2}.order-xl-3{order:3}.order-xl-4{order:4}.order-xl-5{order:5}.order-xl-6{order:6}.order-xl-7{order:7}.order-xl-8{order:8}.order-xl-9{order:9}.order-xl-10{order:10}.order-xl-11{order:11}.order-xl-12{order:12}.offset-xl-0{margin-left:0}.offset-xl-1{margin-left:8.3333333333%}.offset-xl-2{margin-left:16.6666666667%}.offset-xl-3{margin-left:25%}.offset-xl-4{margin-left:33.3333333333%}.offset-xl-5{margin-left:41.6666666667%}.offset-xl-6{margin-left:50%}.offset-xl-7{margin-left:58.3333333333%}.offset-xl-8{margin-left:66.6666666667%}.offset-xl-9{margin-left:75%}.offset-xl-10{margin-left:83.3333333333%}.offset-xl-11{margin-left:91.6666666667%}}.table{width:100%;margin-bottom:1rem;background-color:transparent}.table td,.table th{padding:.75rem;vertical-align:top;border-top:1px solid #dee2e6}.table thead th{vertical-align:bottom;border-bottom:2px solid #dee2e6}.table tbody+tbody{border-top:2px solid #dee2e6}.table .table{background-color:#f8fafc}.table-sm td,.table-sm th{padding:.3rem}.table-bordered,.table-bordered td,.table-bordered th{border:1px solid #dee2e6}.table-bordered thead td,.table-bordered thead th{border-bottom-width:2px}.table-borderless tbody+tbody,.table-borderless td,.table-borderless th,.table-borderless thead th{border:0}.table-striped tbody tr:nth-of-type(odd){background-color:rgba(0,0,0,.05)}.table-hover tbody tr:hover{background-color:rgba(0,0,0,.075)}.table-primary,.table-primary>td,.table-primary>th{background-color:#c6e0f5}.table-hover .table-primary:hover,.table-hover .table-primary:hover>td,.table-hover .table-primary:hover>th{background-color:#b0d4f1}.table-secondary,.table-secondary>td,.table-secondary>th{background-color:#d6d8db}.table-hover .table-secondary:hover,.table-hover .table-secondary:hover>td,.table-hover .table-secondary:hover>th{background-color:#c8cbcf}.table-success,.table-success>td,.table-success>th{background-color:#c7eed8}.table-hover .table-success:hover,.table-hover .table-success:hover>td,.table-hover .table-success:hover>th{background-color:#b3e8ca}.table-info,.table-info>td,.table-info>th{background-color:#d6e9f9}.table-hover .table-info:hover,.table-hover .table-info:hover>td,.table-hover .table-info:hover>th{background-color:#c0ddf6}.table-warning,.table-warning>td,.table-warning>th{background-color:#fffacc}.table-hover .table-warning:hover,.table-hover .table-warning:hover>td,.table-hover .table-warning:hover>th{background-color:#fff8b3}.table-danger,.table-danger>td,.table-danger>th{background-color:#f7c6c5}.table-hover .table-danger:hover,.table-hover .table-danger:hover>td,.table-hover .table-danger:hover>th{background-color:#f4b0af}.table-light,.table-light>td,.table-light>th{background-color:#fdfdfe}.table-hover .table-light:hover,.table-hover .table-light:hover>td,.table-hover .table-light:hover>th{background-color:#ececf6}.table-dark,.table-dark>td,.table-dark>th{background-color:#c6c8ca}.table-hover .table-dark:hover,.table-hover .table-dark:hover>td,.table-hover .table-dark:hover>th{background-color:#b9bbbe}.table-active,.table-active>td,.table-active>th,.table-hover .table-active:hover,.table-hover .table-active:hover>td,.table-hover .table-active:hover>th{background-color:rgba(0,0,0,.075)}.table .thead-dark th{color:#f8fafc;background-color:#212529;border-color:#32383e}.table .thead-light th{color:#495057;background-color:#e9ecef;border-color:#dee2e6}.table-dark{color:#f8fafc;background-color:#212529}.table-dark td,.table-dark th,.table-dark thead th{border-color:#32383e}.table-dark.table-bordered{border:0}.table-dark.table-striped tbody tr:nth-of-type(odd){background-color:hsla(0,0%,100%,.05)}.table-dark.table-hover tbody tr:hover{background-color:hsla(0,0%,100%,.075)}@media (max-width:575.98px){.table-responsive-sm{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch;-ms-overflow-style:-ms-autohiding-scrollbar}.table-responsive-sm>.table-bordered{border:0}}@media (max-width:767.98px){.table-responsive-md{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch;-ms-overflow-style:-ms-autohiding-scrollbar}.table-responsive-md>.table-bordered{border:0}}@media (max-width:991.98px){.table-responsive-lg{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch;-ms-overflow-style:-ms-autohiding-scrollbar}.table-responsive-lg>.table-bordered{border:0}}@media (max-width:1199.98px){.table-responsive-xl{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch;-ms-overflow-style:-ms-autohiding-scrollbar}.table-responsive-xl>.table-bordered{border:0}}.table-responsive{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch;-ms-overflow-style:-ms-autohiding-scrollbar}.table-responsive>.table-bordered{border:0}.form-control{display:block;width:100%;height:calc(2.19rem + 2px);padding:.375rem .75rem;font-size:.9rem;line-height:1.6;color:#495057;background-color:#fff;background-clip:padding-box;border:1px solid #ced4da;border-radius:.25rem;transition:border-color .15s ease-in-out,box-shadow .15s ease-in-out}@media screen and (prefers-reduced-motion:reduce){.form-control{transition:none}}.form-control::-ms-expand{background-color:transparent;border:0}.form-control:focus{color:#495057;background-color:#fff;border-color:#a1cbef;outline:0;box-shadow:0 0 0 .2rem rgba(52,144,220,.25)}.form-control::-webkit-input-placeholder{color:#6c757d;opacity:1}.form-control:-ms-input-placeholder{color:#6c757d;opacity:1}.form-control::-ms-input-placeholder{color:#6c757d;opacity:1}.form-control::placeholder{color:#6c757d;opacity:1}.form-control:disabled,.form-control[readonly]{background-color:#e9ecef;opacity:1}select.form-control:focus::-ms-value{color:#495057;background-color:#fff}.form-control-file,.form-control-range{display:block;width:100%}.col-form-label{padding-top:calc(.375rem + 1px);padding-bottom:calc(.375rem + 1px);margin-bottom:0;font-size:inherit;line-height:1.6}.col-form-label-lg{padding-top:calc(.5rem + 1px);padding-bottom:calc(.5rem + 1px);font-size:1.125rem;line-height:1.5}.col-form-label-sm{padding-top:calc(.25rem + 1px);padding-bottom:calc(.25rem + 1px);font-size:.7875rem;line-height:1.5}.form-control-plaintext{display:block;width:100%;padding-top:.375rem;padding-bottom:.375rem;margin-bottom:0;line-height:1.6;color:#212529;background-color:transparent;border:solid transparent;border-width:1px 0}.form-control-plaintext.form-control-lg,.form-control-plaintext.form-control-sm{padding-right:0;padding-left:0}.form-control-sm{height:calc(1.68125rem + 2px);padding:.25rem .5rem;font-size:.7875rem;line-height:1.5;border-radius:.2rem}.form-control-lg{height:calc(2.6875rem + 2px);padding:.5rem 1rem;font-size:1.125rem;line-height:1.5;border-radius:.3rem}select.form-control[multiple],select.form-control[size],textarea.form-control{height:auto}.form-group{margin-bottom:1rem}.form-text{display:block;margin-top:.25rem}.form-row{display:flex;flex-wrap:wrap;margin-right:-5px;margin-left:-5px}.form-row>.col,.form-row>[class*=col-]{padding-right:5px;padding-left:5px}.form-check{position:relative;display:block;padding-left:1.25rem}.form-check-input{position:absolute;margin-top:.3rem;margin-left:-1.25rem}.form-check-input:disabled~.form-check-label{color:#6c757d}.form-check-label{margin-bottom:0}.form-check-inline{display:inline-flex;align-items:center;padding-left:0;margin-right:.75rem}.form-check-inline .form-check-input{position:static;margin-top:0;margin-right:.3125rem;margin-left:0}.valid-feedback{display:none;width:100%;margin-top:.25rem;font-size:80%;color:#38c172}.valid-tooltip{position:absolute;top:100%;z-index:5;display:none;max-width:100%;padding:.25rem .5rem;margin-top:.1rem;font-size:.7875rem;line-height:1.6;color:#fff;background-color:rgba(56,193,114,.9);border-radius:.25rem}.custom-select.is-valid,.form-control.is-valid,.was-validated .custom-select:valid,.was-validated .form-control:valid{border-color:#38c172}.custom-select.is-valid:focus,.form-control.is-valid:focus,.was-validated .custom-select:valid:focus,.was-validated .form-control:valid:focus{border-color:#38c172;box-shadow:0 0 0 .2rem rgba(56,193,114,.25)}.custom-select.is-valid~.valid-feedback,.custom-select.is-valid~.valid-tooltip,.form-control-file.is-valid~.valid-feedback,.form-control-file.is-valid~.valid-tooltip,.form-control.is-valid~.valid-feedback,.form-control.is-valid~.valid-tooltip,.was-validated .custom-select:valid~.valid-feedback,.was-validated .custom-select:valid~.valid-tooltip,.was-validated .form-control-file:valid~.valid-feedback,.was-validated .form-control-file:valid~.valid-tooltip,.was-validated .form-control:valid~.valid-feedback,.was-validated .form-control:valid~.valid-tooltip{display:block}.form-check-input.is-valid~.form-check-label,.was-validated .form-check-input:valid~.form-check-label{color:#38c172}.form-check-input.is-valid~.valid-feedback,.form-check-input.is-valid~.valid-tooltip,.was-validated .form-check-input:valid~.valid-feedback,.was-validated .form-check-input:valid~.valid-tooltip{display:block}.custom-control-input.is-valid~.custom-control-label,.was-validated .custom-control-input:valid~.custom-control-label{color:#38c172}.custom-control-input.is-valid~.custom-control-label:before,.was-validated .custom-control-input:valid~.custom-control-label:before{background-color:#98e1b7}.custom-control-input.is-valid~.valid-feedback,.custom-control-input.is-valid~.valid-tooltip,.was-validated .custom-control-input:valid~.valid-feedback,.was-validated .custom-control-input:valid~.valid-tooltip{display:block}.custom-control-input.is-valid:checked~.custom-control-label:before,.was-validated .custom-control-input:valid:checked~.custom-control-label:before{background-color:#5cd08d}.custom-control-input.is-valid:focus~.custom-control-label:before,.was-validated .custom-control-input:valid:focus~.custom-control-label:before{box-shadow:0 0 0 1px #f8fafc,0 0 0 .2rem rgba(56,193,114,.25)}.custom-file-input.is-valid~.custom-file-label,.was-validated .custom-file-input:valid~.custom-file-label{border-color:#38c172}.custom-file-input.is-valid~.custom-file-label:after,.was-validated .custom-file-input:valid~.custom-file-label:after{border-color:inherit}.custom-file-input.is-valid~.valid-feedback,.custom-file-input.is-valid~.valid-tooltip,.was-validated .custom-file-input:valid~.valid-feedback,.was-validated .custom-file-input:valid~.valid-tooltip{display:block}.custom-file-input.is-valid:focus~.custom-file-label,.was-validated .custom-file-input:valid:focus~.custom-file-label{box-shadow:0 0 0 .2rem rgba(56,193,114,.25)}.invalid-feedback{display:none;width:100%;margin-top:.25rem;font-size:80%;color:#e3342f}.invalid-tooltip{position:absolute;top:100%;z-index:5;display:none;max-width:100%;padding:.25rem .5rem;margin-top:.1rem;font-size:.7875rem;line-height:1.6;color:#fff;background-color:rgba(227,52,47,.9);border-radius:.25rem}.custom-select.is-invalid,.form-control.is-invalid,.was-validated .custom-select:invalid,.was-validated .form-control:invalid{border-color:#e3342f}.custom-select.is-invalid:focus,.form-control.is-invalid:focus,.was-validated .custom-select:invalid:focus,.was-validated .form-control:invalid:focus{border-color:#e3342f;box-shadow:0 0 0 .2rem rgba(227,52,47,.25)}.custom-select.is-invalid~.invalid-feedback,.custom-select.is-invalid~.invalid-tooltip,.form-control-file.is-invalid~.invalid-feedback,.form-control-file.is-invalid~.invalid-tooltip,.form-control.is-invalid~.invalid-feedback,.form-control.is-invalid~.invalid-tooltip,.was-validated .custom-select:invalid~.invalid-feedback,.was-validated .custom-select:invalid~.invalid-tooltip,.was-validated .form-control-file:invalid~.invalid-feedback,.was-validated .form-control-file:invalid~.invalid-tooltip,.was-validated .form-control:invalid~.invalid-feedback,.was-validated .form-control:invalid~.invalid-tooltip{display:block}.form-check-input.is-invalid~.form-check-label,.was-validated .form-check-input:invalid~.form-check-label{color:#e3342f}.form-check-input.is-invalid~.invalid-feedback,.form-check-input.is-invalid~.invalid-tooltip,.was-validated .form-check-input:invalid~.invalid-feedback,.was-validated .form-check-input:invalid~.invalid-tooltip{display:block}.custom-control-input.is-invalid~.custom-control-label,.was-validated .custom-control-input:invalid~.custom-control-label{color:#e3342f}.custom-control-input.is-invalid~.custom-control-label:before,.was-validated .custom-control-input:invalid~.custom-control-label:before{background-color:#f2a29f}.custom-control-input.is-invalid~.invalid-feedback,.custom-control-input.is-invalid~.invalid-tooltip,.was-validated .custom-control-input:invalid~.invalid-feedback,.was-validated .custom-control-input:invalid~.invalid-tooltip{display:block}.custom-control-input.is-invalid:checked~.custom-control-label:before,.was-validated .custom-control-input:invalid:checked~.custom-control-label:before{background-color:#e9605c}.custom-control-input.is-invalid:focus~.custom-control-label:before,.was-validated .custom-control-input:invalid:focus~.custom-control-label:before{box-shadow:0 0 0 1px #f8fafc,0 0 0 .2rem rgba(227,52,47,.25)}.custom-file-input.is-invalid~.custom-file-label,.was-validated .custom-file-input:invalid~.custom-file-label{border-color:#e3342f}.custom-file-input.is-invalid~.custom-file-label:after,.was-validated .custom-file-input:invalid~.custom-file-label:after{border-color:inherit}.custom-file-input.is-invalid~.invalid-feedback,.custom-file-input.is-invalid~.invalid-tooltip,.was-validated .custom-file-input:invalid~.invalid-feedback,.was-validated .custom-file-input:invalid~.invalid-tooltip{display:block}.custom-file-input.is-invalid:focus~.custom-file-label,.was-validated .custom-file-input:invalid:focus~.custom-file-label{box-shadow:0 0 0 .2rem rgba(227,52,47,.25)}.form-inline{display:flex;flex-flow:row wrap;align-items:center}.form-inline .form-check{width:100%}@media (min-width:576px){.form-inline label{justify-content:center}.form-inline .form-group,.form-inline label{display:flex;align-items:center;margin-bottom:0}.form-inline .form-group{flex:0 0 auto;flex-flow:row wrap}.form-inline .form-control{display:inline-block;width:auto;vertical-align:middle}.form-inline .form-control-plaintext{display:inline-block}.form-inline .custom-select,.form-inline .input-group{width:auto}.form-inline .form-check{display:flex;align-items:center;justify-content:center;width:auto;padding-left:0}.form-inline .form-check-input{position:relative;margin-top:0;margin-right:.25rem;margin-left:0}.form-inline .custom-control{align-items:center;justify-content:center}.form-inline .custom-control-label{margin-bottom:0}}.btn{display:inline-block;font-weight:400;text-align:center;white-space:nowrap;vertical-align:middle;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;border:1px solid transparent;padding:.375rem .75rem;font-size:.9rem;line-height:1.6;border-radius:.25rem;transition:color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out}@media screen and (prefers-reduced-motion:reduce){.btn{transition:none}}.btn:focus,.btn:hover{text-decoration:none}.btn.focus,.btn:focus{outline:0;box-shadow:0 0 0 .2rem rgba(52,144,220,.25)}.btn.disabled,.btn:disabled{opacity:.65}.btn:not(:disabled):not(.disabled){cursor:pointer}a.btn.disabled,fieldset:disabled a.btn{pointer-events:none}.btn-primary{color:#fff;background-color:#3490dc;border-color:#3490dc}.btn-primary:hover{color:#fff;background-color:#227dc7;border-color:#2176bd}.btn-primary.focus,.btn-primary:focus{box-shadow:0 0 0 .2rem rgba(52,144,220,.5)}.btn-primary.disabled,.btn-primary:disabled{color:#fff;background-color:#3490dc;border-color:#3490dc}.btn-primary:not(:disabled):not(.disabled).active,.btn-primary:not(:disabled):not(.disabled):active,.show>.btn-primary.dropdown-toggle{color:#fff;background-color:#2176bd;border-color:#1f6fb2}.btn-primary:not(:disabled):not(.disabled).active:focus,.btn-primary:not(:disabled):not(.disabled):active:focus,.show>.btn-primary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(52,144,220,.5)}.btn-secondary{color:#fff;background-color:#6c757d;border-color:#6c757d}.btn-secondary:hover{color:#fff;background-color:#5a6268;border-color:#545b62}.btn-secondary.focus,.btn-secondary:focus{box-shadow:0 0 0 .2rem rgba(108,117,125,.5)}.btn-secondary.disabled,.btn-secondary:disabled{color:#fff;background-color:#6c757d;border-color:#6c757d}.btn-secondary:not(:disabled):not(.disabled).active,.btn-secondary:not(:disabled):not(.disabled):active,.show>.btn-secondary.dropdown-toggle{color:#fff;background-color:#545b62;border-color:#4e555b}.btn-secondary:not(:disabled):not(.disabled).active:focus,.btn-secondary:not(:disabled):not(.disabled):active:focus,.show>.btn-secondary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(108,117,125,.5)}.btn-success{color:#fff;background-color:#38c172;border-color:#38c172}.btn-success:hover{color:#fff;background-color:#2fa360;border-color:#2d995b}.btn-success.focus,.btn-success:focus{box-shadow:0 0 0 .2rem rgba(56,193,114,.5)}.btn-success.disabled,.btn-success:disabled{color:#fff;background-color:#38c172;border-color:#38c172}.btn-success:not(:disabled):not(.disabled).active,.btn-success:not(:disabled):not(.disabled):active,.show>.btn-success.dropdown-toggle{color:#fff;background-color:#2d995b;border-color:#2a9055}.btn-success:not(:disabled):not(.disabled).active:focus,.btn-success:not(:disabled):not(.disabled):active:focus,.show>.btn-success.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(56,193,114,.5)}.btn-info{color:#212529;background-color:#6cb2eb;border-color:#6cb2eb}.btn-info:hover{color:#fff;background-color:#4aa0e6;border-color:#3f9ae5}.btn-info.focus,.btn-info:focus{box-shadow:0 0 0 .2rem rgba(108,178,235,.5)}.btn-info.disabled,.btn-info:disabled{color:#212529;background-color:#6cb2eb;border-color:#6cb2eb}.btn-info:not(:disabled):not(.disabled).active,.btn-info:not(:disabled):not(.disabled):active,.show>.btn-info.dropdown-toggle{color:#fff;background-color:#3f9ae5;border-color:#3495e3}.btn-info:not(:disabled):not(.disabled).active:focus,.btn-info:not(:disabled):not(.disabled):active:focus,.show>.btn-info.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(108,178,235,.5)}.btn-warning{color:#212529;background-color:#ffed4a;border-color:#ffed4a}.btn-warning:hover{color:#212529;background-color:#ffe924;border-color:#ffe817}.btn-warning.focus,.btn-warning:focus{box-shadow:0 0 0 .2rem rgba(255,237,74,.5)}.btn-warning.disabled,.btn-warning:disabled{color:#212529;background-color:#ffed4a;border-color:#ffed4a}.btn-warning:not(:disabled):not(.disabled).active,.btn-warning:not(:disabled):not(.disabled):active,.show>.btn-warning.dropdown-toggle{color:#212529;background-color:#ffe817;border-color:#ffe70a}.btn-warning:not(:disabled):not(.disabled).active:focus,.btn-warning:not(:disabled):not(.disabled):active:focus,.show>.btn-warning.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(255,237,74,.5)}.btn-danger{color:#fff;background-color:#e3342f;border-color:#e3342f}.btn-danger:hover{color:#fff;background-color:#d0211c;border-color:#c51f1a}.btn-danger.focus,.btn-danger:focus{box-shadow:0 0 0 .2rem rgba(227,52,47,.5)}.btn-danger.disabled,.btn-danger:disabled{color:#fff;background-color:#e3342f;border-color:#e3342f}.btn-danger:not(:disabled):not(.disabled).active,.btn-danger:not(:disabled):not(.disabled):active,.show>.btn-danger.dropdown-toggle{color:#fff;background-color:#c51f1a;border-color:#b91d19}.btn-danger:not(:disabled):not(.disabled).active:focus,.btn-danger:not(:disabled):not(.disabled):active:focus,.show>.btn-danger.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(227,52,47,.5)}.btn-light{color:#212529;background-color:#f8f9fa;border-color:#f8f9fa}.btn-light:hover{color:#212529;background-color:#e2e6ea;border-color:#dae0e5}.btn-light.focus,.btn-light:focus{box-shadow:0 0 0 .2rem rgba(248,249,250,.5)}.btn-light.disabled,.btn-light:disabled{color:#212529;background-color:#f8f9fa;border-color:#f8f9fa}.btn-light:not(:disabled):not(.disabled).active,.btn-light:not(:disabled):not(.disabled):active,.show>.btn-light.dropdown-toggle{color:#212529;background-color:#dae0e5;border-color:#d3d9df}.btn-light:not(:disabled):not(.disabled).active:focus,.btn-light:not(:disabled):not(.disabled):active:focus,.show>.btn-light.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(248,249,250,.5)}.btn-dark{color:#fff;background-color:#343a40;border-color:#343a40}.btn-dark:hover{color:#fff;background-color:#23272b;border-color:#1d2124}.btn-dark.focus,.btn-dark:focus{box-shadow:0 0 0 .2rem rgba(52,58,64,.5)}.btn-dark.disabled,.btn-dark:disabled{color:#fff;background-color:#343a40;border-color:#343a40}.btn-dark:not(:disabled):not(.disabled).active,.btn-dark:not(:disabled):not(.disabled):active,.show>.btn-dark.dropdown-toggle{color:#fff;background-color:#1d2124;border-color:#171a1d}.btn-dark:not(:disabled):not(.disabled).active:focus,.btn-dark:not(:disabled):not(.disabled):active:focus,.show>.btn-dark.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(52,58,64,.5)}.btn-outline-primary{color:#3490dc;background-color:transparent;background-image:none;border-color:#3490dc}.btn-outline-primary:hover{color:#fff;background-color:#3490dc;border-color:#3490dc}.btn-outline-primary.focus,.btn-outline-primary:focus{box-shadow:0 0 0 .2rem rgba(52,144,220,.5)}.btn-outline-primary.disabled,.btn-outline-primary:disabled{color:#3490dc;background-color:transparent}.btn-outline-primary:not(:disabled):not(.disabled).active,.btn-outline-primary:not(:disabled):not(.disabled):active,.show>.btn-outline-primary.dropdown-toggle{color:#fff;background-color:#3490dc;border-color:#3490dc}.btn-outline-primary:not(:disabled):not(.disabled).active:focus,.btn-outline-primary:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-primary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(52,144,220,.5)}.btn-outline-secondary{color:#6c757d;background-color:transparent;background-image:none;border-color:#6c757d}.btn-outline-secondary:hover{color:#fff;background-color:#6c757d;border-color:#6c757d}.btn-outline-secondary.focus,.btn-outline-secondary:focus{box-shadow:0 0 0 .2rem rgba(108,117,125,.5)}.btn-outline-secondary.disabled,.btn-outline-secondary:disabled{color:#6c757d;background-color:transparent}.btn-outline-secondary:not(:disabled):not(.disabled).active,.btn-outline-secondary:not(:disabled):not(.disabled):active,.show>.btn-outline-secondary.dropdown-toggle{color:#fff;background-color:#6c757d;border-color:#6c757d}.btn-outline-secondary:not(:disabled):not(.disabled).active:focus,.btn-outline-secondary:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-secondary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(108,117,125,.5)}.btn-outline-success{color:#38c172;background-color:transparent;background-image:none;border-color:#38c172}.btn-outline-success:hover{color:#fff;background-color:#38c172;border-color:#38c172}.btn-outline-success.focus,.btn-outline-success:focus{box-shadow:0 0 0 .2rem rgba(56,193,114,.5)}.btn-outline-success.disabled,.btn-outline-success:disabled{color:#38c172;background-color:transparent}.btn-outline-success:not(:disabled):not(.disabled).active,.btn-outline-success:not(:disabled):not(.disabled):active,.show>.btn-outline-success.dropdown-toggle{color:#fff;background-color:#38c172;border-color:#38c172}.btn-outline-success:not(:disabled):not(.disabled).active:focus,.btn-outline-success:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-success.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(56,193,114,.5)}.btn-outline-info{color:#6cb2eb;background-color:transparent;background-image:none;border-color:#6cb2eb}.btn-outline-info:hover{color:#212529;background-color:#6cb2eb;border-color:#6cb2eb}.btn-outline-info.focus,.btn-outline-info:focus{box-shadow:0 0 0 .2rem rgba(108,178,235,.5)}.btn-outline-info.disabled,.btn-outline-info:disabled{color:#6cb2eb;background-color:transparent}.btn-outline-info:not(:disabled):not(.disabled).active,.btn-outline-info:not(:disabled):not(.disabled):active,.show>.btn-outline-info.dropdown-toggle{color:#212529;background-color:#6cb2eb;border-color:#6cb2eb}.btn-outline-info:not(:disabled):not(.disabled).active:focus,.btn-outline-info:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-info.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(108,178,235,.5)}.btn-outline-warning{color:#ffed4a;background-color:transparent;background-image:none;border-color:#ffed4a}.btn-outline-warning:hover{color:#212529;background-color:#ffed4a;border-color:#ffed4a}.btn-outline-warning.focus,.btn-outline-warning:focus{box-shadow:0 0 0 .2rem rgba(255,237,74,.5)}.btn-outline-warning.disabled,.btn-outline-warning:disabled{color:#ffed4a;background-color:transparent}.btn-outline-warning:not(:disabled):not(.disabled).active,.btn-outline-warning:not(:disabled):not(.disabled):active,.show>.btn-outline-warning.dropdown-toggle{color:#212529;background-color:#ffed4a;border-color:#ffed4a}.btn-outline-warning:not(:disabled):not(.disabled).active:focus,.btn-outline-warning:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-warning.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(255,237,74,.5)}.btn-outline-danger{color:#e3342f;background-color:transparent;background-image:none;border-color:#e3342f}.btn-outline-danger:hover{color:#fff;background-color:#e3342f;border-color:#e3342f}.btn-outline-danger.focus,.btn-outline-danger:focus{box-shadow:0 0 0 .2rem rgba(227,52,47,.5)}.btn-outline-danger.disabled,.btn-outline-danger:disabled{color:#e3342f;background-color:transparent}.btn-outline-danger:not(:disabled):not(.disabled).active,.btn-outline-danger:not(:disabled):not(.disabled):active,.show>.btn-outline-danger.dropdown-toggle{color:#fff;background-color:#e3342f;border-color:#e3342f}.btn-outline-danger:not(:disabled):not(.disabled).active:focus,.btn-outline-danger:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-danger.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(227,52,47,.5)}.btn-outline-light{color:#f8f9fa;background-color:transparent;background-image:none;border-color:#f8f9fa}.btn-outline-light:hover{color:#212529;background-color:#f8f9fa;border-color:#f8f9fa}.btn-outline-light.focus,.btn-outline-light:focus{box-shadow:0 0 0 .2rem rgba(248,249,250,.5)}.btn-outline-light.disabled,.btn-outline-light:disabled{color:#f8f9fa;background-color:transparent}.btn-outline-light:not(:disabled):not(.disabled).active,.btn-outline-light:not(:disabled):not(.disabled):active,.show>.btn-outline-light.dropdown-toggle{color:#212529;background-color:#f8f9fa;border-color:#f8f9fa}.btn-outline-light:not(:disabled):not(.disabled).active:focus,.btn-outline-light:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-light.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(248,249,250,.5)}.btn-outline-dark{color:#343a40;background-color:transparent;background-image:none;border-color:#343a40}.btn-outline-dark:hover{color:#fff;background-color:#343a40;border-color:#343a40}.btn-outline-dark.focus,.btn-outline-dark:focus{box-shadow:0 0 0 .2rem rgba(52,58,64,.5)}.btn-outline-dark.disabled,.btn-outline-dark:disabled{color:#343a40;background-color:transparent}.btn-outline-dark:not(:disabled):not(.disabled).active,.btn-outline-dark:not(:disabled):not(.disabled):active,.show>.btn-outline-dark.dropdown-toggle{color:#fff;background-color:#343a40;border-color:#343a40}.btn-outline-dark:not(:disabled):not(.disabled).active:focus,.btn-outline-dark:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-dark.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(52,58,64,.5)}.btn-link{font-weight:400;color:#3490dc;background-color:transparent}.btn-link:hover{color:#1d68a7;background-color:transparent}.btn-link.focus,.btn-link:focus,.btn-link:hover{text-decoration:underline;border-color:transparent}.btn-link.focus,.btn-link:focus{box-shadow:none}.btn-link.disabled,.btn-link:disabled{color:#6c757d;pointer-events:none}.btn-group-lg>.btn,.btn-lg{padding:.5rem 1rem;font-size:1.125rem;line-height:1.5;border-radius:.3rem}.btn-group-sm>.btn,.btn-sm{padding:.25rem .5rem;font-size:.7875rem;line-height:1.5;border-radius:.2rem}.btn-block{display:block;width:100%}.btn-block+.btn-block{margin-top:.5rem}input[type=button].btn-block,input[type=reset].btn-block,input[type=submit].btn-block{width:100%}.fade{transition:opacity .15s linear}@media screen and (prefers-reduced-motion:reduce){.fade{transition:none}}.fade:not(.show){opacity:0}.collapse:not(.show){display:none}.collapsing{position:relative;height:0;overflow:hidden;transition:height .35s ease}@media screen and (prefers-reduced-motion:reduce){.collapsing{transition:none}}.dropdown,.dropleft,.dropright,.dropup{position:relative}.dropdown-toggle:after{display:inline-block;width:0;height:0;margin-left:.255em;vertical-align:.255em;content:"";border-top:.3em solid;border-right:.3em solid transparent;border-bottom:0;border-left:.3em solid transparent}.dropdown-toggle:empty:after{margin-left:0}.dropdown-menu{position:absolute;top:100%;left:0;z-index:1000;display:none;float:left;min-width:10rem;padding:.5rem 0;margin:.125rem 0 0;font-size:.9rem;color:#212529;text-align:left;list-style:none;background-color:#fff;background-clip:padding-box;border:1px solid rgba(0,0,0,.15);border-radius:.25rem}.dropdown-menu-right{right:0;left:auto}.dropup .dropdown-menu{top:auto;bottom:100%;margin-top:0;margin-bottom:.125rem}.dropup .dropdown-toggle:after{display:inline-block;width:0;height:0;margin-left:.255em;vertical-align:.255em;content:"";border-top:0;border-right:.3em solid transparent;border-bottom:.3em solid;border-left:.3em solid transparent}.dropup .dropdown-toggle:empty:after{margin-left:0}.dropright .dropdown-menu{top:0;right:auto;left:100%;margin-top:0;margin-left:.125rem}.dropright .dropdown-toggle:after{display:inline-block;width:0;height:0;margin-left:.255em;vertical-align:.255em;content:"";border-top:.3em solid transparent;border-right:0;border-bottom:.3em solid transparent;border-left:.3em solid}.dropright .dropdown-toggle:empty:after{margin-left:0}.dropright .dropdown-toggle:after{vertical-align:0}.dropleft .dropdown-menu{top:0;right:100%;left:auto;margin-top:0;margin-right:.125rem}.dropleft .dropdown-toggle:after{display:inline-block;width:0;height:0;margin-left:.255em;vertical-align:.255em;content:"";display:none}.dropleft .dropdown-toggle:before{display:inline-block;width:0;height:0;margin-right:.255em;vertical-align:.255em;content:"";border-top:.3em solid transparent;border-right:.3em solid;border-bottom:.3em solid transparent}.dropleft .dropdown-toggle:empty:after{margin-left:0}.dropleft .dropdown-toggle:before{vertical-align:0}.dropdown-menu[x-placement^=bottom],.dropdown-menu[x-placement^=left],.dropdown-menu[x-placement^=right],.dropdown-menu[x-placement^=top]{right:auto;bottom:auto}.dropdown-divider{height:0;margin:.5rem 0;overflow:hidden;border-top:1px solid #e9ecef}.dropdown-item{display:block;width:100%;padding:.25rem 1.5rem;clear:both;font-weight:400;color:#212529;text-align:inherit;white-space:nowrap;background-color:transparent;border:0}.dropdown-item:focus,.dropdown-item:hover{color:#16181b;text-decoration:none;background-color:#f8f9fa}.dropdown-item.active,.dropdown-item:active{color:#fff;text-decoration:none;background-color:#3490dc}.dropdown-item.disabled,.dropdown-item:disabled{color:#6c757d;background-color:transparent}.dropdown-menu.show{display:block}.dropdown-header{display:block;padding:.5rem 1.5rem;margin-bottom:0;font-size:.7875rem;color:#6c757d;white-space:nowrap}.dropdown-item-text{display:block;padding:.25rem 1.5rem;color:#212529}.btn-group,.btn-group-vertical{position:relative;display:inline-flex;vertical-align:middle}.btn-group-vertical>.btn,.btn-group>.btn{position:relative;flex:0 1 auto}.btn-group-vertical>.btn.active,.btn-group-vertical>.btn:active,.btn-group-vertical>.btn:focus,.btn-group-vertical>.btn:hover,.btn-group>.btn.active,.btn-group>.btn:active,.btn-group>.btn:focus,.btn-group>.btn:hover{z-index:1}.btn-group-vertical .btn+.btn,.btn-group-vertical .btn+.btn-group,.btn-group-vertical .btn-group+.btn,.btn-group-vertical .btn-group+.btn-group,.btn-group .btn+.btn,.btn-group .btn+.btn-group,.btn-group .btn-group+.btn,.btn-group .btn-group+.btn-group{margin-left:-1px}.btn-toolbar{display:flex;flex-wrap:wrap;justify-content:flex-start}.btn-toolbar .input-group{width:auto}.btn-group>.btn:first-child{margin-left:0}.btn-group>.btn-group:not(:last-child)>.btn,.btn-group>.btn:not(:last-child):not(.dropdown-toggle){border-top-right-radius:0;border-bottom-right-radius:0}.btn-group>.btn-group:not(:first-child)>.btn,.btn-group>.btn:not(:first-child){border-top-left-radius:0;border-bottom-left-radius:0}.dropdown-toggle-split{padding-right:.5625rem;padding-left:.5625rem}.dropdown-toggle-split:after,.dropright .dropdown-toggle-split:after,.dropup .dropdown-toggle-split:after{margin-left:0}.dropleft .dropdown-toggle-split:before{margin-right:0}.btn-group-sm>.btn+.dropdown-toggle-split,.btn-sm+.dropdown-toggle-split{padding-right:.375rem;padding-left:.375rem}.btn-group-lg>.btn+.dropdown-toggle-split,.btn-lg+.dropdown-toggle-split{padding-right:.75rem;padding-left:.75rem}.btn-group-vertical{flex-direction:column;align-items:flex-start;justify-content:center}.btn-group-vertical .btn,.btn-group-vertical .btn-group{width:100%}.btn-group-vertical>.btn+.btn,.btn-group-vertical>.btn+.btn-group,.btn-group-vertical>.btn-group+.btn,.btn-group-vertical>.btn-group+.btn-group{margin-top:-1px;margin-left:0}.btn-group-vertical>.btn-group:not(:last-child)>.btn,.btn-group-vertical>.btn:not(:last-child):not(.dropdown-toggle){border-bottom-right-radius:0;border-bottom-left-radius:0}.btn-group-vertical>.btn-group:not(:first-child)>.btn,.btn-group-vertical>.btn:not(:first-child){border-top-left-radius:0;border-top-right-radius:0}.btn-group-toggle>.btn,.btn-group-toggle>.btn-group>.btn{margin-bottom:0}.btn-group-toggle>.btn-group>.btn input[type=checkbox],.btn-group-toggle>.btn-group>.btn input[type=radio],.btn-group-toggle>.btn input[type=checkbox],.btn-group-toggle>.btn input[type=radio]{position:absolute;clip:rect(0,0,0,0);pointer-events:none}.input-group{position:relative;display:flex;flex-wrap:wrap;align-items:stretch;width:100%}.input-group>.custom-file,.input-group>.custom-select,.input-group>.form-control{position:relative;flex:1 1 auto;width:1%;margin-bottom:0}.input-group>.custom-file+.custom-file,.input-group>.custom-file+.custom-select,.input-group>.custom-file+.form-control,.input-group>.custom-select+.custom-file,.input-group>.custom-select+.custom-select,.input-group>.custom-select+.form-control,.input-group>.form-control+.custom-file,.input-group>.form-control+.custom-select,.input-group>.form-control+.form-control{margin-left:-1px}.input-group>.custom-file .custom-file-input:focus~.custom-file-label,.input-group>.custom-select:focus,.input-group>.form-control:focus{z-index:3}.input-group>.custom-file .custom-file-input:focus{z-index:4}.input-group>.custom-select:not(:last-child),.input-group>.form-control:not(:last-child){border-top-right-radius:0;border-bottom-right-radius:0}.input-group>.custom-select:not(:first-child),.input-group>.form-control:not(:first-child){border-top-left-radius:0;border-bottom-left-radius:0}.input-group>.custom-file{display:flex;align-items:center}.input-group>.custom-file:not(:last-child) .custom-file-label,.input-group>.custom-file:not(:last-child) .custom-file-label:after{border-top-right-radius:0;border-bottom-right-radius:0}.input-group>.custom-file:not(:first-child) .custom-file-label{border-top-left-radius:0;border-bottom-left-radius:0}.input-group-append,.input-group-prepend{display:flex}.input-group-append .btn,.input-group-prepend .btn{position:relative;z-index:2}.input-group-append .btn+.btn,.input-group-append .btn+.input-group-text,.input-group-append .input-group-text+.btn,.input-group-append .input-group-text+.input-group-text,.input-group-prepend .btn+.btn,.input-group-prepend .btn+.input-group-text,.input-group-prepend .input-group-text+.btn,.input-group-prepend .input-group-text+.input-group-text{margin-left:-1px}.input-group-prepend{margin-right:-1px}.input-group-append{margin-left:-1px}.input-group-text{display:flex;align-items:center;padding:.375rem .75rem;margin-bottom:0;font-size:.9rem;font-weight:400;line-height:1.6;color:#495057;text-align:center;white-space:nowrap;background-color:#e9ecef;border:1px solid #ced4da;border-radius:.25rem}.input-group-text input[type=checkbox],.input-group-text input[type=radio]{margin-top:0}.input-group-lg>.form-control,.input-group-lg>.input-group-append>.btn,.input-group-lg>.input-group-append>.input-group-text,.input-group-lg>.input-group-prepend>.btn,.input-group-lg>.input-group-prepend>.input-group-text{height:calc(2.6875rem + 2px);padding:.5rem 1rem;font-size:1.125rem;line-height:1.5;border-radius:.3rem}.input-group-sm>.form-control,.input-group-sm>.input-group-append>.btn,.input-group-sm>.input-group-append>.input-group-text,.input-group-sm>.input-group-prepend>.btn,.input-group-sm>.input-group-prepend>.input-group-text{height:calc(1.68125rem + 2px);padding:.25rem .5rem;font-size:.7875rem;line-height:1.5;border-radius:.2rem}.input-group>.input-group-append:last-child>.btn:not(:last-child):not(.dropdown-toggle),.input-group>.input-group-append:last-child>.input-group-text:not(:last-child),.input-group>.input-group-append:not(:last-child)>.btn,.input-group>.input-group-append:not(:last-child)>.input-group-text,.input-group>.input-group-prepend>.btn,.input-group>.input-group-prepend>.input-group-text{border-top-right-radius:0;border-bottom-right-radius:0}.input-group>.input-group-append>.btn,.input-group>.input-group-append>.input-group-text,.input-group>.input-group-prepend:first-child>.btn:not(:first-child),.input-group>.input-group-prepend:first-child>.input-group-text:not(:first-child),.input-group>.input-group-prepend:not(:first-child)>.btn,.input-group>.input-group-prepend:not(:first-child)>.input-group-text{border-top-left-radius:0;border-bottom-left-radius:0}.custom-control{position:relative;display:block;min-height:1.44rem;padding-left:1.5rem}.custom-control-inline{display:inline-flex;margin-right:1rem}.custom-control-input{position:absolute;z-index:-1;opacity:0}.custom-control-input:checked~.custom-control-label:before{color:#fff;background-color:#3490dc}.custom-control-input:focus~.custom-control-label:before{box-shadow:0 0 0 1px #f8fafc,0 0 0 .2rem rgba(52,144,220,.25)}.custom-control-input:active~.custom-control-label:before{color:#fff;background-color:#cce3f6}.custom-control-input:disabled~.custom-control-label{color:#6c757d}.custom-control-input:disabled~.custom-control-label:before{background-color:#e9ecef}.custom-control-label{position:relative;margin-bottom:0}.custom-control-label:before{pointer-events:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;background-color:#dee2e6}.custom-control-label:after,.custom-control-label:before{position:absolute;top:.22rem;left:-1.5rem;display:block;width:1rem;height:1rem;content:""}.custom-control-label:after{background-repeat:no-repeat;background-position:50%;background-size:50% 50%}.custom-checkbox .custom-control-label:before{border-radius:.25rem}.custom-checkbox .custom-control-input:checked~.custom-control-label:before{background-color:#3490dc}.custom-checkbox .custom-control-input:checked~.custom-control-label:after{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3E%3Cpath fill='%23fff' d='M6.564.75l-3.59 3.612-1.538-1.55L0 4.26 2.974 7.25 8 2.193z'/%3E%3C/svg%3E")}.custom-checkbox .custom-control-input:indeterminate~.custom-control-label:before{background-color:#3490dc}.custom-checkbox .custom-control-input:indeterminate~.custom-control-label:after{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 4'%3E%3Cpath stroke='%23fff' d='M0 2h4'/%3E%3C/svg%3E")}.custom-checkbox .custom-control-input:disabled:checked~.custom-control-label:before{background-color:rgba(52,144,220,.5)}.custom-checkbox .custom-control-input:disabled:indeterminate~.custom-control-label:before{background-color:rgba(52,144,220,.5)}.custom-radio .custom-control-label:before{border-radius:50%}.custom-radio .custom-control-input:checked~.custom-control-label:before{background-color:#3490dc}.custom-radio .custom-control-input:checked~.custom-control-label:after{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='-4 -4 8 8'%3E%3Ccircle r='3' fill='%23fff'/%3E%3C/svg%3E")}.custom-radio .custom-control-input:disabled:checked~.custom-control-label:before{background-color:rgba(52,144,220,.5)}.custom-select{display:inline-block;width:100%;height:calc(2.19rem + 2px);padding:.375rem 1.75rem .375rem .75rem;line-height:1.6;color:#495057;vertical-align:middle;background:#fff url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3E%3Cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3E%3C/svg%3E") no-repeat right .75rem center;background-size:8px 10px;border:1px solid #ced4da;border-radius:.25rem;-webkit-appearance:none;-moz-appearance:none;appearance:none}.custom-select:focus{border-color:#a1cbef;outline:0;box-shadow:0 0 0 .2rem rgba(161,203,239,.5)}.custom-select:focus::-ms-value{color:#495057;background-color:#fff}.custom-select[multiple],.custom-select[size]:not([size="1"]){height:auto;padding-right:.75rem;background-image:none}.custom-select:disabled{color:#6c757d;background-color:#e9ecef}.custom-select::-ms-expand{opacity:0}.custom-select-sm{height:calc(1.68125rem + 2px);font-size:75%}.custom-select-lg,.custom-select-sm{padding-top:.375rem;padding-bottom:.375rem}.custom-select-lg{height:calc(2.6875rem + 2px);font-size:125%}.custom-file{display:inline-block;margin-bottom:0}.custom-file,.custom-file-input{position:relative;width:100%;height:calc(2.19rem + 2px)}.custom-file-input{z-index:2;margin:0;opacity:0}.custom-file-input:focus~.custom-file-label{border-color:#a1cbef;box-shadow:0 0 0 .2rem rgba(52,144,220,.25)}.custom-file-input:focus~.custom-file-label:after{border-color:#a1cbef}.custom-file-input:disabled~.custom-file-label{background-color:#e9ecef}.custom-file-input:lang(en)~.custom-file-label:after{content:"Browse"}.custom-file-label{left:0;z-index:1;height:calc(2.19rem + 2px);background-color:#fff;border:1px solid #ced4da;border-radius:.25rem}.custom-file-label,.custom-file-label:after{position:absolute;top:0;right:0;padding:.375rem .75rem;line-height:1.6;color:#495057}.custom-file-label:after{bottom:0;z-index:3;display:block;height:2.19rem;content:"Browse";background-color:#e9ecef;border-left:1px solid #ced4da;border-radius:0 .25rem .25rem 0}.custom-range{width:100%;padding-left:0;background-color:transparent;-webkit-appearance:none;-moz-appearance:none;appearance:none}.custom-range:focus{outline:none}.custom-range:focus::-webkit-slider-thumb{box-shadow:0 0 0 1px #f8fafc,0 0 0 .2rem rgba(52,144,220,.25)}.custom-range:focus::-moz-range-thumb{box-shadow:0 0 0 1px #f8fafc,0 0 0 .2rem rgba(52,144,220,.25)}.custom-range:focus::-ms-thumb{box-shadow:0 0 0 1px #f8fafc,0 0 0 .2rem rgba(52,144,220,.25)}.custom-range::-moz-focus-outer{border:0}.custom-range::-webkit-slider-thumb{width:1rem;height:1rem;margin-top:-.25rem;background-color:#3490dc;border:0;border-radius:1rem;transition:background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;-webkit-appearance:none;appearance:none}@media screen and (prefers-reduced-motion:reduce){.custom-range::-webkit-slider-thumb{transition:none}}.custom-range::-webkit-slider-thumb:active{background-color:#cce3f6}.custom-range::-webkit-slider-runnable-track{width:100%;height:.5rem;color:transparent;cursor:pointer;background-color:#dee2e6;border-color:transparent;border-radius:1rem}.custom-range::-moz-range-thumb{width:1rem;height:1rem;background-color:#3490dc;border:0;border-radius:1rem;transition:background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;-moz-appearance:none;appearance:none}@media screen and (prefers-reduced-motion:reduce){.custom-range::-moz-range-thumb{transition:none}}.custom-range::-moz-range-thumb:active{background-color:#cce3f6}.custom-range::-moz-range-track{width:100%;height:.5rem;color:transparent;cursor:pointer;background-color:#dee2e6;border-color:transparent;border-radius:1rem}.custom-range::-ms-thumb{width:1rem;height:1rem;margin-top:0;margin-right:.2rem;margin-left:.2rem;background-color:#3490dc;border:0;border-radius:1rem;transition:background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;appearance:none}@media screen and (prefers-reduced-motion:reduce){.custom-range::-ms-thumb{transition:none}}.custom-range::-ms-thumb:active{background-color:#cce3f6}.custom-range::-ms-track{width:100%;height:.5rem;color:transparent;cursor:pointer;background-color:transparent;border-color:transparent;border-width:.5rem}.custom-range::-ms-fill-lower,.custom-range::-ms-fill-upper{background-color:#dee2e6;border-radius:1rem}.custom-range::-ms-fill-upper{margin-right:15px}.custom-control-label:before,.custom-file-label,.custom-select{transition:background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out}@media screen and (prefers-reduced-motion:reduce){.custom-control-label:before,.custom-file-label,.custom-select{transition:none}}.nav{display:flex;flex-wrap:wrap;padding-left:0;margin-bottom:0;list-style:none}.nav-link{display:block;padding:.5rem 1rem}.nav-link:focus,.nav-link:hover{text-decoration:none}.nav-link.disabled{color:#6c757d}.nav-tabs{border-bottom:1px solid #dee2e6}.nav-tabs .nav-item{margin-bottom:-1px}.nav-tabs .nav-link{border:1px solid transparent;border-top-left-radius:.25rem;border-top-right-radius:.25rem}.nav-tabs .nav-link:focus,.nav-tabs .nav-link:hover{border-color:#e9ecef #e9ecef #dee2e6}.nav-tabs .nav-link.disabled{color:#6c757d;background-color:transparent;border-color:transparent}.nav-tabs .nav-item.show .nav-link,.nav-tabs .nav-link.active{color:#495057;background-color:#f8fafc;border-color:#dee2e6 #dee2e6 #f8fafc}.nav-tabs .dropdown-menu{margin-top:-1px;border-top-left-radius:0;border-top-right-radius:0}.nav-pills .nav-link{border-radius:.25rem}.nav-pills .nav-link.active,.nav-pills .show>.nav-link{color:#fff;background-color:#3490dc}.nav-fill .nav-item{flex:1 1 auto;text-align:center}.nav-justified .nav-item{flex-basis:0;flex-grow:1;text-align:center}.tab-content>.tab-pane{display:none}.tab-content>.active{display:block}.navbar{position:relative;padding:.5rem 1rem}.navbar,.navbar>.container,.navbar>.container-fluid{display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between}.navbar-brand{display:inline-block;padding-top:.32rem;padding-bottom:.32rem;margin-right:1rem;font-size:1.125rem;line-height:inherit;white-space:nowrap}.navbar-brand:focus,.navbar-brand:hover{text-decoration:none}.navbar-nav{display:flex;flex-direction:column;padding-left:0;margin-bottom:0;list-style:none}.navbar-nav .nav-link{padding-right:0;padding-left:0}.navbar-nav .dropdown-menu{position:static;float:none}.navbar-text{display:inline-block;padding-top:.5rem;padding-bottom:.5rem}.navbar-collapse{flex-basis:100%;flex-grow:1;align-items:center}.navbar-toggler{padding:.25rem .75rem;font-size:1.125rem;line-height:1;background-color:transparent;border:1px solid transparent;border-radius:.25rem}.navbar-toggler:focus,.navbar-toggler:hover{text-decoration:none}.navbar-toggler:not(:disabled):not(.disabled){cursor:pointer}.navbar-toggler-icon{display:inline-block;width:1.5em;height:1.5em;vertical-align:middle;content:"";background:no-repeat 50%;background-size:100% 100%}@media (max-width:575.98px){.navbar-expand-sm>.container,.navbar-expand-sm>.container-fluid{padding-right:0;padding-left:0}}@media (min-width:576px){.navbar-expand-sm{flex-flow:row nowrap;justify-content:flex-start}.navbar-expand-sm .navbar-nav{flex-direction:row}.navbar-expand-sm .navbar-nav .dropdown-menu{position:absolute}.navbar-expand-sm .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand-sm>.container,.navbar-expand-sm>.container-fluid{flex-wrap:nowrap}.navbar-expand-sm .navbar-collapse{display:flex!important;flex-basis:auto}.navbar-expand-sm .navbar-toggler{display:none}}@media (max-width:767.98px){.navbar-expand-md>.container,.navbar-expand-md>.container-fluid{padding-right:0;padding-left:0}}@media (min-width:768px){.navbar-expand-md{flex-flow:row nowrap;justify-content:flex-start}.navbar-expand-md .navbar-nav{flex-direction:row}.navbar-expand-md .navbar-nav .dropdown-menu{position:absolute}.navbar-expand-md .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand-md>.container,.navbar-expand-md>.container-fluid{flex-wrap:nowrap}.navbar-expand-md .navbar-collapse{display:flex!important;flex-basis:auto}.navbar-expand-md .navbar-toggler{display:none}}@media (max-width:991.98px){.navbar-expand-lg>.container,.navbar-expand-lg>.container-fluid{padding-right:0;padding-left:0}}@media (min-width:992px){.navbar-expand-lg{flex-flow:row nowrap;justify-content:flex-start}.navbar-expand-lg .navbar-nav{flex-direction:row}.navbar-expand-lg .navbar-nav .dropdown-menu{position:absolute}.navbar-expand-lg .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand-lg>.container,.navbar-expand-lg>.container-fluid{flex-wrap:nowrap}.navbar-expand-lg .navbar-collapse{display:flex!important;flex-basis:auto}.navbar-expand-lg .navbar-toggler{display:none}}@media (max-width:1199.98px){.navbar-expand-xl>.container,.navbar-expand-xl>.container-fluid{padding-right:0;padding-left:0}}@media (min-width:1200px){.navbar-expand-xl{flex-flow:row nowrap;justify-content:flex-start}.navbar-expand-xl .navbar-nav{flex-direction:row}.navbar-expand-xl .navbar-nav .dropdown-menu{position:absolute}.navbar-expand-xl .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand-xl>.container,.navbar-expand-xl>.container-fluid{flex-wrap:nowrap}.navbar-expand-xl .navbar-collapse{display:flex!important;flex-basis:auto}.navbar-expand-xl .navbar-toggler{display:none}}.navbar-expand{flex-flow:row nowrap;justify-content:flex-start}.navbar-expand>.container,.navbar-expand>.container-fluid{padding-right:0;padding-left:0}.navbar-expand .navbar-nav{flex-direction:row}.navbar-expand .navbar-nav .dropdown-menu{position:absolute}.navbar-expand .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand>.container,.navbar-expand>.container-fluid{flex-wrap:nowrap}.navbar-expand .navbar-collapse{display:flex!important;flex-basis:auto}.navbar-expand .navbar-toggler{display:none}.navbar-light .navbar-brand,.navbar-light .navbar-brand:focus,.navbar-light .navbar-brand:hover{color:rgba(0,0,0,.9)}.navbar-light .navbar-nav .nav-link{color:rgba(0,0,0,.5)}.navbar-light .navbar-nav .nav-link:focus,.navbar-light .navbar-nav .nav-link:hover{color:rgba(0,0,0,.7)}.navbar-light .navbar-nav .nav-link.disabled{color:rgba(0,0,0,.3)}.navbar-light .navbar-nav .active>.nav-link,.navbar-light .navbar-nav .nav-link.active,.navbar-light .navbar-nav .nav-link.show,.navbar-light .navbar-nav .show>.nav-link{color:rgba(0,0,0,.9)}.navbar-light .navbar-toggler{color:rgba(0,0,0,.5);border-color:rgba(0,0,0,.1)}.navbar-light .navbar-toggler-icon{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(0, 0, 0, 0.5)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E")}.navbar-light .navbar-text{color:rgba(0,0,0,.5)}.navbar-light .navbar-text a,.navbar-light .navbar-text a:focus,.navbar-light .navbar-text a:hover{color:rgba(0,0,0,.9)}.navbar-dark .navbar-brand,.navbar-dark .navbar-brand:focus,.navbar-dark .navbar-brand:hover{color:#fff}.navbar-dark .navbar-nav .nav-link{color:hsla(0,0%,100%,.5)}.navbar-dark .navbar-nav .nav-link:focus,.navbar-dark .navbar-nav .nav-link:hover{color:hsla(0,0%,100%,.75)}.navbar-dark .navbar-nav .nav-link.disabled{color:hsla(0,0%,100%,.25)}.navbar-dark .navbar-nav .active>.nav-link,.navbar-dark .navbar-nav .nav-link.active,.navbar-dark .navbar-nav .nav-link.show,.navbar-dark .navbar-nav .show>.nav-link{color:#fff}.navbar-dark .navbar-toggler{color:hsla(0,0%,100%,.5);border-color:hsla(0,0%,100%,.1)}.navbar-dark .navbar-toggler-icon{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(255, 255, 255, 0.5)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E")}.navbar-dark .navbar-text{color:hsla(0,0%,100%,.5)}.navbar-dark .navbar-text a,.navbar-dark .navbar-text a:focus,.navbar-dark .navbar-text a:hover{color:#fff}.card{position:relative;display:flex;flex-direction:column;min-width:0;word-wrap:break-word;background-color:#fff;background-clip:border-box;border:1px solid rgba(0,0,0,.125);border-radius:.25rem}.card>hr{margin-right:0;margin-left:0}.card>.list-group:first-child .list-group-item:first-child{border-top-left-radius:.25rem;border-top-right-radius:.25rem}.card>.list-group:last-child .list-group-item:last-child{border-bottom-right-radius:.25rem;border-bottom-left-radius:.25rem}.card-body{flex:1 1 auto;padding:1.25rem}.card-title{margin-bottom:.75rem}.card-subtitle{margin-top:-.375rem}.card-subtitle,.card-text:last-child{margin-bottom:0}.card-link:hover{text-decoration:none}.card-link+.card-link{margin-left:1.25rem}.card-header{padding:.75rem 1.25rem;margin-bottom:0;background-color:rgba(0,0,0,.03);border-bottom:1px solid rgba(0,0,0,.125)}.card-header:first-child{border-radius:calc(.25rem - 1px) calc(.25rem - 1px) 0 0}.card-header+.list-group .list-group-item:first-child{border-top:0}.card-footer{padding:.75rem 1.25rem;background-color:rgba(0,0,0,.03);border-top:1px solid rgba(0,0,0,.125)}.card-footer:last-child{border-radius:0 0 calc(.25rem - 1px) calc(.25rem - 1px)}.card-header-tabs{margin-bottom:-.75rem;border-bottom:0}.card-header-pills,.card-header-tabs{margin-right:-.625rem;margin-left:-.625rem}.card-img-overlay{position:absolute;top:0;right:0;bottom:0;left:0;padding:1.25rem}.card-img{width:100%;border-radius:calc(.25rem - 1px)}.card-img-top{width:100%;border-top-left-radius:calc(.25rem - 1px);border-top-right-radius:calc(.25rem - 1px)}.card-img-bottom{width:100%;border-bottom-right-radius:calc(.25rem - 1px);border-bottom-left-radius:calc(.25rem - 1px)}.card-deck{display:flex;flex-direction:column}.card-deck .card{margin-bottom:15px}@media (min-width:576px){.card-deck{flex-flow:row wrap;margin-right:-15px;margin-left:-15px}.card-deck .card{display:flex;flex:1 0 0%;flex-direction:column;margin-right:15px;margin-bottom:0;margin-left:15px}}.card-group{display:flex;flex-direction:column}.card-group>.card{margin-bottom:15px}@media (min-width:576px){.card-group{flex-flow:row wrap}.card-group>.card{flex:1 0 0%;margin-bottom:0}.card-group>.card+.card{margin-left:0;border-left:0}.card-group>.card:first-child{border-top-right-radius:0;border-bottom-right-radius:0}.card-group>.card:first-child .card-header,.card-group>.card:first-child .card-img-top{border-top-right-radius:0}.card-group>.card:first-child .card-footer,.card-group>.card:first-child .card-img-bottom{border-bottom-right-radius:0}.card-group>.card:last-child{border-top-left-radius:0;border-bottom-left-radius:0}.card-group>.card:last-child .card-header,.card-group>.card:last-child .card-img-top{border-top-left-radius:0}.card-group>.card:last-child .card-footer,.card-group>.card:last-child .card-img-bottom{border-bottom-left-radius:0}.card-group>.card:only-child{border-radius:.25rem}.card-group>.card:only-child .card-header,.card-group>.card:only-child .card-img-top{border-top-left-radius:.25rem;border-top-right-radius:.25rem}.card-group>.card:only-child .card-footer,.card-group>.card:only-child .card-img-bottom{border-bottom-right-radius:.25rem;border-bottom-left-radius:.25rem}.card-group>.card:not(:first-child):not(:last-child):not(:only-child),.card-group>.card:not(:first-child):not(:last-child):not(:only-child) .card-footer,.card-group>.card:not(:first-child):not(:last-child):not(:only-child) .card-header,.card-group>.card:not(:first-child):not(:last-child):not(:only-child) .card-img-bottom,.card-group>.card:not(:first-child):not(:last-child):not(:only-child) .card-img-top{border-radius:0}}.card-columns .card{margin-bottom:.75rem}@media (min-width:576px){.card-columns{-webkit-column-count:3;column-count:3;-webkit-column-gap:1.25rem;column-gap:1.25rem;orphans:1;widows:1}.card-columns .card{display:inline-block;width:100%}}.accordion .card:not(:first-of-type):not(:last-of-type){border-bottom:0;border-radius:0}.accordion .card:not(:first-of-type) .card-header:first-child{border-radius:0}.accordion .card:first-of-type{border-bottom:0;border-bottom-right-radius:0;border-bottom-left-radius:0}.accordion .card:last-of-type{border-top-left-radius:0;border-top-right-radius:0}.breadcrumb{display:flex;flex-wrap:wrap;padding:.75rem 1rem;margin-bottom:1rem;list-style:none;background-color:#e9ecef;border-radius:.25rem}.breadcrumb-item+.breadcrumb-item{padding-left:.5rem}.breadcrumb-item+.breadcrumb-item:before{display:inline-block;padding-right:.5rem;color:#6c757d;content:"/"}.breadcrumb-item+.breadcrumb-item:hover:before{text-decoration:underline;text-decoration:none}.breadcrumb-item.active{color:#6c757d}.pagination{display:flex;padding-left:0;list-style:none;border-radius:.25rem}.page-link{position:relative;display:block;padding:.5rem .75rem;margin-left:-1px;line-height:1.25;color:#3490dc;background-color:#fff;border:1px solid #dee2e6}.page-link:hover{z-index:2;color:#1d68a7;text-decoration:none;background-color:#e9ecef;border-color:#dee2e6}.page-link:focus{z-index:2;outline:0;box-shadow:0 0 0 .2rem rgba(52,144,220,.25)}.page-link:not(:disabled):not(.disabled){cursor:pointer}.page-item:first-child .page-link{margin-left:0;border-top-left-radius:.25rem;border-bottom-left-radius:.25rem}.page-item:last-child .page-link{border-top-right-radius:.25rem;border-bottom-right-radius:.25rem}.page-item.active .page-link{z-index:1;color:#fff;background-color:#3490dc;border-color:#3490dc}.page-item.disabled .page-link{color:#6c757d;pointer-events:none;cursor:auto;background-color:#fff;border-color:#dee2e6}.pagination-lg .page-link{padding:.75rem 1.5rem;font-size:1.125rem;line-height:1.5}.pagination-lg .page-item:first-child .page-link{border-top-left-radius:.3rem;border-bottom-left-radius:.3rem}.pagination-lg .page-item:last-child .page-link{border-top-right-radius:.3rem;border-bottom-right-radius:.3rem}.pagination-sm .page-link{padding:.25rem .5rem;font-size:.7875rem;line-height:1.5}.pagination-sm .page-item:first-child .page-link{border-top-left-radius:.2rem;border-bottom-left-radius:.2rem}.pagination-sm .page-item:last-child .page-link{border-top-right-radius:.2rem;border-bottom-right-radius:.2rem}.badge{display:inline-block;padding:.25em .4em;font-size:75%;font-weight:700;line-height:1;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:.25rem}.badge:empty{display:none}.btn .badge{position:relative;top:-1px}.badge-pill{padding-right:.6em;padding-left:.6em;border-radius:10rem}.badge-primary{color:#fff;background-color:#3490dc}.badge-primary[href]:focus,.badge-primary[href]:hover{color:#fff;text-decoration:none;background-color:#2176bd}.badge-secondary{color:#fff;background-color:#6c757d}.badge-secondary[href]:focus,.badge-secondary[href]:hover{color:#fff;text-decoration:none;background-color:#545b62}.badge-success{color:#fff;background-color:#38c172}.badge-success[href]:focus,.badge-success[href]:hover{color:#fff;text-decoration:none;background-color:#2d995b}.badge-info{color:#212529;background-color:#6cb2eb}.badge-info[href]:focus,.badge-info[href]:hover{color:#212529;text-decoration:none;background-color:#3f9ae5}.badge-warning{color:#212529;background-color:#ffed4a}.badge-warning[href]:focus,.badge-warning[href]:hover{color:#212529;text-decoration:none;background-color:#ffe817}.badge-danger{color:#fff;background-color:#e3342f}.badge-danger[href]:focus,.badge-danger[href]:hover{color:#fff;text-decoration:none;background-color:#c51f1a}.badge-light{color:#212529;background-color:#f8f9fa}.badge-light[href]:focus,.badge-light[href]:hover{color:#212529;text-decoration:none;background-color:#dae0e5}.badge-dark{color:#fff;background-color:#343a40}.badge-dark[href]:focus,.badge-dark[href]:hover{color:#fff;text-decoration:none;background-color:#1d2124}.jumbotron{padding:2rem 1rem;margin-bottom:2rem;background-color:#e9ecef;border-radius:.3rem}@media (min-width:576px){.jumbotron{padding:4rem 2rem}}.jumbotron-fluid{padding-right:0;padding-left:0;border-radius:0}.alert{position:relative;padding:.75rem 1.25rem;margin-bottom:1rem;border:1px solid transparent;border-radius:.25rem}.alert-heading{color:inherit}.alert-link{font-weight:700}.alert-dismissible{padding-right:3.85rem}.alert-dismissible .close{position:absolute;top:0;right:0;padding:.75rem 1.25rem;color:inherit}.alert-primary{color:#1b4b72;background-color:#d6e9f8;border-color:#c6e0f5}.alert-primary hr{border-top-color:#b0d4f1}.alert-primary .alert-link{color:#113049}.alert-secondary{color:#383d41;background-color:#e2e3e5;border-color:#d6d8db}.alert-secondary hr{border-top-color:#c8cbcf}.alert-secondary .alert-link{color:#202326}.alert-success{color:#1d643b;background-color:#d7f3e3;border-color:#c7eed8}.alert-success hr{border-top-color:#b3e8ca}.alert-success .alert-link{color:#123c24}.alert-info{color:#385d7a;background-color:#e2f0fb;border-color:#d6e9f9}.alert-info hr{border-top-color:#c0ddf6}.alert-info .alert-link{color:#284257}.alert-warning{color:#857b26;background-color:#fffbdb;border-color:#fffacc}.alert-warning hr{border-top-color:#fff8b3}.alert-warning .alert-link{color:#5d561b}.alert-danger{color:#761b18;background-color:#f9d6d5;border-color:#f7c6c5}.alert-danger hr{border-top-color:#f4b0af}.alert-danger .alert-link{color:#4c110f}.alert-light{color:#818182;background-color:#fefefe;border-color:#fdfdfe}.alert-light hr{border-top-color:#ececf6}.alert-light .alert-link{color:#686868}.alert-dark{color:#1b1e21;background-color:#d6d8d9;border-color:#c6c8ca}.alert-dark hr{border-top-color:#b9bbbe}.alert-dark .alert-link{color:#040505}@-webkit-keyframes progress-bar-stripes{0%{background-position:1rem 0}to{background-position:0 0}}@keyframes progress-bar-stripes{0%{background-position:1rem 0}to{background-position:0 0}}.progress{display:flex;height:1rem;overflow:hidden;font-size:.675rem;background-color:#e9ecef;border-radius:.25rem}.progress-bar{display:flex;flex-direction:column;justify-content:center;color:#fff;text-align:center;white-space:nowrap;background-color:#3490dc;transition:width .6s ease}@media screen and (prefers-reduced-motion:reduce){.progress-bar{transition:none}}.progress-bar-striped{background-image:linear-gradient(45deg,hsla(0,0%,100%,.15) 25%,transparent 0,transparent 50%,hsla(0,0%,100%,.15) 0,hsla(0,0%,100%,.15) 75%,transparent 0,transparent);background-size:1rem 1rem}.progress-bar-animated{-webkit-animation:progress-bar-stripes 1s linear infinite;animation:progress-bar-stripes 1s linear infinite}.media{display:flex;align-items:flex-start}.media-body{flex:1}.list-group{display:flex;flex-direction:column;padding-left:0;margin-bottom:0}.list-group-item-action{width:100%;color:#495057;text-align:inherit}.list-group-item-action:focus,.list-group-item-action:hover{color:#495057;text-decoration:none;background-color:#f8f9fa}.list-group-item-action:active{color:#212529;background-color:#e9ecef}.list-group-item{position:relative;display:block;padding:.75rem 1.25rem;margin-bottom:-1px;background-color:#fff;border:1px solid rgba(0,0,0,.125)}.list-group-item:first-child{border-top-left-radius:.25rem;border-top-right-radius:.25rem}.list-group-item:last-child{margin-bottom:0;border-bottom-right-radius:.25rem;border-bottom-left-radius:.25rem}.list-group-item:focus,.list-group-item:hover{z-index:1;text-decoration:none}.list-group-item.disabled,.list-group-item:disabled{color:#6c757d;background-color:#fff}.list-group-item.active{z-index:2;color:#fff;background-color:#3490dc;border-color:#3490dc}.list-group-flush .list-group-item{border-right:0;border-left:0;border-radius:0}.list-group-flush:first-child .list-group-item:first-child{border-top:0}.list-group-flush:last-child .list-group-item:last-child{border-bottom:0}.list-group-item-primary{color:#1b4b72;background-color:#c6e0f5}.list-group-item-primary.list-group-item-action:focus,.list-group-item-primary.list-group-item-action:hover{color:#1b4b72;background-color:#b0d4f1}.list-group-item-primary.list-group-item-action.active{color:#fff;background-color:#1b4b72;border-color:#1b4b72}.list-group-item-secondary{color:#383d41;background-color:#d6d8db}.list-group-item-secondary.list-group-item-action:focus,.list-group-item-secondary.list-group-item-action:hover{color:#383d41;background-color:#c8cbcf}.list-group-item-secondary.list-group-item-action.active{color:#fff;background-color:#383d41;border-color:#383d41}.list-group-item-success{color:#1d643b;background-color:#c7eed8}.list-group-item-success.list-group-item-action:focus,.list-group-item-success.list-group-item-action:hover{color:#1d643b;background-color:#b3e8ca}.list-group-item-success.list-group-item-action.active{color:#fff;background-color:#1d643b;border-color:#1d643b}.list-group-item-info{color:#385d7a;background-color:#d6e9f9}.list-group-item-info.list-group-item-action:focus,.list-group-item-info.list-group-item-action:hover{color:#385d7a;background-color:#c0ddf6}.list-group-item-info.list-group-item-action.active{color:#fff;background-color:#385d7a;border-color:#385d7a}.list-group-item-warning{color:#857b26;background-color:#fffacc}.list-group-item-warning.list-group-item-action:focus,.list-group-item-warning.list-group-item-action:hover{color:#857b26;background-color:#fff8b3}.list-group-item-warning.list-group-item-action.active{color:#fff;background-color:#857b26;border-color:#857b26}.list-group-item-danger{color:#761b18;background-color:#f7c6c5}.list-group-item-danger.list-group-item-action:focus,.list-group-item-danger.list-group-item-action:hover{color:#761b18;background-color:#f4b0af}.list-group-item-danger.list-group-item-action.active{color:#fff;background-color:#761b18;border-color:#761b18}.list-group-item-light{color:#818182;background-color:#fdfdfe}.list-group-item-light.list-group-item-action:focus,.list-group-item-light.list-group-item-action:hover{color:#818182;background-color:#ececf6}.list-group-item-light.list-group-item-action.active{color:#fff;background-color:#818182;border-color:#818182}.list-group-item-dark{color:#1b1e21;background-color:#c6c8ca}.list-group-item-dark.list-group-item-action:focus,.list-group-item-dark.list-group-item-action:hover{color:#1b1e21;background-color:#b9bbbe}.list-group-item-dark.list-group-item-action.active{color:#fff;background-color:#1b1e21;border-color:#1b1e21}.close{float:right;font-size:1.35rem;font-weight:700;line-height:1;color:#000;text-shadow:0 1px 0 #fff;opacity:.5}.close:not(:disabled):not(.disabled){cursor:pointer}.close:not(:disabled):not(.disabled):focus,.close:not(:disabled):not(.disabled):hover{color:#000;text-decoration:none;opacity:.75}button.close{padding:0;background-color:transparent;border:0;-webkit-appearance:none}.modal-open{overflow:hidden}.modal-open .modal{overflow-x:hidden;overflow-y:auto}.modal{position:fixed;top:0;right:0;bottom:0;left:0;z-index:1050;display:none;overflow:hidden;outline:0}.modal-dialog{position:relative;width:auto;margin:.5rem;pointer-events:none}.modal.fade .modal-dialog{transition:-webkit-transform .3s ease-out;transition:transform .3s ease-out;transition:transform .3s ease-out,-webkit-transform .3s ease-out;-webkit-transform:translateY(-25%);transform:translateY(-25%)}@media screen and (prefers-reduced-motion:reduce){.modal.fade .modal-dialog{transition:none}}.modal.show .modal-dialog{-webkit-transform:translate(0);transform:translate(0)}.modal-dialog-centered{display:flex;align-items:center;min-height:calc(100% - 1rem)}.modal-dialog-centered:before{display:block;height:calc(100vh - 1rem);content:""}.modal-content{position:relative;display:flex;flex-direction:column;width:100%;pointer-events:auto;background-color:#fff;background-clip:padding-box;border:1px solid rgba(0,0,0,.2);border-radius:.3rem;outline:0}.modal-backdrop{position:fixed;top:0;right:0;bottom:0;left:0;z-index:1040;background-color:#000}.modal-backdrop.fade{opacity:0}.modal-backdrop.show{opacity:.5}.modal-header{display:flex;align-items:flex-start;justify-content:space-between;padding:1rem;border-bottom:1px solid #e9ecef;border-top-left-radius:.3rem;border-top-right-radius:.3rem}.modal-header .close{padding:1rem;margin:-1rem -1rem -1rem auto}.modal-title{margin-bottom:0;line-height:1.6}.modal-body{position:relative;flex:1 1 auto;padding:1rem}.modal-footer{display:flex;align-items:center;justify-content:flex-end;padding:1rem;border-top:1px solid #e9ecef}.modal-footer>:not(:first-child){margin-left:.25rem}.modal-footer>:not(:last-child){margin-right:.25rem}.modal-scrollbar-measure{position:absolute;top:-9999px;width:50px;height:50px;overflow:scroll}@media (min-width:576px){.modal-dialog{max-width:500px;margin:1.75rem auto}.modal-dialog-centered{min-height:calc(100% - 3.5rem)}.modal-dialog-centered:before{height:calc(100vh - 3.5rem)}.modal-sm{max-width:300px}}@media (min-width:992px){.modal-lg{max-width:800px}}.tooltip{position:absolute;z-index:1070;display:block;margin:0;font-family:Nunito,sans-serif;font-style:normal;font-weight:400;line-height:1.6;text-align:left;text-align:start;text-decoration:none;text-shadow:none;text-transform:none;letter-spacing:normal;word-break:normal;word-spacing:normal;white-space:normal;line-break:auto;font-size:.7875rem;word-wrap:break-word;opacity:0}.tooltip.show{opacity:.9}.tooltip .arrow{position:absolute;display:block;width:.8rem;height:.4rem}.tooltip .arrow:before{position:absolute;content:"";border-color:transparent;border-style:solid}.bs-tooltip-auto[x-placement^=top],.bs-tooltip-top{padding:.4rem 0}.bs-tooltip-auto[x-placement^=top] .arrow,.bs-tooltip-top .arrow{bottom:0}.bs-tooltip-auto[x-placement^=top] .arrow:before,.bs-tooltip-top .arrow:before{top:0;border-width:.4rem .4rem 0;border-top-color:#000}.bs-tooltip-auto[x-placement^=right],.bs-tooltip-right{padding:0 .4rem}.bs-tooltip-auto[x-placement^=right] .arrow,.bs-tooltip-right .arrow{left:0;width:.4rem;height:.8rem}.bs-tooltip-auto[x-placement^=right] .arrow:before,.bs-tooltip-right .arrow:before{right:0;border-width:.4rem .4rem .4rem 0;border-right-color:#000}.bs-tooltip-auto[x-placement^=bottom],.bs-tooltip-bottom{padding:.4rem 0}.bs-tooltip-auto[x-placement^=bottom] .arrow,.bs-tooltip-bottom .arrow{top:0}.bs-tooltip-auto[x-placement^=bottom] .arrow:before,.bs-tooltip-bottom .arrow:before{bottom:0;border-width:0 .4rem .4rem;border-bottom-color:#000}.bs-tooltip-auto[x-placement^=left],.bs-tooltip-left{padding:0 .4rem}.bs-tooltip-auto[x-placement^=left] .arrow,.bs-tooltip-left .arrow{right:0;width:.4rem;height:.8rem}.bs-tooltip-auto[x-placement^=left] .arrow:before,.bs-tooltip-left .arrow:before{left:0;border-width:.4rem 0 .4rem .4rem;border-left-color:#000}.tooltip-inner{max-width:200px;padding:.25rem .5rem;color:#fff;text-align:center;background-color:#000;border-radius:.25rem}.popover{top:0;left:0;z-index:1060;max-width:276px;font-family:Nunito,sans-serif;font-style:normal;font-weight:400;line-height:1.6;text-align:left;text-align:start;text-decoration:none;text-shadow:none;text-transform:none;letter-spacing:normal;word-break:normal;word-spacing:normal;white-space:normal;line-break:auto;font-size:.7875rem;word-wrap:break-word;background-color:#fff;background-clip:padding-box;border:1px solid rgba(0,0,0,.2);border-radius:.3rem}.popover,.popover .arrow{position:absolute;display:block}.popover .arrow{width:1rem;height:.5rem;margin:0 .3rem}.popover .arrow:after,.popover .arrow:before{position:absolute;display:block;content:"";border-color:transparent;border-style:solid}.bs-popover-auto[x-placement^=top],.bs-popover-top{margin-bottom:.5rem}.bs-popover-auto[x-placement^=top] .arrow,.bs-popover-top .arrow{bottom:calc(-.5rem + -1px)}.bs-popover-auto[x-placement^=top] .arrow:after,.bs-popover-auto[x-placement^=top] .arrow:before,.bs-popover-top .arrow:after,.bs-popover-top .arrow:before{border-width:.5rem .5rem 0}.bs-popover-auto[x-placement^=top] .arrow:before,.bs-popover-top .arrow:before{bottom:0;border-top-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=top] .arrow:after,.bs-popover-top .arrow:after{bottom:1px;border-top-color:#fff}.bs-popover-auto[x-placement^=right],.bs-popover-right{margin-left:.5rem}.bs-popover-auto[x-placement^=right] .arrow,.bs-popover-right .arrow{left:calc(-.5rem + -1px);width:.5rem;height:1rem;margin:.3rem 0}.bs-popover-auto[x-placement^=right] .arrow:after,.bs-popover-auto[x-placement^=right] .arrow:before,.bs-popover-right .arrow:after,.bs-popover-right .arrow:before{border-width:.5rem .5rem .5rem 0}.bs-popover-auto[x-placement^=right] .arrow:before,.bs-popover-right .arrow:before{left:0;border-right-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=right] .arrow:after,.bs-popover-right .arrow:after{left:1px;border-right-color:#fff}.bs-popover-auto[x-placement^=bottom],.bs-popover-bottom{margin-top:.5rem}.bs-popover-auto[x-placement^=bottom] .arrow,.bs-popover-bottom .arrow{top:calc(-.5rem + -1px)}.bs-popover-auto[x-placement^=bottom] .arrow:after,.bs-popover-auto[x-placement^=bottom] .arrow:before,.bs-popover-bottom .arrow:after,.bs-popover-bottom .arrow:before{border-width:0 .5rem .5rem}.bs-popover-auto[x-placement^=bottom] .arrow:before,.bs-popover-bottom .arrow:before{top:0;border-bottom-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=bottom] .arrow:after,.bs-popover-bottom .arrow:after{top:1px;border-bottom-color:#fff}.bs-popover-auto[x-placement^=bottom] .popover-header:before,.bs-popover-bottom .popover-header:before{position:absolute;top:0;left:50%;display:block;width:1rem;margin-left:-.5rem;content:"";border-bottom:1px solid #f7f7f7}.bs-popover-auto[x-placement^=left],.bs-popover-left{margin-right:.5rem}.bs-popover-auto[x-placement^=left] .arrow,.bs-popover-left .arrow{right:calc(-.5rem + -1px);width:.5rem;height:1rem;margin:.3rem 0}.bs-popover-auto[x-placement^=left] .arrow:after,.bs-popover-auto[x-placement^=left] .arrow:before,.bs-popover-left .arrow:after,.bs-popover-left .arrow:before{border-width:.5rem 0 .5rem .5rem}.bs-popover-auto[x-placement^=left] .arrow:before,.bs-popover-left .arrow:before{right:0;border-left-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=left] .arrow:after,.bs-popover-left .arrow:after{right:1px;border-left-color:#fff}.popover-header{padding:.5rem .75rem;margin-bottom:0;font-size:.9rem;color:inherit;background-color:#f7f7f7;border-bottom:1px solid #ebebeb;border-top-left-radius:calc(.3rem - 1px);border-top-right-radius:calc(.3rem - 1px)}.popover-header:empty{display:none}.popover-body{padding:.5rem .75rem;color:#212529}.carousel{position:relative}.carousel-inner{position:relative;width:100%;overflow:hidden}.carousel-item{position:relative;display:none;align-items:center;width:100%;-webkit-backface-visibility:hidden;backface-visibility:hidden;-webkit-perspective:1000px;perspective:1000px}.carousel-item-next,.carousel-item-prev,.carousel-item.active{display:block;transition:-webkit-transform .6s ease;transition:transform .6s ease;transition:transform .6s ease,-webkit-transform .6s ease}@media screen and (prefers-reduced-motion:reduce){.carousel-item-next,.carousel-item-prev,.carousel-item.active{transition:none}}.carousel-item-next,.carousel-item-prev{position:absolute;top:0}.carousel-item-next.carousel-item-left,.carousel-item-prev.carousel-item-right{-webkit-transform:translateX(0);transform:translateX(0)}@supports ((-webkit-transform-style:preserve-3d) or (transform-style:preserve-3d)){.carousel-item-next.carousel-item-left,.carousel-item-prev.carousel-item-right{-webkit-transform:translateZ(0);transform:translateZ(0)}}.active.carousel-item-right,.carousel-item-next{-webkit-transform:translateX(100%);transform:translateX(100%)}@supports ((-webkit-transform-style:preserve-3d) or (transform-style:preserve-3d)){.active.carousel-item-right,.carousel-item-next{-webkit-transform:translate3d(100%,0,0);transform:translate3d(100%,0,0)}}.active.carousel-item-left,.carousel-item-prev{-webkit-transform:translateX(-100%);transform:translateX(-100%)}@supports ((-webkit-transform-style:preserve-3d) or (transform-style:preserve-3d)){.active.carousel-item-left,.carousel-item-prev{-webkit-transform:translate3d(-100%,0,0);transform:translate3d(-100%,0,0)}}.carousel-fade .carousel-item{opacity:0;transition-duration:.6s;transition-property:opacity}.carousel-fade .carousel-item-next.carousel-item-left,.carousel-fade .carousel-item-prev.carousel-item-right,.carousel-fade .carousel-item.active{opacity:1}.carousel-fade .active.carousel-item-left,.carousel-fade .active.carousel-item-right{opacity:0}.carousel-fade .active.carousel-item-left,.carousel-fade .active.carousel-item-prev,.carousel-fade .carousel-item-next,.carousel-fade .carousel-item-prev,.carousel-fade .carousel-item.active{-webkit-transform:translateX(0);transform:translateX(0)}@supports ((-webkit-transform-style:preserve-3d) or (transform-style:preserve-3d)){.carousel-fade .active.carousel-item-left,.carousel-fade .active.carousel-item-prev,.carousel-fade .carousel-item-next,.carousel-fade .carousel-item-prev,.carousel-fade .carousel-item.active{-webkit-transform:translateZ(0);transform:translateZ(0)}}.carousel-control-next,.carousel-control-prev{position:absolute;top:0;bottom:0;display:flex;align-items:center;justify-content:center;width:15%;color:#fff;text-align:center;opacity:.5}.carousel-control-next:focus,.carousel-control-next:hover,.carousel-control-prev:focus,.carousel-control-prev:hover{color:#fff;text-decoration:none;outline:0;opacity:.9}.carousel-control-prev{left:0}.carousel-control-next{right:0}.carousel-control-next-icon,.carousel-control-prev-icon{display:inline-block;width:20px;height:20px;background:transparent no-repeat 50%;background-size:100% 100%}.carousel-control-prev-icon{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E")}.carousel-control-next-icon{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E")}.carousel-indicators{position:absolute;right:0;bottom:10px;left:0;z-index:15;display:flex;justify-content:center;padding-left:0;margin-right:15%;margin-left:15%;list-style:none}.carousel-indicators li{position:relative;flex:0 1 auto;width:30px;height:3px;margin-right:3px;margin-left:3px;text-indent:-999px;cursor:pointer;background-color:hsla(0,0%,100%,.5)}.carousel-indicators li:before{top:-10px}.carousel-indicators li:after,.carousel-indicators li:before{position:absolute;left:0;display:inline-block;width:100%;height:10px;content:""}.carousel-indicators li:after{bottom:-10px}.carousel-indicators .active{background-color:#fff}.carousel-caption{position:absolute;right:15%;bottom:20px;left:15%;z-index:10;padding-top:20px;padding-bottom:20px;color:#fff;text-align:center}.align-baseline{vertical-align:baseline!important}.align-top{vertical-align:top!important}.align-middle{vertical-align:middle!important}.align-bottom{vertical-align:bottom!important}.align-text-bottom{vertical-align:text-bottom!important}.align-text-top{vertical-align:text-top!important}.bg-primary{background-color:#3490dc!important}a.bg-primary:focus,a.bg-primary:hover,button.bg-primary:focus,button.bg-primary:hover{background-color:#2176bd!important}.bg-secondary{background-color:#6c757d!important}a.bg-secondary:focus,a.bg-secondary:hover,button.bg-secondary:focus,button.bg-secondary:hover{background-color:#545b62!important}.bg-success{background-color:#38c172!important}a.bg-success:focus,a.bg-success:hover,button.bg-success:focus,button.bg-success:hover{background-color:#2d995b!important}.bg-info{background-color:#6cb2eb!important}a.bg-info:focus,a.bg-info:hover,button.bg-info:focus,button.bg-info:hover{background-color:#3f9ae5!important}.bg-warning{background-color:#ffed4a!important}a.bg-warning:focus,a.bg-warning:hover,button.bg-warning:focus,button.bg-warning:hover{background-color:#ffe817!important}.bg-danger{background-color:#e3342f!important}a.bg-danger:focus,a.bg-danger:hover,button.bg-danger:focus,button.bg-danger:hover{background-color:#c51f1a!important}.bg-light{background-color:#f8f9fa!important}a.bg-light:focus,a.bg-light:hover,button.bg-light:focus,button.bg-light:hover{background-color:#dae0e5!important}.bg-dark{background-color:#343a40!important}a.bg-dark:focus,a.bg-dark:hover,button.bg-dark:focus,button.bg-dark:hover{background-color:#1d2124!important}.bg-white{background-color:#fff!important}.bg-transparent{background-color:transparent!important}.border{border:1px solid #dee2e6!important}.border-top{border-top:1px solid #dee2e6!important}.border-right{border-right:1px solid #dee2e6!important}.border-bottom{border-bottom:1px solid #dee2e6!important}.border-left{border-left:1px solid #dee2e6!important}.border-0{border:0!important}.border-top-0{border-top:0!important}.border-right-0{border-right:0!important}.border-bottom-0{border-bottom:0!important}.border-left-0{border-left:0!important}.border-primary{border-color:#3490dc!important}.border-secondary{border-color:#6c757d!important}.border-success{border-color:#38c172!important}.border-info{border-color:#6cb2eb!important}.border-warning{border-color:#ffed4a!important}.border-danger{border-color:#e3342f!important}.border-light{border-color:#f8f9fa!important}.border-dark{border-color:#343a40!important}.border-white{border-color:#fff!important}.rounded{border-radius:.25rem!important}.rounded-top{border-top-left-radius:.25rem!important}.rounded-right,.rounded-top{border-top-right-radius:.25rem!important}.rounded-bottom,.rounded-right{border-bottom-right-radius:.25rem!important}.rounded-bottom,.rounded-left{border-bottom-left-radius:.25rem!important}.rounded-left{border-top-left-radius:.25rem!important}.rounded-circle{border-radius:50%!important}.rounded-0{border-radius:0!important}.clearfix:after{display:block;clear:both;content:""}.d-none{display:none!important}.d-inline{display:inline!important}.d-inline-block{display:inline-block!important}.d-block{display:block!important}.d-table{display:table!important}.d-table-row{display:table-row!important}.d-table-cell{display:table-cell!important}.d-flex{display:flex!important}.d-inline-flex{display:inline-flex!important}@media (min-width:576px){.d-sm-none{display:none!important}.d-sm-inline{display:inline!important}.d-sm-inline-block{display:inline-block!important}.d-sm-block{display:block!important}.d-sm-table{display:table!important}.d-sm-table-row{display:table-row!important}.d-sm-table-cell{display:table-cell!important}.d-sm-flex{display:flex!important}.d-sm-inline-flex{display:inline-flex!important}}@media (min-width:768px){.d-md-none{display:none!important}.d-md-inline{display:inline!important}.d-md-inline-block{display:inline-block!important}.d-md-block{display:block!important}.d-md-table{display:table!important}.d-md-table-row{display:table-row!important}.d-md-table-cell{display:table-cell!important}.d-md-flex{display:flex!important}.d-md-inline-flex{display:inline-flex!important}}@media (min-width:992px){.d-lg-none{display:none!important}.d-lg-inline{display:inline!important}.d-lg-inline-block{display:inline-block!important}.d-lg-block{display:block!important}.d-lg-table{display:table!important}.d-lg-table-row{display:table-row!important}.d-lg-table-cell{display:table-cell!important}.d-lg-flex{display:flex!important}.d-lg-inline-flex{display:inline-flex!important}}@media (min-width:1200px){.d-xl-none{display:none!important}.d-xl-inline{display:inline!important}.d-xl-inline-block{display:inline-block!important}.d-xl-block{display:block!important}.d-xl-table{display:table!important}.d-xl-table-row{display:table-row!important}.d-xl-table-cell{display:table-cell!important}.d-xl-flex{display:flex!important}.d-xl-inline-flex{display:inline-flex!important}}@media print{.d-print-none{display:none!important}.d-print-inline{display:inline!important}.d-print-inline-block{display:inline-block!important}.d-print-block{display:block!important}.d-print-table{display:table!important}.d-print-table-row{display:table-row!important}.d-print-table-cell{display:table-cell!important}.d-print-flex{display:flex!important}.d-print-inline-flex{display:inline-flex!important}}.embed-responsive{position:relative;display:block;width:100%;padding:0;overflow:hidden}.embed-responsive:before{display:block;content:""}.embed-responsive .embed-responsive-item,.embed-responsive embed,.embed-responsive iframe,.embed-responsive object,.embed-responsive video{position:absolute;top:0;bottom:0;left:0;width:100%;height:100%;border:0}.embed-responsive-21by9:before{padding-top:42.8571428571%}.embed-responsive-16by9:before{padding-top:56.25%}.embed-responsive-4by3:before{padding-top:75%}.embed-responsive-1by1:before{padding-top:100%}.flex-row{flex-direction:row!important}.flex-column{flex-direction:column!important}.flex-row-reverse{flex-direction:row-reverse!important}.flex-column-reverse{flex-direction:column-reverse!important}.flex-wrap{flex-wrap:wrap!important}.flex-nowrap{flex-wrap:nowrap!important}.flex-wrap-reverse{flex-wrap:wrap-reverse!important}.flex-fill{flex:1 1 auto!important}.flex-grow-0{flex-grow:0!important}.flex-grow-1{flex-grow:1!important}.flex-shrink-0{flex-shrink:0!important}.flex-shrink-1{flex-shrink:1!important}.justify-content-start{justify-content:flex-start!important}.justify-content-end{justify-content:flex-end!important}.justify-content-center{justify-content:center!important}.justify-content-between{justify-content:space-between!important}.justify-content-around{justify-content:space-around!important}.align-items-start{align-items:flex-start!important}.align-items-end{align-items:flex-end!important}.align-items-center{align-items:center!important}.align-items-baseline{align-items:baseline!important}.align-items-stretch{align-items:stretch!important}.align-content-start{align-content:flex-start!important}.align-content-end{align-content:flex-end!important}.align-content-center{align-content:center!important}.align-content-between{align-content:space-between!important}.align-content-around{align-content:space-around!important}.align-content-stretch{align-content:stretch!important}.align-self-auto{align-self:auto!important}.align-self-start{align-self:flex-start!important}.align-self-end{align-self:flex-end!important}.align-self-center{align-self:center!important}.align-self-baseline{align-self:baseline!important}.align-self-stretch{align-self:stretch!important}@media (min-width:576px){.flex-sm-row{flex-direction:row!important}.flex-sm-column{flex-direction:column!important}.flex-sm-row-reverse{flex-direction:row-reverse!important}.flex-sm-column-reverse{flex-direction:column-reverse!important}.flex-sm-wrap{flex-wrap:wrap!important}.flex-sm-nowrap{flex-wrap:nowrap!important}.flex-sm-wrap-reverse{flex-wrap:wrap-reverse!important}.flex-sm-fill{flex:1 1 auto!important}.flex-sm-grow-0{flex-grow:0!important}.flex-sm-grow-1{flex-grow:1!important}.flex-sm-shrink-0{flex-shrink:0!important}.flex-sm-shrink-1{flex-shrink:1!important}.justify-content-sm-start{justify-content:flex-start!important}.justify-content-sm-end{justify-content:flex-end!important}.justify-content-sm-center{justify-content:center!important}.justify-content-sm-between{justify-content:space-between!important}.justify-content-sm-around{justify-content:space-around!important}.align-items-sm-start{align-items:flex-start!important}.align-items-sm-end{align-items:flex-end!important}.align-items-sm-center{align-items:center!important}.align-items-sm-baseline{align-items:baseline!important}.align-items-sm-stretch{align-items:stretch!important}.align-content-sm-start{align-content:flex-start!important}.align-content-sm-end{align-content:flex-end!important}.align-content-sm-center{align-content:center!important}.align-content-sm-between{align-content:space-between!important}.align-content-sm-around{align-content:space-around!important}.align-content-sm-stretch{align-content:stretch!important}.align-self-sm-auto{align-self:auto!important}.align-self-sm-start{align-self:flex-start!important}.align-self-sm-end{align-self:flex-end!important}.align-self-sm-center{align-self:center!important}.align-self-sm-baseline{align-self:baseline!important}.align-self-sm-stretch{align-self:stretch!important}}@media (min-width:768px){.flex-md-row{flex-direction:row!important}.flex-md-column{flex-direction:column!important}.flex-md-row-reverse{flex-direction:row-reverse!important}.flex-md-column-reverse{flex-direction:column-reverse!important}.flex-md-wrap{flex-wrap:wrap!important}.flex-md-nowrap{flex-wrap:nowrap!important}.flex-md-wrap-reverse{flex-wrap:wrap-reverse!important}.flex-md-fill{flex:1 1 auto!important}.flex-md-grow-0{flex-grow:0!important}.flex-md-grow-1{flex-grow:1!important}.flex-md-shrink-0{flex-shrink:0!important}.flex-md-shrink-1{flex-shrink:1!important}.justify-content-md-start{justify-content:flex-start!important}.justify-content-md-end{justify-content:flex-end!important}.justify-content-md-center{justify-content:center!important}.justify-content-md-between{justify-content:space-between!important}.justify-content-md-around{justify-content:space-around!important}.align-items-md-start{align-items:flex-start!important}.align-items-md-end{align-items:flex-end!important}.align-items-md-center{align-items:center!important}.align-items-md-baseline{align-items:baseline!important}.align-items-md-stretch{align-items:stretch!important}.align-content-md-start{align-content:flex-start!important}.align-content-md-end{align-content:flex-end!important}.align-content-md-center{align-content:center!important}.align-content-md-between{align-content:space-between!important}.align-content-md-around{align-content:space-around!important}.align-content-md-stretch{align-content:stretch!important}.align-self-md-auto{align-self:auto!important}.align-self-md-start{align-self:flex-start!important}.align-self-md-end{align-self:flex-end!important}.align-self-md-center{align-self:center!important}.align-self-md-baseline{align-self:baseline!important}.align-self-md-stretch{align-self:stretch!important}}@media (min-width:992px){.flex-lg-row{flex-direction:row!important}.flex-lg-column{flex-direction:column!important}.flex-lg-row-reverse{flex-direction:row-reverse!important}.flex-lg-column-reverse{flex-direction:column-reverse!important}.flex-lg-wrap{flex-wrap:wrap!important}.flex-lg-nowrap{flex-wrap:nowrap!important}.flex-lg-wrap-reverse{flex-wrap:wrap-reverse!important}.flex-lg-fill{flex:1 1 auto!important}.flex-lg-grow-0{flex-grow:0!important}.flex-lg-grow-1{flex-grow:1!important}.flex-lg-shrink-0{flex-shrink:0!important}.flex-lg-shrink-1{flex-shrink:1!important}.justify-content-lg-start{justify-content:flex-start!important}.justify-content-lg-end{justify-content:flex-end!important}.justify-content-lg-center{justify-content:center!important}.justify-content-lg-between{justify-content:space-between!important}.justify-content-lg-around{justify-content:space-around!important}.align-items-lg-start{align-items:flex-start!important}.align-items-lg-end{align-items:flex-end!important}.align-items-lg-center{align-items:center!important}.align-items-lg-baseline{align-items:baseline!important}.align-items-lg-stretch{align-items:stretch!important}.align-content-lg-start{align-content:flex-start!important}.align-content-lg-end{align-content:flex-end!important}.align-content-lg-center{align-content:center!important}.align-content-lg-between{align-content:space-between!important}.align-content-lg-around{align-content:space-around!important}.align-content-lg-stretch{align-content:stretch!important}.align-self-lg-auto{align-self:auto!important}.align-self-lg-start{align-self:flex-start!important}.align-self-lg-end{align-self:flex-end!important}.align-self-lg-center{align-self:center!important}.align-self-lg-baseline{align-self:baseline!important}.align-self-lg-stretch{align-self:stretch!important}}@media (min-width:1200px){.flex-xl-row{flex-direction:row!important}.flex-xl-column{flex-direction:column!important}.flex-xl-row-reverse{flex-direction:row-reverse!important}.flex-xl-column-reverse{flex-direction:column-reverse!important}.flex-xl-wrap{flex-wrap:wrap!important}.flex-xl-nowrap{flex-wrap:nowrap!important}.flex-xl-wrap-reverse{flex-wrap:wrap-reverse!important}.flex-xl-fill{flex:1 1 auto!important}.flex-xl-grow-0{flex-grow:0!important}.flex-xl-grow-1{flex-grow:1!important}.flex-xl-shrink-0{flex-shrink:0!important}.flex-xl-shrink-1{flex-shrink:1!important}.justify-content-xl-start{justify-content:flex-start!important}.justify-content-xl-end{justify-content:flex-end!important}.justify-content-xl-center{justify-content:center!important}.justify-content-xl-between{justify-content:space-between!important}.justify-content-xl-around{justify-content:space-around!important}.align-items-xl-start{align-items:flex-start!important}.align-items-xl-end{align-items:flex-end!important}.align-items-xl-center{align-items:center!important}.align-items-xl-baseline{align-items:baseline!important}.align-items-xl-stretch{align-items:stretch!important}.align-content-xl-start{align-content:flex-start!important}.align-content-xl-end{align-content:flex-end!important}.align-content-xl-center{align-content:center!important}.align-content-xl-between{align-content:space-between!important}.align-content-xl-around{align-content:space-around!important}.align-content-xl-stretch{align-content:stretch!important}.align-self-xl-auto{align-self:auto!important}.align-self-xl-start{align-self:flex-start!important}.align-self-xl-end{align-self:flex-end!important}.align-self-xl-center{align-self:center!important}.align-self-xl-baseline{align-self:baseline!important}.align-self-xl-stretch{align-self:stretch!important}}.float-left{float:left!important}.float-right{float:right!important}.float-none{float:none!important}@media (min-width:576px){.float-sm-left{float:left!important}.float-sm-right{float:right!important}.float-sm-none{float:none!important}}@media (min-width:768px){.float-md-left{float:left!important}.float-md-right{float:right!important}.float-md-none{float:none!important}}@media (min-width:992px){.float-lg-left{float:left!important}.float-lg-right{float:right!important}.float-lg-none{float:none!important}}@media (min-width:1200px){.float-xl-left{float:left!important}.float-xl-right{float:right!important}.float-xl-none{float:none!important}}.position-static{position:static!important}.position-relative{position:relative!important}.position-absolute{position:absolute!important}.position-fixed{position:fixed!important}.position-sticky{position:-webkit-sticky!important;position:sticky!important}.fixed-top{top:0}.fixed-bottom,.fixed-top{position:fixed;right:0;left:0;z-index:1030}.fixed-bottom{bottom:0}@supports ((position:-webkit-sticky) or (position:sticky)){.sticky-top{position:-webkit-sticky;position:sticky;top:0;z-index:1020}}.sr-only{position:absolute;width:1px;height:1px;padding:0;overflow:hidden;clip:rect(0,0,0,0);white-space:nowrap;border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;overflow:visible;clip:auto;white-space:normal}.shadow-sm{box-shadow:0 .125rem .25rem rgba(0,0,0,.075)!important}.shadow{box-shadow:0 .5rem 1rem rgba(0,0,0,.15)!important}.shadow-lg{box-shadow:0 1rem 3rem rgba(0,0,0,.175)!important}.shadow-none{box-shadow:none!important}.w-25{width:25%!important}.w-50{width:50%!important}.w-75{width:75%!important}.w-100{width:100%!important}.w-auto{width:auto!important}.h-25{height:25%!important}.h-50{height:50%!important}.h-75{height:75%!important}.h-100{height:100%!important}.h-auto{height:auto!important}.mw-100{max-width:100%!important}.mh-100{max-height:100%!important}.m-0{margin:0!important}.mt-0,.my-0{margin-top:0!important}.mr-0,.mx-0{margin-right:0!important}.mb-0,.my-0{margin-bottom:0!important}.ml-0,.mx-0{margin-left:0!important}.m-1{margin:.25rem!important}.mt-1,.my-1{margin-top:.25rem!important}.mr-1,.mx-1{margin-right:.25rem!important}.mb-1,.my-1{margin-bottom:.25rem!important}.ml-1,.mx-1{margin-left:.25rem!important}.m-2{margin:.5rem!important}.mt-2,.my-2{margin-top:.5rem!important}.mr-2,.mx-2{margin-right:.5rem!important}.mb-2,.my-2{margin-bottom:.5rem!important}.ml-2,.mx-2{margin-left:.5rem!important}.m-3{margin:1rem!important}.mt-3,.my-3{margin-top:1rem!important}.mr-3,.mx-3{margin-right:1rem!important}.mb-3,.my-3{margin-bottom:1rem!important}.ml-3,.mx-3{margin-left:1rem!important}.m-4{margin:1.5rem!important}.mt-4,.my-4{margin-top:1.5rem!important}.mr-4,.mx-4{margin-right:1.5rem!important}.mb-4,.my-4{margin-bottom:1.5rem!important}.ml-4,.mx-4{margin-left:1.5rem!important}.m-5{margin:3rem!important}.mt-5,.my-5{margin-top:3rem!important}.mr-5,.mx-5{margin-right:3rem!important}.mb-5,.my-5{margin-bottom:3rem!important}.ml-5,.mx-5{margin-left:3rem!important}.p-0{padding:0!important}.pt-0,.py-0{padding-top:0!important}.pr-0,.px-0{padding-right:0!important}.pb-0,.py-0{padding-bottom:0!important}.pl-0,.px-0{padding-left:0!important}.p-1{padding:.25rem!important}.pt-1,.py-1{padding-top:.25rem!important}.pr-1,.px-1{padding-right:.25rem!important}.pb-1,.py-1{padding-bottom:.25rem!important}.pl-1,.px-1{padding-left:.25rem!important}.p-2{padding:.5rem!important}.pt-2,.py-2{padding-top:.5rem!important}.pr-2,.px-2{padding-right:.5rem!important}.pb-2,.py-2{padding-bottom:.5rem!important}.pl-2,.px-2{padding-left:.5rem!important}.p-3{padding:1rem!important}.pt-3,.py-3{padding-top:1rem!important}.pr-3,.px-3{padding-right:1rem!important}.pb-3,.py-3{padding-bottom:1rem!important}.pl-3,.px-3{padding-left:1rem!important}.p-4{padding:1.5rem!important}.pt-4,.py-4{padding-top:1.5rem!important}.pr-4,.px-4{padding-right:1.5rem!important}.pb-4,.py-4{padding-bottom:1.5rem!important}.pl-4,.px-4{padding-left:1.5rem!important}.p-5{padding:3rem!important}.pt-5,.py-5{padding-top:3rem!important}.pr-5,.px-5{padding-right:3rem!important}.pb-5,.py-5{padding-bottom:3rem!important}.pl-5,.px-5{padding-left:3rem!important}.m-auto{margin:auto!important}.mt-auto,.my-auto{margin-top:auto!important}.mr-auto,.mx-auto{margin-right:auto!important}.mb-auto,.my-auto{margin-bottom:auto!important}.ml-auto,.mx-auto{margin-left:auto!important}@media (min-width:576px){.m-sm-0{margin:0!important}.mt-sm-0,.my-sm-0{margin-top:0!important}.mr-sm-0,.mx-sm-0{margin-right:0!important}.mb-sm-0,.my-sm-0{margin-bottom:0!important}.ml-sm-0,.mx-sm-0{margin-left:0!important}.m-sm-1{margin:.25rem!important}.mt-sm-1,.my-sm-1{margin-top:.25rem!important}.mr-sm-1,.mx-sm-1{margin-right:.25rem!important}.mb-sm-1,.my-sm-1{margin-bottom:.25rem!important}.ml-sm-1,.mx-sm-1{margin-left:.25rem!important}.m-sm-2{margin:.5rem!important}.mt-sm-2,.my-sm-2{margin-top:.5rem!important}.mr-sm-2,.mx-sm-2{margin-right:.5rem!important}.mb-sm-2,.my-sm-2{margin-bottom:.5rem!important}.ml-sm-2,.mx-sm-2{margin-left:.5rem!important}.m-sm-3{margin:1rem!important}.mt-sm-3,.my-sm-3{margin-top:1rem!important}.mr-sm-3,.mx-sm-3{margin-right:1rem!important}.mb-sm-3,.my-sm-3{margin-bottom:1rem!important}.ml-sm-3,.mx-sm-3{margin-left:1rem!important}.m-sm-4{margin:1.5rem!important}.mt-sm-4,.my-sm-4{margin-top:1.5rem!important}.mr-sm-4,.mx-sm-4{margin-right:1.5rem!important}.mb-sm-4,.my-sm-4{margin-bottom:1.5rem!important}.ml-sm-4,.mx-sm-4{margin-left:1.5rem!important}.m-sm-5{margin:3rem!important}.mt-sm-5,.my-sm-5{margin-top:3rem!important}.mr-sm-5,.mx-sm-5{margin-right:3rem!important}.mb-sm-5,.my-sm-5{margin-bottom:3rem!important}.ml-sm-5,.mx-sm-5{margin-left:3rem!important}.p-sm-0{padding:0!important}.pt-sm-0,.py-sm-0{padding-top:0!important}.pr-sm-0,.px-sm-0{padding-right:0!important}.pb-sm-0,.py-sm-0{padding-bottom:0!important}.pl-sm-0,.px-sm-0{padding-left:0!important}.p-sm-1{padding:.25rem!important}.pt-sm-1,.py-sm-1{padding-top:.25rem!important}.pr-sm-1,.px-sm-1{padding-right:.25rem!important}.pb-sm-1,.py-sm-1{padding-bottom:.25rem!important}.pl-sm-1,.px-sm-1{padding-left:.25rem!important}.p-sm-2{padding:.5rem!important}.pt-sm-2,.py-sm-2{padding-top:.5rem!important}.pr-sm-2,.px-sm-2{padding-right:.5rem!important}.pb-sm-2,.py-sm-2{padding-bottom:.5rem!important}.pl-sm-2,.px-sm-2{padding-left:.5rem!important}.p-sm-3{padding:1rem!important}.pt-sm-3,.py-sm-3{padding-top:1rem!important}.pr-sm-3,.px-sm-3{padding-right:1rem!important}.pb-sm-3,.py-sm-3{padding-bottom:1rem!important}.pl-sm-3,.px-sm-3{padding-left:1rem!important}.p-sm-4{padding:1.5rem!important}.pt-sm-4,.py-sm-4{padding-top:1.5rem!important}.pr-sm-4,.px-sm-4{padding-right:1.5rem!important}.pb-sm-4,.py-sm-4{padding-bottom:1.5rem!important}.pl-sm-4,.px-sm-4{padding-left:1.5rem!important}.p-sm-5{padding:3rem!important}.pt-sm-5,.py-sm-5{padding-top:3rem!important}.pr-sm-5,.px-sm-5{padding-right:3rem!important}.pb-sm-5,.py-sm-5{padding-bottom:3rem!important}.pl-sm-5,.px-sm-5{padding-left:3rem!important}.m-sm-auto{margin:auto!important}.mt-sm-auto,.my-sm-auto{margin-top:auto!important}.mr-sm-auto,.mx-sm-auto{margin-right:auto!important}.mb-sm-auto,.my-sm-auto{margin-bottom:auto!important}.ml-sm-auto,.mx-sm-auto{margin-left:auto!important}}@media (min-width:768px){.m-md-0{margin:0!important}.mt-md-0,.my-md-0{margin-top:0!important}.mr-md-0,.mx-md-0{margin-right:0!important}.mb-md-0,.my-md-0{margin-bottom:0!important}.ml-md-0,.mx-md-0{margin-left:0!important}.m-md-1{margin:.25rem!important}.mt-md-1,.my-md-1{margin-top:.25rem!important}.mr-md-1,.mx-md-1{margin-right:.25rem!important}.mb-md-1,.my-md-1{margin-bottom:.25rem!important}.ml-md-1,.mx-md-1{margin-left:.25rem!important}.m-md-2{margin:.5rem!important}.mt-md-2,.my-md-2{margin-top:.5rem!important}.mr-md-2,.mx-md-2{margin-right:.5rem!important}.mb-md-2,.my-md-2{margin-bottom:.5rem!important}.ml-md-2,.mx-md-2{margin-left:.5rem!important}.m-md-3{margin:1rem!important}.mt-md-3,.my-md-3{margin-top:1rem!important}.mr-md-3,.mx-md-3{margin-right:1rem!important}.mb-md-3,.my-md-3{margin-bottom:1rem!important}.ml-md-3,.mx-md-3{margin-left:1rem!important}.m-md-4{margin:1.5rem!important}.mt-md-4,.my-md-4{margin-top:1.5rem!important}.mr-md-4,.mx-md-4{margin-right:1.5rem!important}.mb-md-4,.my-md-4{margin-bottom:1.5rem!important}.ml-md-4,.mx-md-4{margin-left:1.5rem!important}.m-md-5{margin:3rem!important}.mt-md-5,.my-md-5{margin-top:3rem!important}.mr-md-5,.mx-md-5{margin-right:3rem!important}.mb-md-5,.my-md-5{margin-bottom:3rem!important}.ml-md-5,.mx-md-5{margin-left:3rem!important}.p-md-0{padding:0!important}.pt-md-0,.py-md-0{padding-top:0!important}.pr-md-0,.px-md-0{padding-right:0!important}.pb-md-0,.py-md-0{padding-bottom:0!important}.pl-md-0,.px-md-0{padding-left:0!important}.p-md-1{padding:.25rem!important}.pt-md-1,.py-md-1{padding-top:.25rem!important}.pr-md-1,.px-md-1{padding-right:.25rem!important}.pb-md-1,.py-md-1{padding-bottom:.25rem!important}.pl-md-1,.px-md-1{padding-left:.25rem!important}.p-md-2{padding:.5rem!important}.pt-md-2,.py-md-2{padding-top:.5rem!important}.pr-md-2,.px-md-2{padding-right:.5rem!important}.pb-md-2,.py-md-2{padding-bottom:.5rem!important}.pl-md-2,.px-md-2{padding-left:.5rem!important}.p-md-3{padding:1rem!important}.pt-md-3,.py-md-3{padding-top:1rem!important}.pr-md-3,.px-md-3{padding-right:1rem!important}.pb-md-3,.py-md-3{padding-bottom:1rem!important}.pl-md-3,.px-md-3{padding-left:1rem!important}.p-md-4{padding:1.5rem!important}.pt-md-4,.py-md-4{padding-top:1.5rem!important}.pr-md-4,.px-md-4{padding-right:1.5rem!important}.pb-md-4,.py-md-4{padding-bottom:1.5rem!important}.pl-md-4,.px-md-4{padding-left:1.5rem!important}.p-md-5{padding:3rem!important}.pt-md-5,.py-md-5{padding-top:3rem!important}.pr-md-5,.px-md-5{padding-right:3rem!important}.pb-md-5,.py-md-5{padding-bottom:3rem!important}.pl-md-5,.px-md-5{padding-left:3rem!important}.m-md-auto{margin:auto!important}.mt-md-auto,.my-md-auto{margin-top:auto!important}.mr-md-auto,.mx-md-auto{margin-right:auto!important}.mb-md-auto,.my-md-auto{margin-bottom:auto!important}.ml-md-auto,.mx-md-auto{margin-left:auto!important}}@media (min-width:992px){.m-lg-0{margin:0!important}.mt-lg-0,.my-lg-0{margin-top:0!important}.mr-lg-0,.mx-lg-0{margin-right:0!important}.mb-lg-0,.my-lg-0{margin-bottom:0!important}.ml-lg-0,.mx-lg-0{margin-left:0!important}.m-lg-1{margin:.25rem!important}.mt-lg-1,.my-lg-1{margin-top:.25rem!important}.mr-lg-1,.mx-lg-1{margin-right:.25rem!important}.mb-lg-1,.my-lg-1{margin-bottom:.25rem!important}.ml-lg-1,.mx-lg-1{margin-left:.25rem!important}.m-lg-2{margin:.5rem!important}.mt-lg-2,.my-lg-2{margin-top:.5rem!important}.mr-lg-2,.mx-lg-2{margin-right:.5rem!important}.mb-lg-2,.my-lg-2{margin-bottom:.5rem!important}.ml-lg-2,.mx-lg-2{margin-left:.5rem!important}.m-lg-3{margin:1rem!important}.mt-lg-3,.my-lg-3{margin-top:1rem!important}.mr-lg-3,.mx-lg-3{margin-right:1rem!important}.mb-lg-3,.my-lg-3{margin-bottom:1rem!important}.ml-lg-3,.mx-lg-3{margin-left:1rem!important}.m-lg-4{margin:1.5rem!important}.mt-lg-4,.my-lg-4{margin-top:1.5rem!important}.mr-lg-4,.mx-lg-4{margin-right:1.5rem!important}.mb-lg-4,.my-lg-4{margin-bottom:1.5rem!important}.ml-lg-4,.mx-lg-4{margin-left:1.5rem!important}.m-lg-5{margin:3rem!important}.mt-lg-5,.my-lg-5{margin-top:3rem!important}.mr-lg-5,.mx-lg-5{margin-right:3rem!important}.mb-lg-5,.my-lg-5{margin-bottom:3rem!important}.ml-lg-5,.mx-lg-5{margin-left:3rem!important}.p-lg-0{padding:0!important}.pt-lg-0,.py-lg-0{padding-top:0!important}.pr-lg-0,.px-lg-0{padding-right:0!important}.pb-lg-0,.py-lg-0{padding-bottom:0!important}.pl-lg-0,.px-lg-0{padding-left:0!important}.p-lg-1{padding:.25rem!important}.pt-lg-1,.py-lg-1{padding-top:.25rem!important}.pr-lg-1,.px-lg-1{padding-right:.25rem!important}.pb-lg-1,.py-lg-1{padding-bottom:.25rem!important}.pl-lg-1,.px-lg-1{padding-left:.25rem!important}.p-lg-2{padding:.5rem!important}.pt-lg-2,.py-lg-2{padding-top:.5rem!important}.pr-lg-2,.px-lg-2{padding-right:.5rem!important}.pb-lg-2,.py-lg-2{padding-bottom:.5rem!important}.pl-lg-2,.px-lg-2{padding-left:.5rem!important}.p-lg-3{padding:1rem!important}.pt-lg-3,.py-lg-3{padding-top:1rem!important}.pr-lg-3,.px-lg-3{padding-right:1rem!important}.pb-lg-3,.py-lg-3{padding-bottom:1rem!important}.pl-lg-3,.px-lg-3{padding-left:1rem!important}.p-lg-4{padding:1.5rem!important}.pt-lg-4,.py-lg-4{padding-top:1.5rem!important}.pr-lg-4,.px-lg-4{padding-right:1.5rem!important}.pb-lg-4,.py-lg-4{padding-bottom:1.5rem!important}.pl-lg-4,.px-lg-4{padding-left:1.5rem!important}.p-lg-5{padding:3rem!important}.pt-lg-5,.py-lg-5{padding-top:3rem!important}.pr-lg-5,.px-lg-5{padding-right:3rem!important}.pb-lg-5,.py-lg-5{padding-bottom:3rem!important}.pl-lg-5,.px-lg-5{padding-left:3rem!important}.m-lg-auto{margin:auto!important}.mt-lg-auto,.my-lg-auto{margin-top:auto!important}.mr-lg-auto,.mx-lg-auto{margin-right:auto!important}.mb-lg-auto,.my-lg-auto{margin-bottom:auto!important}.ml-lg-auto,.mx-lg-auto{margin-left:auto!important}}@media (min-width:1200px){.m-xl-0{margin:0!important}.mt-xl-0,.my-xl-0{margin-top:0!important}.mr-xl-0,.mx-xl-0{margin-right:0!important}.mb-xl-0,.my-xl-0{margin-bottom:0!important}.ml-xl-0,.mx-xl-0{margin-left:0!important}.m-xl-1{margin:.25rem!important}.mt-xl-1,.my-xl-1{margin-top:.25rem!important}.mr-xl-1,.mx-xl-1{margin-right:.25rem!important}.mb-xl-1,.my-xl-1{margin-bottom:.25rem!important}.ml-xl-1,.mx-xl-1{margin-left:.25rem!important}.m-xl-2{margin:.5rem!important}.mt-xl-2,.my-xl-2{margin-top:.5rem!important}.mr-xl-2,.mx-xl-2{margin-right:.5rem!important}.mb-xl-2,.my-xl-2{margin-bottom:.5rem!important}.ml-xl-2,.mx-xl-2{margin-left:.5rem!important}.m-xl-3{margin:1rem!important}.mt-xl-3,.my-xl-3{margin-top:1rem!important}.mr-xl-3,.mx-xl-3{margin-right:1rem!important}.mb-xl-3,.my-xl-3{margin-bottom:1rem!important}.ml-xl-3,.mx-xl-3{margin-left:1rem!important}.m-xl-4{margin:1.5rem!important}.mt-xl-4,.my-xl-4{margin-top:1.5rem!important}.mr-xl-4,.mx-xl-4{margin-right:1.5rem!important}.mb-xl-4,.my-xl-4{margin-bottom:1.5rem!important}.ml-xl-4,.mx-xl-4{margin-left:1.5rem!important}.m-xl-5{margin:3rem!important}.mt-xl-5,.my-xl-5{margin-top:3rem!important}.mr-xl-5,.mx-xl-5{margin-right:3rem!important}.mb-xl-5,.my-xl-5{margin-bottom:3rem!important}.ml-xl-5,.mx-xl-5{margin-left:3rem!important}.p-xl-0{padding:0!important}.pt-xl-0,.py-xl-0{padding-top:0!important}.pr-xl-0,.px-xl-0{padding-right:0!important}.pb-xl-0,.py-xl-0{padding-bottom:0!important}.pl-xl-0,.px-xl-0{padding-left:0!important}.p-xl-1{padding:.25rem!important}.pt-xl-1,.py-xl-1{padding-top:.25rem!important}.pr-xl-1,.px-xl-1{padding-right:.25rem!important}.pb-xl-1,.py-xl-1{padding-bottom:.25rem!important}.pl-xl-1,.px-xl-1{padding-left:.25rem!important}.p-xl-2{padding:.5rem!important}.pt-xl-2,.py-xl-2{padding-top:.5rem!important}.pr-xl-2,.px-xl-2{padding-right:.5rem!important}.pb-xl-2,.py-xl-2{padding-bottom:.5rem!important}.pl-xl-2,.px-xl-2{padding-left:.5rem!important}.p-xl-3{padding:1rem!important}.pt-xl-3,.py-xl-3{padding-top:1rem!important}.pr-xl-3,.px-xl-3{padding-right:1rem!important}.pb-xl-3,.py-xl-3{padding-bottom:1rem!important}.pl-xl-3,.px-xl-3{padding-left:1rem!important}.p-xl-4{padding:1.5rem!important}.pt-xl-4,.py-xl-4{padding-top:1.5rem!important}.pr-xl-4,.px-xl-4{padding-right:1.5rem!important}.pb-xl-4,.py-xl-4{padding-bottom:1.5rem!important}.pl-xl-4,.px-xl-4{padding-left:1.5rem!important}.p-xl-5{padding:3rem!important}.pt-xl-5,.py-xl-5{padding-top:3rem!important}.pr-xl-5,.px-xl-5{padding-right:3rem!important}.pb-xl-5,.py-xl-5{padding-bottom:3rem!important}.pl-xl-5,.px-xl-5{padding-left:3rem!important}.m-xl-auto{margin:auto!important}.mt-xl-auto,.my-xl-auto{margin-top:auto!important}.mr-xl-auto,.mx-xl-auto{margin-right:auto!important}.mb-xl-auto,.my-xl-auto{margin-bottom:auto!important}.ml-xl-auto,.mx-xl-auto{margin-left:auto!important}}.text-monospace{font-family:SFMono-Regular,Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace}.text-justify{text-align:justify!important}.text-nowrap{white-space:nowrap!important}.text-truncate{overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.text-left{text-align:left!important}.text-right{text-align:right!important}.text-center{text-align:center!important}@media (min-width:576px){.text-sm-left{text-align:left!important}.text-sm-right{text-align:right!important}.text-sm-center{text-align:center!important}}@media (min-width:768px){.text-md-left{text-align:left!important}.text-md-right{text-align:right!important}.text-md-center{text-align:center!important}}@media (min-width:992px){.text-lg-left{text-align:left!important}.text-lg-right{text-align:right!important}.text-lg-center{text-align:center!important}}@media (min-width:1200px){.text-xl-left{text-align:left!important}.text-xl-right{text-align:right!important}.text-xl-center{text-align:center!important}}.text-lowercase{text-transform:lowercase!important}.text-uppercase{text-transform:uppercase!important}.text-capitalize{text-transform:capitalize!important}.font-weight-light{font-weight:300!important}.font-weight-normal{font-weight:400!important}.font-weight-bold{font-weight:700!important}.font-italic{font-style:italic!important}.text-white{color:#fff!important}.text-primary{color:#3490dc!important}a.text-primary:focus,a.text-primary:hover{color:#2176bd!important}.text-secondary{color:#6c757d!important}a.text-secondary:focus,a.text-secondary:hover{color:#545b62!important}.text-success{color:#38c172!important}a.text-success:focus,a.text-success:hover{color:#2d995b!important}.text-info{color:#6cb2eb!important}a.text-info:focus,a.text-info:hover{color:#3f9ae5!important}.text-warning{color:#ffed4a!important}a.text-warning:focus,a.text-warning:hover{color:#ffe817!important}.text-danger{color:#e3342f!important}a.text-danger:focus,a.text-danger:hover{color:#c51f1a!important}.text-light{color:#f8f9fa!important}a.text-light:focus,a.text-light:hover{color:#dae0e5!important}.text-dark{color:#343a40!important}a.text-dark:focus,a.text-dark:hover{color:#1d2124!important}.text-body{color:#212529!important}.text-muted{color:#6c757d!important}.text-black-50{color:rgba(0,0,0,.5)!important}.text-white-50{color:hsla(0,0%,100%,.5)!important}.text-hide{font:0/0 a;color:transparent;text-shadow:none;background-color:transparent;border:0}.visible{visibility:visible!important}.invisible{visibility:hidden!important}@media print{*,:after,:before{text-shadow:none!important;box-shadow:none!important}a:not(.btn){text-decoration:underline}abbr[title]:after{content:" (" attr(title) ")"}pre{white-space:pre-wrap!important}blockquote,pre{border:1px solid #adb5bd;page-break-inside:avoid}thead{display:table-header-group}img,tr{page-break-inside:avoid}h2,h3,p{orphans:3;widows:3}h2,h3{page-break-after:avoid}@page{size:a3}.container,body{min-width:992px!important}.navbar{display:none}.badge{border:1px solid #000}.table{border-collapse:collapse!important}.table td,.table th{background-color:#fff!important}.table-bordered td,.table-bordered th{border:1px solid #dee2e6!important}.table-dark{color:inherit}.table-dark tbody+tbody,.table-dark td,.table-dark th,.table-dark thead th{border-color:#dee2e6}.table .thead-dark th{color:inherit;border-color:#dee2e6}}.navbar-laravel{background-color:#fff;box-shadow:0 2px 4px rgba(0,0,0,.04)}[m
\ No newline at end of file[m
[1mdiff --git a/public/favicon.ico b/public/favicon.ico[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/public/index.php b/public/index.php[m
[1mnew file mode 100644[m
[1mindex 0000000..4584cbc[m
[1m--- /dev/null[m
[1m+++ b/public/index.php[m
[36m@@ -0,0 +1,60 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m * Laravel - A PHP Framework For Web Artisans[m
[32m+[m[32m *[m
[32m+[m[32m * @package  Laravel[m
[32m+[m[32m * @author   Taylor Otwell <taylor@laravel.com>[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32mdefine('LARAVEL_START', microtime(true));[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Register The Auto Loader[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| Composer provides a convenient, automatically generated class loader for[m
[32m+[m[32m| our application. We just need to utilize it! We'll simply require it[m
[32m+[m[32m| into the script here so that we don't have to worry about manual[m
[32m+[m[32m| loading any of our classes later on. It feels great to relax.[m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32mrequire __DIR__.'/../vendor/autoload.php';[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Turn On The Lights[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| We need to illuminate PHP development, so let us turn on the lights.[m
[32m+[m[32m| This bootstraps the framework and gets it ready for use, then it[m
[32m+[m[32m| will load up this application so that we can run it and send[m
[32m+[m[32m| the responses back to the browser and delight our users.[m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32m$app = require_once __DIR__.'/../bootstrap/app.php';[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Run The Application[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| Once we have the application, we can handle the incoming request[m
[32m+[m[32m| through the kernel, and send the associated response back to[m
[32m+[m[32m| the client's browser allowing them to enjoy the creative[m
[32m+[m[32m| and wonderful application we have prepared for them.[m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32m$kernel = $app->make(Illuminate\Contracts\Http\Kernel::class);[m
[32m+[m
[32m+[m[32m$response = $kernel->handle([m
[32m+[m[32m    $request = Illuminate\Http\Request::capture()[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32m$response->send();[m
[32m+[m
[32m+[m[32m$kernel->terminate($request, $response);[m
[1mdiff --git a/public/js/app.js b/public/js/app.js[m
[1mnew file mode 100644[m
[1mindex 0000000..736d3c7[m
[1m--- /dev/null[m
[1m+++ b/public/js/app.js[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m!function(e){var t={};function n(r){if(t[r])return t[r].exports;var i=t[r]={i:r,l:!1,exports:{}};return e[r].call(i.exports,i,i.exports,n),i.l=!0,i.exports}n.m=e,n.c=t,n.d=function(e,t,r){n.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:r})},n.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},n.t=function(e,t){if(1&t&&(e=n(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var r=Object.create(null);if(n.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var i in e)n.d(r,i,function(t){return e[t]}.bind(null,i));return r},n.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return n.d(t,"a",t),t},n.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},n.p="/",n(n.s=11)}([function(e,t,n){"use strict";var r=n(5),i=n(19),o=Object.prototype.toString;function a(e){return"[object Array]"===o.call(e)}function s(e){return null!==e&&"object"==typeof e}function u(e){return"[object Function]"===o.call(e)}function c(e,t){if(null!=e)if("object"!=typeof e&&(e=[e]),a(e))for(var n=0,r=e.length;n<r;n++)t.call(null,e[n],n,e);else for(var i in e)Object.prototype.hasOwnProperty.call(e,i)&&t.call(null,e[i],i,e)}e.exports={isArray:a,isArrayBuffer:function(e){return"[object ArrayBuffer]"===o.call(e)},isBuffer:i,isFormData:function(e){return"undefined"!=typeof FormData&&e instanceof FormData},isArrayBufferView:function(e){return"undefined"!=typeof ArrayBuffer&&ArrayBuffer.isView?ArrayBuffer.isView(e):e&&e.buffer&&e.buffer instanceof ArrayBuffer},isString:function(e){return"string"==typeof e},isNumber:function(e){return"number"==typeof e},isObject:s,isUndefined:function(e){return void 0===e},isDate:function(e){return"[object Date]"===o.call(e)},isFile:function(e){return"[object File]"===o.call(e)},isBlob:function(e){return"[object Blob]"===o.call(e)},isFunction:u,isStream:function(e){return s(e)&&u(e.pipe)},isURLSearchParams:function(e){return"undefined"!=typeof URLSearchParams&&e instanceof URLSearchParams},isStandardBrowserEnv:function(){return("undefined"==typeof navigator||"ReactNative"!==navigator.product)&&"undefined"!=typeof window&&"undefined"!=typeof document},forEach:c,merge:function e(){var t={};function n(n,r){"object"==typeof t[r]&&"object"==typeof n?t[r]=e(t[r],n):t[r]=n}for(var r=0,i=arguments.length;r<i;r++)c(arguments[r],n);return t},extend:function(e,t,n){return c(t,function(t,i){e[i]=n&&"function"==typeof t?r(t,n):t}),e},trim:function(e){return e.replace(/^\s*/,"").replace(/\s*$/,"")}}},function(e,t){var n;n=function(){return this}();try{n=n||new Function("return this")()}catch(e){"object"==typeof window&&(n=window)}e.exports=n},function(e,t,n){"use strict";(function(t){var r=n(0),i=n(21),o={"Content-Type":"application/x-www-form-urlencoded"};function a(e,t){!r.isUndefined(e)&&r.isUndefined(e["Content-Type"])&&(e["Content-Type"]=t)}var s,u={adapter:("undefined"!=typeof XMLHttpRequest?s=n(7):void 0!==t&&(s=n(7)),s),transformRequest:[function(e,t){return i(t,"Content-Type"),r.isFormData(e)||r.isArrayBuffer(e)||r.isBuffer(e)||r.isStream(e)||r.isFile(e)||r.isBlob(e)?e:r.isArrayBufferView(e)?e.buffer:r.isURLSearchParams(e)?(a(t,"application/x-www-form-urlencoded;charset=utf-8"),e.toString()):r.isObject(e)?(a(t,"application/json;charset=utf-8"),JSON.stringify(e)):e}],transformResponse:[function(e){if("string"==typeof e)try{e=JSON.parse(e)}catch(e){}return e}],timeout:0,xsrfCookieName:"XSRF-TOKEN",xsrfHeaderName:"X-XSRF-TOKEN",maxContentLength:-1,validateStatus:function(e){return e>=200&&e<300}};u.headers={common:{Accept:"application/json, text/plain, */*"}},r.forEach(["delete","get","head"],function(e){u.headers[e]={}}),r.forEach(["post","put","patch"],function(e){u.headers[e]=r.merge(o)}),e.exports=u}).call(this,n(6))},function(e,t,n){"use strict";n.r(t),function(e){for(var n="undefined"!=typeof window&&"undefined"!=typeof document,r=["Edge","Trident","Firefox"],i=0,o=0;o<r.length;o+=1)if(n&&navigator.userAgent.indexOf(r[o])>=0){i=1;break}var a=n&&window.Promise?function(e){var t=!1;return function(){t||(t=!0,window.Promise.resolve().then(function(){t=!1,e()}))}}:function(e){var t=!1;return function(){t||(t=!0,setTimeout(function(){t=!1,e()},i))}};function s(e){return e&&"[object Function]"==={}.toString.call(e)}function u(e,t){if(1!==e.nodeType)return[];var n=e.ownerDocument.defaultView.getComputedStyle(e,null);return t?n[t]:n}function c(e){return"HTML"===e.nodeName?e:e.parentNode||e.host}function l(e){if(!e)return document.body;switch(e.nodeName){case"HTML":case"BODY":return e.ownerDocument.body;case"#document":return e.body}var t=u(e),n=t.overflow,r=t.overflowX,i=t.overflowY;return/(auto|scroll|overlay)/.test(n+i+r)?e:l(c(e))}var f=n&&!(!window.MSInputMethodContext||!document.documentMode),p=n&&/MSIE 10/.test(navigator.userAgent);function d(e){return 11===e?f:10===e?p:f||p}function h(e){if(!e)return document.documentElement;for(var t=d(10)?document.body:null,n=e.offsetParent||null;n===t&&e.nextElementSibling;)n=(e=e.nextElementSibling).offsetParent;var r=n&&n.nodeName;return r&&"BODY"!==r&&"HTML"!==r?-1!==["TH","TD","TABLE"].indexOf(n.nodeName)&&"static"===u(n,"position")?h(n):n:e?e.ownerDocument.documentElement:document.documentElement}function v(e){return null!==e.parentNode?v(e.parentNode):e}function g(e,t){if(!(e&&e.nodeType&&t&&t.nodeType))return document.documentElement;var n=e.compareDocumentPosition(t)&Node.DOCUMENT_POSITION_FOLLOWING,r=n?e:t,i=n?t:e,o=document.createRange();o.setStart(r,0),o.setEnd(i,0);var a,s,u=o.commonAncestorContainer;if(e!==u&&t!==u||r.contains(i))return"BODY"===(s=(a=u).nodeName)||"HTML"!==s&&h(a.firstElementChild)!==a?h(u):u;var c=v(e);return c.host?g(c.host,t):g(e,v(t).host)}function m(e){var t="top"===(arguments.length>1&&void 0!==arguments[1]?arguments[1]:"top")?"scrollTop":"scrollLeft",n=e.nodeName;if("BODY"===n||"HTML"===n){var r=e.ownerDocument.documentElement;return(e.ownerDocument.scrollingElement||r)[t]}return e[t]}function y(e,t){var n="x"===t?"Left":"Top",r="Left"===n?"Right":"Bottom";return parseFloat(e["border"+n+"Width"],10)+parseFloat(e["border"+r+"Width"],10)}function _(e,t,n,r){return Math.max(t["offset"+e],t["scroll"+e],n["client"+e],n["offset"+e],n["scroll"+e],d(10)?parseInt(n["offset"+e])+parseInt(r["margin"+("Height"===e?"Top":"Left")])+parseInt(r["margin"+("Height"===e?"Bottom":"Right")]):0)}function b(e){var t=e.body,n=e.documentElement,r=d(10)&&getComputedStyle(n);return{height:_("Height",t,n,r),width:_("Width",t,n,r)}}var w=function(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")},T=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),E=function(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e},x=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e};function C(e){return x({},e,{right:e.left+e.width,bottom:e.top+e.height})}function A(e){var t={};try{if(d(10)){t=e.getBoundingClientRect();var n=m(e,"top"),r=m(e,"left");t.top+=n,t.left+=r,t.bottom+=n,t.right+=r}else t=e.getBoundingClientRect()}catch(e){}var i={left:t.left,top:t.top,width:t.right-t.left,height:t.bottom-t.top},o="HTML"===e.nodeName?b(e.ownerDocument):{},a=o.width||e.clientWidth||i.right-i.left,s=o.height||e.clientHeight||i.bottom-i.top,c=e.offsetWidth-a,l=e.offsetHeight-s;if(c||l){var f=u(e);c-=y(f,"x"),l-=y(f,"y"),i.width-=c,i.height-=l}return C(i)}function S(e,t){var n=arguments.length>2&&void 0!==arguments[2]&&arguments[2],r=d(10),i="HTML"===t.nodeName,o=A(e),a=A(t),s=l(e),c=u(t),f=parseFloat(c.borderTopWidth,10),p=parseFloat(c.borderLeftWidth,10);n&&i&&(a.top=Math.max(a.top,0),a.left=Math.max(a.left,0));var h=C({top:o.top-a.top-f,left:o.left-a.left-p,width:o.width,height:o.height});if(h.marginTop=0,h.marginLeft=0,!r&&i){var v=parseFloat(c.marginTop,10),g=parseFloat(c.marginLeft,10);h.top-=f-v,h.bottom-=f-v,h.left-=p-g,h.right-=p-g,h.marginTop=v,h.marginLeft=g}return(r&&!n?t.contains(s):t===s&&"BODY"!==s.nodeName)&&(h=function(e,t){var n=arguments.length>2&&void 0!==arguments[2]&&arguments[2],r=m(t,"top"),i=m(t,"left"),o=n?-1:1;return e.top+=r*o,e.bottom+=r*o,e.left+=i*o,e.right+=i*o,e}(h,t)),h}function O(e){if(!e||!e.parentElement||d())return document.documentElement;for(var t=e.parentElement;t&&"none"===u(t,"transform");)t=t.parentElement;return t||document.documentElement}function D(e,t,n,r){var i=arguments.length>4&&void 0!==arguments[4]&&arguments[4],o={top:0,left:0},a=i?O(e):g(e,t);if("viewport"===r)o=function(e){var t=arguments.length>1&&void 0!==arguments[1]&&arguments[1],n=e.ownerDocument.documentElement,r=S(e,n),i=Math.max(n.clientWidth,window.innerWidth||0),o=Math.max(n.clientHeight,window.innerHeight||0),a=t?0:m(n),s=t?0:m(n,"left");return C({top:a-r.top+r.marginTop,left:s-r.left+r.marginLeft,width:i,height:o})}(a,i);else{var s=void 0;"scrollParent"===r?"BODY"===(s=l(c(t))).nodeName&&(s=e.ownerDocument.documentElement):s="window"===r?e.ownerDocument.documentElement:r;var f=S(s,a,i);if("HTML"!==s.nodeName||function e(t){var n=t.nodeName;return"BODY"!==n&&"HTML"!==n&&("fixed"===u(t,"position")||e(c(t)))}(a))o=f;else{var p=b(e.ownerDocument),d=p.height,h=p.width;o.top+=f.top-f.marginTop,o.bottom=d+f.top,o.left+=f.left-f.marginLeft,o.right=h+f.left}}var v="number"==typeof(n=n||0);return o.left+=v?n:n.left||0,o.top+=v?n:n.top||0,o.right-=v?n:n.right||0,o.bottom-=v?n:n.bottom||0,o}function I(e,t,n,r,i){var o=arguments.length>5&&void 0!==arguments[5]?arguments[5]:0;if(-1===e.indexOf("auto"))return e;var a=D(n,r,o,i),s={top:{width:a.width,height:t.top-a.top},right:{width:a.right-t.right,height:a.height},bottom:{width:a.width,height:a.bottom-t.bottom},left:{width:t.left-a.left,height:a.height}},u=Object.keys(s).map(function(e){return x({key:e},s[e],{area:(t=s[e],t.width*t.height)});var t}).sort(function(e,t){return t.area-e.area}),c=u.filter(function(e){var t=e.width,r=e.height;return t>=n.clientWidth&&r>=n.clientHeight}),l=c.length>0?c[0].key:u[0].key,f=e.split("-")[1];return l+(f?"-"+f:"")}function k(e,t,n){var r=arguments.length>3&&void 0!==arguments[3]?arguments[3]:null;return S(n,r?O(t):g(t,n),r)}function N(e){var t=e.ownerDocument.defaultView.getComputedStyle(e),n=parseFloat(t.marginTop||0)+parseFloat(t.marginBottom||0),r=parseFloat(t.marginLeft||0)+parseFloat(t.marginRight||0);return{width:e.offsetWidth+r,height:e.offsetHeight+n}}function L(e){var t={left:"right",right:"left",bottom:"top",top:"bottom"};return e.replace(/left|right|bottom|top/g,function(e){return t[e]})}function j(e,t,n){n=n.split("-")[0];var r=N(e),i={width:r.width,height:r.height},o=-1!==["right","left"].indexOf(n),a=o?"top":"left",s=o?"left":"top",u=o?"height":"width",c=o?"width":"height";return i[a]=t[a]+t[u]/2-r[u]/2,i[s]=n===s?t[s]-r[c]:t[L(s)],i}function P(e,t){return Array.prototype.find?e.find(t):e.filter(t)[0]}function R(e,t,n){return(void 0===n?e:e.slice(0,function(e,t,n){if(Array.prototype.findIndex)return e.findIndex(function(e){return e[t]===n});var r=P(e,function(e){return e[t]===n});return e.indexOf(r)}(e,"name",n))).forEach(function(e){e.function&&console.warn("`modifier.function` is deprecated, use `modifier.fn`!");var n=e.function||e.fn;e.enabled&&s(n)&&(t.offsets.popper=C(t.offsets.popper),t.offsets.reference=C(t.offsets.reference),t=n(t,e))}),t}function $(e,t){return e.some(function(e){var n=e.name;return e.enabled&&n===t})}function H(e){for(var t=[!1,"ms","Webkit","Moz","O"],n=e.charAt(0).toUpperCase()+e.slice(1),r=0;r<t.length;r++){var i=t[r],o=i?""+i+n:e;if(void 0!==document.body.style[o])return o}return null}function M(e){var t=e.ownerDocument;return t?t.defaultView:window}function F(e,t,n,r){n.updateBound=r,M(e).addEventListener("resize",n.updateBound,{passive:!0});var i=l(e);return function e(t,n,r,i){var o="BODY"===t.nodeName,a=o?t.ownerDocument.defaultView:t;a.addEventListener(n,r,{passive:!0}),o||e(l(a.parentNode),n,r,i),i.push(a)}(i,"scroll",n.updateBound,n.scrollParents),n.scrollElement=i,n.eventsEnabled=!0,n}function W(){var e,t;this.state.eventsEnabled&&(cancelAnimationFrame(this.scheduleUpdate),this.state=(e=this.reference,t=this.state,M(e).removeEventListener("resize",t.updateBound),t.scrollParents.forEach(function(e){e.removeEventListener("scroll",t.updateBound)}),t.updateBound=null,t.scrollParents=[],t.scrollElement=null,t.eventsEnabled=!1,t))}function q(e){return""!==e&&!isNaN(parseFloat(e))&&isFinite(e)}function B(e,t){Object.keys(t).forEach(function(n){var r="";-1!==["width","height","top","right","bottom","left"].indexOf(n)&&q(t[n])&&(r="px"),e.style[n]=t[n]+r})}var U=n&&/Firefox/i.test(navigator.userAgent);function V(e,t,n){var r=P(e,function(e){return e.name===t}),i=!!r&&e.some(function(e){return e.name===n&&e.enabled&&e.order<r.order});if(!i){var o="`"+t+"`",a="`"+n+"`";console.warn(a+" modifier is required by "+o+" modifier in order to work, be sure to include it before "+o+"!")}return i}var z=["auto-start","auto","auto-end","top-start","top","top-end","right-start","right","right-end","bottom-end","bottom","bottom-start","left-end","left","left-start"],K=z.slice(3);function G(e){var t=arguments.length>1&&void 0!==arguments[1]&&arguments[1],n=K.indexOf(e),r=K.slice(n+1).concat(K.slice(0,n));return t?r.reverse():r}var X={FLIP:"flip",CLOCKWISE:"clockwise",COUNTERCLOCKWISE:"counterclockwise"};function Q(e,t,n,r){var i=[0,0],o=-1!==["right","left"].indexOf(r),a=e.split(/(\+|\-)/).map(function(e){return e.trim()}),s=a.indexOf(P(a,function(e){return-1!==e.search(/,|\s/)}));a[s]&&-1===a[s].indexOf(",")&&console.warn("Offsets separated by white space(s) are deprecated, use a comma (,) instead.");var u=/\s*,\s*|\s+/,c=-1!==s?[a.slice(0,s).concat([a[s].split(u)[0]]),[a[s].split(u)[1]].concat(a.slice(s+1))]:[a];return(c=c.map(function(e,r){var i=(1===r?!o:o)?"height":"width",a=!1;return e.reduce(function(e,t){return""===e[e.length-1]&&-1!==["+","-"].indexOf(t)?(e[e.length-1]=t,a=!0,e):a?(e[e.length-1]+=t,a=!1,e):e.concat(t)},[]).map(function(e){return function(e,t,n,r){var i=e.match(/((?:\-|\+)?\d*\.?\d*)(.*)/),o=+i[1],a=i[2];if(!o)return e;if(0===a.indexOf("%")){var s=void 0;switch(a){case"%p":s=n;break;case"%":case"%r":default:s=r}return C(s)[t]/100*o}if("vh"===a||"vw"===a)return("vh"===a?Math.max(document.documentElement.clientHeight,window.innerHeight||0):Math.max(document.documentElement.clientWidth,window.innerWidth||0))/100*o;return o}(e,i,t,n)})})).forEach(function(e,t){e.forEach(function(n,r){q(n)&&(i[t]+=n*("-"===e[r-1]?-1:1))})}),i}var Y={placement:"bottom",positionFixed:!1,eventsEnabled:!0,removeOnDestroy:!1,onCreate:function(){},onUpdate:function(){},modifiers:{shift:{order:100,enabled:!0,fn:function(e){var t=e.placement,n=t.split("-")[0],r=t.split("-")[1];if(r){var i=e.offsets,o=i.reference,a=i.popper,s=-1!==["bottom","top"].indexOf(n),u=s?"left":"top",c=s?"width":"height",l={start:E({},u,o[u]),end:E({},u,o[u]+o[c]-a[c])};e.offsets.popper=x({},a,l[r])}return e}},offset:{order:200,enabled:!0,fn:function(e,t){var n=t.offset,r=e.placement,i=e.offsets,o=i.popper,a=i.reference,s=r.split("-")[0],u=void 0;return u=q(+n)?[+n,0]:Q(n,o,a,s),"left"===s?(o.top+=u[0],o.left-=u[1]):"right"===s?(o.top+=u[0],o.left+=u[1]):"top"===s?(o.left+=u[0],o.top-=u[1]):"bottom"===s&&(o.left+=u[0],o.top+=u[1]),e.popper=o,e},offset:0},preventOverflow:{order:300,enabled:!0,fn:function(e,t){var n=t.boundariesElement||h(e.instance.popper);e.instance.reference===n&&(n=h(n));var r=H("transform"),i=e.instance.popper.style,o=i.top,a=i.left,s=i[r];i.top="",i.left="",i[r]="";var u=D(e.instance.popper,e.instance.reference,t.padding,n,e.positionFixed);i.top=o,i.left=a,i[r]=s,t.boundaries=u;var c=t.priority,l=e.offsets.popper,f={primary:function(e){var n=l[e];return l[e]<u[e]&&!t.escapeWithReference&&(n=Math.max(l[e],u[e])),E({},e,n)},secondary:function(e){var n="right"===e?"left":"top",r=l[n];return l[e]>u[e]&&!t.escapeWithReference&&(r=Math.min(l[n],u[e]-("right"===e?l.width:l.height))),E({},n,r)}};return c.forEach(function(e){var t=-1!==["left","top"].indexOf(e)?"primary":"secondary";l=x({},l,f[t](e))}),e.offsets.popper=l,e},priority:["left","right","top","bottom"],padding:5,boundariesElement:"scrollParent"},keepTogether:{order:400,enabled:!0,fn:function(e){var t=e.offsets,n=t.popper,r=t.reference,i=e.placement.split("-")[0],o=Math.floor,a=-1!==["top","bottom"].indexOf(i),s=a?"right":"bottom",u=a?"left":"top",c=a?"width":"height";return n[s]<o(r[u])&&(e.offsets.popper[u]=o(r[u])-n[c]),n[u]>o(r[s])&&(e.offsets.popper[u]=o(r[s])),e}},arrow:{order:500,enabled:!0,fn:function(e,t){var n;if(!V(e.instance.modifiers,"arrow","keepTogether"))return e;var r=t.element;if("string"==typeof r){if(!(r=e.instance.popper.querySelector(r)))return e}else if(!e.instance.popper.contains(r))return console.warn("WARNING: `arrow.element` must be child of its popper element!"),e;var i=e.placement.split("-")[0],o=e.offsets,a=o.popper,s=o.reference,c=-1!==["left","right"].indexOf(i),l=c?"height":"width",f=c?"Top":"Left",p=f.toLowerCase(),d=c?"left":"top",h=c?"bottom":"right",v=N(r)[l];s[h]-v<a[p]&&(e.offsets.popper[p]-=a[p]-(s[h]-v)),s[p]+v>a[h]&&(e.offsets.popper[p]+=s[p]+v-a[h]),e.offsets.popper=C(e.offsets.popper);var g=s[p]+s[l]/2-v/2,m=u(e.instance.popper),y=parseFloat(m["margin"+f],10),_=parseFloat(m["border"+f+"Width"],10),b=g-e.offsets.popper[p]-y-_;return b=Math.max(Math.min(a[l]-v,b),0),e.arrowElement=r,e.offsets.arrow=(E(n={},p,Math.round(b)),E(n,d,""),n),e},element:"[x-arrow]"},flip:{order:600,enabled:!0,fn:function(e,t){if($(e.instance.modifiers,"inner"))return e;if(e.flipped&&e.placement===e.originalPlacement)return e;var n=D(e.instance.popper,e.instance.reference,t.padding,t.boundariesElement,e.positionFixed),r=e.placement.split("-")[0],i=L(r),o=e.placement.split("-")[1]||"",a=[];switch(t.behavior){case X.FLIP:a=[r,i];break;case X.CLOCKWISE:a=G(r);break;case X.COUNTERCLOCKWISE:a=G(r,!0);break;default:a=t.behavior}return a.forEach(function(s,u){if(r!==s||a.length===u+1)return e;r=e.placement.split("-")[0],i=L(r);var c=e.offsets.popper,l=e.offsets.reference,f=Math.floor,p="left"===r&&f(c.right)>f(l.left)||"right"===r&&f(c.left)<f(l.right)||"top"===r&&f(c.bottom)>f(l.top)||"bottom"===r&&f(c.top)<f(l.bottom),d=f(c.left)<f(n.left),h=f(c.right)>f(n.right),v=f(c.top)<f(n.top),g=f(c.bottom)>f(n.bottom),m="left"===r&&d||"right"===r&&h||"top"===r&&v||"bottom"===r&&g,y=-1!==["top","bottom"].indexOf(r),_=!!t.flipVariations&&(y&&"start"===o&&d||y&&"end"===o&&h||!y&&"start"===o&&v||!y&&"end"===o&&g);(p||m||_)&&(e.flipped=!0,(p||m)&&(r=a[u+1]),_&&(o=function(e){return"end"===e?"start":"start"===e?"end":e}(o)),e.placement=r+(o?"-"+o:""),e.offsets.popper=x({},e.offsets.popper,j(e.instance.popper,e.offsets.reference,e.placement)),e=R(e.instance.modifiers,e,"flip"))}),e},behavior:"flip",padding:5,boundariesElement:"viewport"},inner:{order:700,enabled:!1,fn:function(e){var t=e.placement,n=t.split("-")[0],r=e.offsets,i=r.popper,o=r.reference,a=-1!==["left","right"].indexOf(n),s=-1===["top","left"].indexOf(n);return i[a?"left":"top"]=o[n]-(s?i[a?"width":"height"]:0),e.placement=L(t),e.offsets.popper=C(i),e}},hide:{order:800,enabled:!0,fn:function(e){if(!V(e.instance.modifiers,"hide","preventOverflow"))return e;var t=e.offsets.reference,n=P(e.instance.modifiers,function(e){return"preventOverflow"===e.name}).boundaries;if(t.bottom<n.top||t.left>n.right||t.top>n.bottom||t.right<n.left){if(!0===e.hide)return e;e.hide=!0,e.attributes["x-out-of-boundaries"]=""}else{if(!1===e.hide)return e;e.hide=!1,e.attributes["x-out-of-boundaries"]=!1}return e}},computeStyle:{order:850,enabled:!0,fn:function(e,t){var n=t.x,r=t.y,i=e.offsets.popper,o=P(e.instance.modifiers,function(e){return"applyStyle"===e.name}).gpuAcceleration;void 0!==o&&console.warn("WARNING: `gpuAcceleration` option moved to `computeStyle` modifier and will not be supported in future versions of Popper.js!");var a=void 0!==o?o:t.gpuAcceleration,s=h(e.instance.popper),u=A(s),c={position:i.position},l=function(e,t){var n=e.offsets,r=n.popper,i=n.reference,o=-1!==["left","right"].indexOf(e.placement),a=-1!==e.placement.indexOf("-"),s=i.width%2==r.width%2,u=i.width%2==1&&r.width%2==1,c=function(e){return e},l=t?o||a||s?Math.round:Math.floor:c,f=t?Math.round:c;return{left:l(u&&!a&&t?r.left-1:r.left),top:f(r.top),bottom:f(r.bottom),right:l(r.right)}}(e,window.devicePixelRatio<2||!U),f="bottom"===n?"top":"bottom",p="right"===r?"left":"right",d=H("transform"),v=void 0,g=void 0;if(g="bottom"===f?"HTML"===s.nodeName?-s.clientHeight+l.bottom:-u.height+l.bottom:l.top,v="right"===p?"HTML"===s.nodeName?-s.clientWidth+l.right:-u.width+l.right:l.left,a&&d)c[d]="translate3d("+v+"px, "+g+"px, 0)",c[f]=0,c[p]=0,c.willChange="transform";else{var m="bottom"===f?-1:1,y="right"===p?-1:1;c[f]=g*m,c[p]=v*y,c.willChange=f+", "+p}var _={"x-placement":e.placement};return e.attributes=x({},_,e.attributes),e.styles=x({},c,e.styles),e.arrowStyles=x({},e.offsets.arrow,e.arrowStyles),e},gpuAcceleration:!0,x:"bottom",y:"right"},applyStyle:{order:900,enabled:!0,fn:function(e){var t,n;return B(e.instance.popper,e.styles),t=e.instance.popper,n=e.attributes,Object.keys(n).forEach(function(e){!1!==n[e]?t.setAttribute(e,n[e]):t.removeAttribute(e)}),e.arrowElement&&Object.keys(e.arrowStyles).length&&B(e.arrowElement,e.arrowStyles),e},onLoad:function(e,t,n,r,i){var o=k(i,t,e,n.positionFixed),a=I(n.placement,o,t,e,n.modifiers.flip.boundariesElement,n.modifiers.flip.padding);return t.setAttribute("x-placement",a),B(t,{position:n.positionFixed?"fixed":"absolute"}),n},gpuAcceleration:void 0}}},J=function(){function e(t,n){var r=this,i=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{};w(this,e),this.scheduleUpdate=function(){return requestAnimationFrame(r.update)},this.update=a(this.update.bind(this)),this.options=x({},e.Defaults,i),this.state={isDestroyed:!1,isCreated:!1,scrollParents:[]},this.reference=t&&t.jquery?t[0]:t,this.popper=n&&n.jquery?n[0]:n,this.options.modifiers={},Object.keys(x({},e.Defaults.modifiers,i.modifiers)).forEach(function(t){r.options.modifiers[t]=x({},e.Defaults.modifiers[t]||{},i.modifiers?i.modifiers[t]:{})}),this.modifiers=Object.keys(this.options.modifiers).map(function(e){return x({name:e},r.options.modifiers[e])}).sort(function(e,t){return e.order-t.order}),this.modifiers.forEach(function(e){e.enabled&&s(e.onLoad)&&e.onLoad(r.reference,r.popper,r.options,e,r.state)}),this.update();var o=this.options.eventsEnabled;o&&this.enableEventListeners(),this.state.eventsEnabled=o}return T(e,[{key:"update",value:function(){return function(){if(!this.state.isDestroyed){var e={instance:this,styles:{},arrowStyles:{},attributes:{},flipped:!1,offsets:{}};e.offsets.reference=k(this.state,this.popper,this.reference,this.options.positionFixed),e.placement=I(this.options.placement,e.offsets.reference,this.popper,this.reference,this.options.modifiers.flip.boundariesElement,this.options.modifiers.flip.padding),e.originalPlacement=e.placement,e.positionFixed=this.options.positionFixed,e.offsets.popper=j(this.popper,e.offsets.reference,e.placement),e.offsets.popper.position=this.options.positionFixed?"fixed":"absolute",e=R(this.modifiers,e),this.state.isCreated?this.options.onUpdate(e):(this.state.isCreated=!0,this.options.onCreate(e))}}.call(this)}},{key:"destroy",value:function(){return function(){return this.state.isDestroyed=!0,$(this.modifiers,"applyStyle")&&(this.popper.removeAttribute("x-placement"),this.popper.style.position="",this.popper.style.top="",this.popper.style.left="",this.popper.style.right="",this.popper.style.bottom="",this.popper.style.willChange="",this.popper.style[H("transform")]=""),this.disableEventListeners(),this.options.removeOnDestroy&&this.popper.parentNode.removeChild(this.popper),this}.call(this)}},{key:"enableEventListeners",value:function(){return function(){this.state.eventsEnabled||(this.state=F(this.reference,this.options,this.state,this.scheduleUpdate))}.call(this)}},{key:"disableEventListeners",value:function(){return W.call(this)}}]),e}();J.Utils=("undefined"!=typeof window?window:e).PopperUtils,J.placements=z,J.Defaults=Y,t.default=J}.call(this,n(1))},function(e,t,n){var r;!function(t,n){"use strict";"object"==typeof e.exports?e.exports=t.document?n(t,!0):function(e){if(!e.document)throw new Error("jQuery requires a window with a document");return n(e)}:n(t)}("undefined"!=typeof window?window:this,function(n,i){"use strict";var o=[],a=n.document,s=Object.getPrototypeOf,u=o.slice,c=o.concat,l=o.push,f=o.indexOf,p={},d=p.toString,h=p.hasOwnProperty,v=h.toString,g=v.call(Object),m={},y=function(e){return"function"==typeof e&&"number"!=typeof e.nodeType},_=function(e){return null!=e&&e===e.window},b={type:!0,src:!0,noModule:!0};function w(e,t,n){var r,i=(t=t||a).createElement("script");if(i.text=e,n)for(r in b)n[r]&&(i[r]=n[r]);t.head.appendChild(i).parentNode.removeChild(i)}function T(e){return null==e?e+"":"object"==typeof e||"function"==typeof e?p[d.call(e)]||"object":typeof e}var E=function(e,t){return new E.fn.init(e,t)},x=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;function C(e){var t=!!e&&"length"in e&&e.length,n=T(e);return!y(e)&&!_(e)&&("array"===n||0===t||"number"==typeof t&&t>0&&t-1 in e)}E.fn=E.prototype={jquery:"3.3.1",constructor:E,length:0,toArray:function(){return u.call(this)},get:function(e){return null==e?u.call(this):e<0?this[e+this.length]:this[e]},pushStack:function(e){var t=E.merge(this.constructor(),e);return t.prevObject=this,t},each:function(e){return E.each(this,e)},map:function(e){return this.pushStack(E.map(this,function(t,n){return e.call(t,n,t)}))},slice:function(){return this.pushStack(u.apply(this,arguments))},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},eq:function(e){var t=this.length,n=+e+(e<0?t:0);return this.pushStack(n>=0&&n<t?[this[n]]:[])},end:function(){return this.prevObject||this.constructor()},push:l,sort:o.sort,splice:o.splice},E.extend=E.fn.extend=function(){var e,t,n,r,i,o,a=arguments[0]||{},s=1,u=arguments.length,c=!1;for("boolean"==typeof a&&(c=a,a=arguments[s]||{},s++),"object"==typeof a||y(a)||(a={}),s===u&&(a=this,s--);s<u;s++)if(null!=(e=arguments[s]))for(t in e)n=a[t],a!==(r=e[t])&&(c&&r&&(E.isPlainObject(r)||(i=Array.isArray(r)))?(i?(i=!1,o=n&&Array.isArray(n)?n:[]):o=n&&E.isPlainObject(n)?n:{},a[t]=E.extend(c,o,r)):void 0!==r&&(a[t]=r));return a},E.extend({expando:"jQuery"+("3.3.1"+Math.random()).replace(/\D/g,""),isReady:!0,error:function(e){throw new Error(e)},noop:function(){},isPlainObject:function(e){var t,n;return!(!e||"[object Object]"!==d.call(e))&&(!(t=s(e))||"function"==typeof(n=h.call(t,"constructor")&&t.constructor)&&v.call(n)===g)},isEmptyObject:function(e){var t;for(t in e)return!1;return!0},globalEval:function(e){w(e)},each:function(e,t){var n,r=0;if(C(e))for(n=e.length;r<n&&!1!==t.call(e[r],r,e[r]);r++);else for(r in e)if(!1===t.call(e[r],r,e[r]))break;return e},trim:function(e){return null==e?"":(e+"").replace(x,"")},makeArray:function(e,t){var n=t||[];return null!=e&&(C(Object(e))?E.merge(n,"string"==typeof e?[e]:e):l.call(n,e)),n},inArray:function(e,t,n){return null==t?-1:f.call(t,e,n)},merge:function(e,t){for(var n=+t.length,r=0,i=e.length;r<n;r++)e[i++]=t[r];return e.length=i,e},grep:function(e,t,n){for(var r=[],i=0,o=e.length,a=!n;i<o;i++)!t(e[i],i)!==a&&r.push(e[i]);return r},map:function(e,t,n){var r,i,o=0,a=[];if(C(e))for(r=e.length;o<r;o++)null!=(i=t(e[o],o,n))&&a.push(i);else for(o in e)null!=(i=t(e[o],o,n))&&a.push(i);return c.apply([],a)},guid:1,support:m}),"function"==typeof Symbol&&(E.fn[Symbol.iterator]=o[Symbol.iterator]),E.each("Boolean Number String Function Array Date RegExp Object Error Symbol".split(" "),function(e,t){p["[object "+t+"]"]=t.toLowerCase()});var A=function(e){var t,n,r,i,o,a,s,u,c,l,f,p,d,h,v,g,m,y,_,b="sizzle"+1*new Date,w=e.document,T=0,E=0,x=ae(),C=ae(),A=ae(),S=function(e,t){return e===t&&(f=!0),0},O={}.hasOwnProperty,D=[],I=D.pop,k=D.push,N=D.push,L=D.slice,j=function(e,t){for(var n=0,r=e.length;n<r;n++)if(e[n]===t)return n;return-1},P="checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",R="[\\x20\\t\\r\\n\\f]",$="(?:\\\\.|[\\w-]|[^\0-\\xa0])+",H="\\["+R+"*("+$+")(?:"+R+"*([*^$|!~]?=)"+R+"*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|("+$+"))|)"+R+"*\\]",M=":("+$+")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|"+H+")*)|.*)\\)|)",F=new RegExp(R+"+","g"),W=new RegExp("^"+R+"+|((?:^|[^\\\\])(?:\\\\.)*)"+R+"+$","g"),q=new RegExp("^"+R+"*,"+R+"*"),B=new RegExp("^"+R+"*([>+~]|"+R+")"+R+"*"),U=new RegExp("="+R+"*([^\\]'\"]*?)"+R+"*\\]","g"),V=new RegExp(M),z=new RegExp("^"+$+"$"),K={ID:new RegExp("^#("+$+")"),CLASS:new RegExp("^\\.("+$+")"),TAG:new RegExp("^("+$+"|[*])"),ATTR:new RegExp("^"+H),PSEUDO:new RegExp("^"+M),CHILD:new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\("+R+"*(even|odd|(([+-]|)(\\d*)n|)"+R+"*(?:([+-]|)"+R+"*(\\d+)|))"+R+"*\\)|)","i"),bool:new RegExp("^(?:"+P+")$","i"),needsContext:new RegExp("^"+R+"*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\("+R+"*((?:-\\d)?\\d*)"+R+"*\\)|)(?=[^-]|$)","i")},G=/^(?:input|select|textarea|button)$/i,X=/^h\d$/i,Q=/^[^{]+\{\s*\[native \w/,Y=/^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,J=/[+~]/,Z=new RegExp("\\\\([\\da-f]{1,6}"+R+"?|("+R+")|.)","ig"),ee=function(e,t,n){var r="0x"+t-65536;return r!=r||n?t:r<0?String.fromCharCode(r+65536):String.fromCharCode(r>>10|55296,1023&r|56320)},te=/([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,ne=function(e,t){return t?"\0"===e?"�":e.slice(0,-1)+"\\"+e.charCodeAt(e.length-1).toString(16)+" ":"\\"+e},re=function(){p()},ie=ye(function(e){return!0===e.disabled&&("form"in e||"label"in e)},{dir:"parentNode",next:"legend"});try{N.apply(D=L.call(w.childNodes),w.childNodes),D[w.childNodes.length].nodeType}catch(e){N={apply:D.length?function(e,t){k.apply(e,L.call(t))}:function(e,t){for(var n=e.length,r=0;e[n++]=t[r++];);e.length=n-1}}}function oe(e,t,r,i){var o,s,c,l,f,h,m,y=t&&t.ownerDocument,T=t?t.nodeType:9;if(r=r||[],"string"!=typeof e||!e||1!==T&&9!==T&&11!==T)return r;if(!i&&((t?t.ownerDocument||t:w)!==d&&p(t),t=t||d,v)){if(11!==T&&(f=Y.exec(e)))if(o=f[1]){if(9===T){if(!(c=t.getElementById(o)))return r;if(c.id===o)return r.push(c),r}else if(y&&(c=y.getElementById(o))&&_(t,c)&&c.id===o)return r.push(c),r}else{if(f[2])return N.apply(r,t.getElementsByTagName(e)),r;if((o=f[3])&&n.getElementsByClassName&&t.getElementsByClassName)return N.apply(r,t.getElementsByClassName(o)),r}if(n.qsa&&!A[e+" "]&&(!g||!g.test(e))){if(1!==T)y=t,m=e;else if("object"!==t.nodeName.toLowerCase()){for((l=t.getAttribute("id"))?l=l.replace(te,ne):t.setAttribute("id",l=b),s=(h=a(e)).length;s--;)h[s]="#"+l+" "+me(h[s]);m=h.join(","),y=J.test(e)&&ve(t.parentNode)||t}if(m)try{return N.apply(r,y.querySelectorAll(m)),r}catch(e){}finally{l===b&&t.removeAttribute("id")}}}return u(e.replace(W,"$1"),t,r,i)}function ae(){var e=[];return function t(n,i){return e.push(n+" ")>r.cacheLength&&delete t[e.shift()],t[n+" "]=i}}function se(e){return e[b]=!0,e}function ue(e){var t=d.createElement("fieldset");try{return!!e(t)}catch(e){return!1}finally{t.parentNode&&t.parentNode.removeChild(t),t=null}}function ce(e,t){for(var n=e.split("|"),i=n.length;i--;)r.attrHandle[n[i]]=t}function le(e,t){var n=t&&e,r=n&&1===e.nodeType&&1===t.nodeType&&e.sourceIndex-t.sourceIndex;if(r)return r;if(n)for(;n=n.nextSibling;)if(n===t)return-1;return e?1:-1}function fe(e){return function(t){return"input"===t.nodeName.toLowerCase()&&t.type===e}}function pe(e){return function(t){var n=t.nodeName.toLowerCase();return("input"===n||"button"===n)&&t.type===e}}function de(e){return function(t){return"form"in t?t.parentNode&&!1===t.disabled?"label"in t?"label"in t.parentNode?t.parentNode.disabled===e:t.disabled===e:t.isDisabled===e||t.isDisabled!==!e&&ie(t)===e:t.disabled===e:"label"in t&&t.disabled===e}}function he(e){return se(function(t){return t=+t,se(function(n,r){for(var i,o=e([],n.length,t),a=o.length;a--;)n[i=o[a]]&&(n[i]=!(r[i]=n[i]))})})}function ve(e){return e&&void 0!==e.getElementsByTagName&&e}for(t in n=oe.support={},o=oe.isXML=function(e){var t=e&&(e.ownerDocument||e).documentElement;return!!t&&"HTML"!==t.nodeName},p=oe.setDocument=function(e){var t,i,a=e?e.ownerDocument||e:w;return a!==d&&9===a.nodeType&&a.documentElement?(h=(d=a).documentElement,v=!o(d),w!==d&&(i=d.defaultView)&&i.top!==i&&(i.addEventListener?i.addEventListener("unload",re,!1):i.attachEvent&&i.attachEvent("onunload",re)),n.attributes=ue(function(e){return e.className="i",!e.getAttribute("className")}),n.getElementsByTagName=ue(function(e){return e.appendChild(d.createComment("")),!e.getElementsByTagName("*").length}),n.getElementsByClassName=Q.test(d.getElementsByClassName),n.getById=ue(function(e){return h.appendChild(e).id=b,!d.getElementsByName||!d.getElementsByName(b).length}),n.getById?(r.filter.ID=function(e){var t=e.replace(Z,ee);return function(e){return e.getAttribute("id")===t}},r.find.ID=function(e,t){if(void 0!==t.getElementById&&v){var n=t.getElementById(e);return n?[n]:[]}}):(r.filter.ID=function(e){var t=e.replace(Z,ee);return function(e){var n=void 0!==e.getAttributeNode&&e.getAttributeNode("id");return n&&n.value===t}},r.find.ID=function(e,t){if(void 0!==t.getElementById&&v){var n,r,i,o=t.getElementById(e);if(o){if((n=o.getAttributeNode("id"))&&n.value===e)return[o];for(i=t.getElementsByName(e),r=0;o=i[r++];)if((n=o.getAttributeNode("id"))&&n.value===e)return[o]}return[]}}),r.find.TAG=n.getElementsByTagName?function(e,t){return void 0!==t.getElementsByTagName?t.getElementsByTagName(e):n.qsa?t.querySelectorAll(e):void 0}:function(e,t){var n,r=[],i=0,o=t.getElementsByTagName(e);if("*"===e){for(;n=o[i++];)1===n.nodeType&&r.push(n);return r}return o},r.find.CLASS=n.getElementsByClassName&&function(e,t){if(void 0!==t.getElementsByClassName&&v)return t.getElementsByClassName(e)},m=[],g=[],(n.qsa=Q.test(d.querySelectorAll))&&(ue(function(e){h.appendChild(e).innerHTML="<a id='"+b+"'></a><select id='"+b+"-\r\\' msallowcapture=''><option selected=''></option></select>",e.querySelectorAll("[msallowcapture^='']").length&&g.push("[*^$]="+R+"*(?:''|\"\")"),e.querySelectorAll("[selected]").length||g.push("\\["+R+"*(?:value|"+P+")"),e.querySelectorAll("[id~="+b+"-]").length||g.push("~="),e.querySelectorAll(":checked").length||g.push(":checked"),e.querySelectorAll("a#"+b+"+*").length||g.push(".#.+[+~]")}),ue(function(e){e.innerHTML="<a href='' disabled='disabled'></a><select disabled='disabled'><option/></select>";var t=d.createElement("input");t.setAttribute("type","hidden"),e.appendChild(t).setAttribute("name","D"),e.querySelectorAll("[name=d]").length&&g.push("name"+R+"*[*^$|!~]?="),2!==e.querySelectorAll(":enabled").length&&g.push(":enabled",":disabled"),h.appendChild(e).disabled=!0,2!==e.querySelectorAll(":disabled").length&&g.push(":enabled",":disabled"),e.querySelectorAll("*,:x"),g.push(",.*:")})),(n.matchesSelector=Q.test(y=h.matches||h.webkitMatchesSelector||h.mozMatchesSelector||h.oMatchesSelector||h.msMatchesSelector))&&ue(function(e){n.disconnectedMatch=y.call(e,"*"),y.call(e,"[s!='']:x"),m.push("!=",M)}),g=g.length&&new RegExp(g.join("|")),m=m.length&&new RegExp(m.join("|")),t=Q.test(h.compareDocumentPosition),_=t||Q.test(h.contains)?function(e,t){var n=9===e.nodeType?e.documentElement:e,r=t&&t.parentNode;return e===r||!(!r||1!==r.nodeType||!(n.contains?n.contains(r):e.compareDocumentPosition&&16&e.compareDocumentPosition(r)))}:function(e,t){if(t)for(;t=t.parentNode;)if(t===e)return!0;return!1},S=t?function(e,t){if(e===t)return f=!0,0;var r=!e.compareDocumentPosition-!t.compareDocumentPosition;return r||(1&(r=(e.ownerDocument||e)===(t.ownerDocument||t)?e.compareDocumentPosition(t):1)||!n.sortDetached&&t.compareDocumentPosition(e)===r?e===d||e.ownerDocument===w&&_(w,e)?-1:t===d||t.ownerDocument===w&&_(w,t)?1:l?j(l,e)-j(l,t):0:4&r?-1:1)}:function(e,t){if(e===t)return f=!0,0;var n,r=0,i=e.parentNode,o=t.parentNode,a=[e],s=[t];if(!i||!o)return e===d?-1:t===d?1:i?-1:o?1:l?j(l,e)-j(l,t):0;if(i===o)return le(e,t);for(n=e;n=n.parentNode;)a.unshift(n);for(n=t;n=n.parentNode;)s.unshift(n);for(;a[r]===s[r];)r++;return r?le(a[r],s[r]):a[r]===w?-1:s[r]===w?1:0},d):d},oe.matches=function(e,t){return oe(e,null,null,t)},oe.matchesSelector=function(e,t){if((e.ownerDocument||e)!==d&&p(e),t=t.replace(U,"='$1']"),n.matchesSelector&&v&&!A[t+" "]&&(!m||!m.test(t))&&(!g||!g.test(t)))try{var r=y.call(e,t);if(r||n.disconnectedMatch||e.document&&11!==e.document.nodeType)return r}catch(e){}return oe(t,d,null,[e]).length>0},oe.contains=function(e,t){return(e.ownerDocument||e)!==d&&p(e),_(e,t)},oe.attr=function(e,t){(e.ownerDocument||e)!==d&&p(e);var i=r.attrHandle[t.toLowerCase()],o=i&&O.call(r.attrHandle,t.toLowerCase())?i(e,t,!v):void 0;return void 0!==o?o:n.attributes||!v?e.getAttribute(t):(o=e.getAttributeNode(t))&&o.specified?o.value:null},oe.escape=function(e){return(e+"").replace(te,ne)},oe.error=function(e){throw new Error("Syntax error, unrecognized expression: "+e)},oe.uniqueSort=function(e){var t,r=[],i=0,o=0;if(f=!n.detectDuplicates,l=!n.sortStable&&e.slice(0),e.sort(S),f){for(;t=e[o++];)t===e[o]&&(i=r.push(o));for(;i--;)e.splice(r[i],1)}return l=null,e},i=oe.getText=function(e){var t,n="",r=0,o=e.nodeType;if(o){if(1===o||9===o||11===o){if("string"==typeof e.textContent)return e.textContent;for(e=e.firstChild;e;e=e.nextSibling)n+=i(e)}else if(3===o||4===o)return e.nodeValue}else for(;t=e[r++];)n+=i(t);return n},(r=oe.selectors={cacheLength:50,createPseudo:se,match:K,attrHandle:{},find:{},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(e){return e[1]=e[1].replace(Z,ee),e[3]=(e[3]||e[4]||e[5]||"").replace(Z,ee),"~="===e[2]&&(e[3]=" "+e[3]+" "),e.slice(0,4)},CHILD:function(e){return e[1]=e[1].toLowerCase(),"nth"===e[1].slice(0,3)?(e[3]||oe.error(e[0]),e[4]=+(e[4]?e[5]+(e[6]||1):2*("even"===e[3]||"odd"===e[3])),e[5]=+(e[7]+e[8]||"odd"===e[3])):e[3]&&oe.error(e[0]),e},PSEUDO:function(e){var t,n=!e[6]&&e[2];return K.CHILD.test(e[0])?null:(e[3]?e[2]=e[4]||e[5]||"":n&&V.test(n)&&(t=a(n,!0))&&(t=n.indexOf(")",n.length-t)-n.length)&&(e[0]=e[0].slice(0,t),e[2]=n.slice(0,t)),e.slice(0,3))}},filter:{TAG:function(e){var t=e.replace(Z,ee).toLowerCase();return"*"===e?function(){return!0}:function(e){return e.nodeName&&e.nodeName.toLowerCase()===t}},CLASS:function(e){var t=x[e+" "];return t||(t=new RegExp("(^|"+R+")"+e+"("+R+"|$)"))&&x(e,function(e){return t.test("string"==typeof e.className&&e.className||void 0!==e.getAttribute&&e.getAttribute("class")||"")})},ATTR:function(e,t,n){return function(r){var i=oe.attr(r,e);return null==i?"!="===t:!t||(i+="","="===t?i===n:"!="===t?i!==n:"^="===t?n&&0===i.indexOf(n):"*="===t?n&&i.indexOf(n)>-1:"$="===t?n&&i.slice(-n.length)===n:"~="===t?(" "+i.replace(F," ")+" ").indexOf(n)>-1:"|="===t&&(i===n||i.slice(0,n.length+1)===n+"-"))}},CHILD:function(e,t,n,r,i){var o="nth"!==e.slice(0,3),a="last"!==e.slice(-4),s="of-type"===t;return 1===r&&0===i?function(e){return!!e.parentNode}:function(t,n,u){var c,l,f,p,d,h,v=o!==a?"nextSibling":"previousSibling",g=t.parentNode,m=s&&t.nodeName.toLowerCase(),y=!u&&!s,_=!1;if(g){if(o){for(;v;){for(p=t;p=p[v];)if(s?p.nodeName.toLowerCase()===m:1===p.nodeType)return!1;h=v="only"===e&&!h&&"nextSibling"}return!0}if(h=[a?g.firstChild:g.lastChild],a&&y){for(_=(d=(c=(l=(f=(p=g)[b]||(p[b]={}))[p.uniqueID]||(f[p.uniqueID]={}))[e]||[])[0]===T&&c[1])&&c[2],p=d&&g.childNodes[d];p=++d&&p&&p[v]||(_=d=0)||h.pop();)if(1===p.nodeType&&++_&&p===t){l[e]=[T,d,_];break}}else if(y&&(_=d=(c=(l=(f=(p=t)[b]||(p[b]={}))[p.uniqueID]||(f[p.uniqueID]={}))[e]||[])[0]===T&&c[1]),!1===_)for(;(p=++d&&p&&p[v]||(_=d=0)||h.pop())&&((s?p.nodeName.toLowerCase()!==m:1!==p.nodeType)||!++_||(y&&((l=(f=p[b]||(p[b]={}))[p.uniqueID]||(f[p.uniqueID]={}))[e]=[T,_]),p!==t)););return(_-=i)===r||_%r==0&&_/r>=0}}},PSEUDO:function(e,t){var n,i=r.pseudos[e]||r.setFilters[e.toLowerCase()]||oe.error("unsupported pseudo: "+e);return i[b]?i(t):i.length>1?(n=[e,e,"",t],r.setFilters.hasOwnProperty(e.toLowerCase())?se(function(e,n){for(var r,o=i(e,t),a=o.length;a--;)e[r=j(e,o[a])]=!(n[r]=o[a])}):function(e){return i(e,0,n)}):i}},pseudos:{not:se(function(e){var t=[],n=[],r=s(e.replace(W,"$1"));return r[b]?se(function(e,t,n,i){for(var o,a=r(e,null,i,[]),s=e.length;s--;)(o=a[s])&&(e[s]=!(t[s]=o))}):function(e,i,o){return t[0]=e,r(t,null,o,n),t[0]=null,!n.pop()}}),has:se(function(e){return function(t){return oe(e,t).length>0}}),contains:se(function(e){return e=e.replace(Z,ee),function(t){return(t.textContent||t.innerText||i(t)).indexOf(e)>-1}}),lang:se(function(e){return z.test(e||"")||oe.error("unsupported lang: "+e),e=e.replace(Z,ee).toLowerCase(),function(t){var n;do{if(n=v?t.lang:t.getAttribute("xml:lang")||t.getAttribute("lang"))return(n=n.toLowerCase())===e||0===n.indexOf(e+"-")}while((t=t.parentNode)&&1===t.nodeType);return!1}}),target:function(t){var n=e.location&&e.location.hash;return n&&n.slice(1)===t.id},root:function(e){return e===h},focus:function(e){return e===d.activeElement&&(!d.hasFocus||d.hasFocus())&&!!(e.type||e.href||~e.tabIndex)},enabled:de(!1),disabled:de(!0),checked:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&!!e.checked||"option"===t&&!!e.selected},selected:function(e){return e.parentNode&&e.parentNode.selectedIndex,!0===e.selected},empty:function(e){for(e=e.firstChild;e;e=e.nextSibling)if(e.nodeType<6)return!1;return!0},parent:function(e){return!r.pseudos.empty(e)},header:function(e){return X.test(e.nodeName)},input:function(e){return G.test(e.nodeName)},button:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&"button"===e.type||"button"===t},text:function(e){var t;return"input"===e.nodeName.toLowerCase()&&"text"===e.type&&(null==(t=e.getAttribute("type"))||"text"===t.toLowerCase())},first:he(function(){return[0]}),last:he(function(e,t){return[t-1]}),eq:he(function(e,t,n){return[n<0?n+t:n]}),even:he(function(e,t){for(var n=0;n<t;n+=2)e.push(n);return e}),odd:he(function(e,t){for(var n=1;n<t;n+=2)e.push(n);return e}),lt:he(function(e,t,n){for(var r=n<0?n+t:n;--r>=0;)e.push(r);return e}),gt:he(function(e,t,n){for(var r=n<0?n+t:n;++r<t;)e.push(r);return e})}}).pseudos.nth=r.pseudos.eq,{radio:!0,checkbox:!0,file:!0,password:!0,image:!0})r.pseudos[t]=fe(t);for(t in{submit:!0,reset:!0})r.pseudos[t]=pe(t);function ge(){}function me(e){for(var t=0,n=e.length,r="";t<n;t++)r+=e[t].value;return r}function ye(e,t,n){var r=t.dir,i=t.next,o=i||r,a=n&&"parentNode"===o,s=E++;return t.first?function(t,n,i){for(;t=t[r];)if(1===t.nodeType||a)return e(t,n,i);return!1}:function(t,n,u){var c,l,f,p=[T,s];if(u){for(;t=t[r];)if((1===t.nodeType||a)&&e(t,n,u))return!0}else for(;t=t[r];)if(1===t.nodeType||a)if(l=(f=t[b]||(t[b]={}))[t.uniqueID]||(f[t.uniqueID]={}),i&&i===t.nodeName.toLowerCase())t=t[r]||t;else{if((c=l[o])&&c[0]===T&&c[1]===s)return p[2]=c[2];if(l[o]=p,p[2]=e(t,n,u))return!0}return!1}}function _e(e){return e.length>1?function(t,n,r){for(var i=e.length;i--;)if(!e[i](t,n,r))return!1;return!0}:e[0]}function be(e,t,n,r,i){for(var o,a=[],s=0,u=e.length,c=null!=t;s<u;s++)(o=e[s])&&(n&&!n(o,r,i)||(a.push(o),c&&t.push(s)));return a}function we(e,t,n,r,i,o){return r&&!r[b]&&(r=we(r)),i&&!i[b]&&(i=we(i,o)),se(function(o,a,s,u){var c,l,f,p=[],d=[],h=a.length,v=o||function(e,t,n){for(var r=0,i=t.length;r<i;r++)oe(e,t[r],n);return n}(t||"*",s.nodeType?[s]:s,[]),g=!e||!o&&t?v:be(v,p,e,s,u),m=n?i||(o?e:h||r)?[]:a:g;if(n&&n(g,m,s,u),r)for(c=be(m,d),r(c,[],s,u),l=c.length;l--;)(f=c[l])&&(m[d[l]]=!(g[d[l]]=f));if(o){if(i||e){if(i){for(c=[],l=m.length;l--;)(f=m[l])&&c.push(g[l]=f);i(null,m=[],c,u)}for(l=m.length;l--;)(f=m[l])&&(c=i?j(o,f):p[l])>-1&&(o[c]=!(a[c]=f))}}else m=be(m===a?m.splice(h,m.length):m),i?i(null,a,m,u):N.apply(a,m)})}function Te(e){for(var t,n,i,o=e.length,a=r.relative[e[0].type],s=a||r.relative[" "],u=a?1:0,l=ye(function(e){return e===t},s,!0),f=ye(function(e){return j(t,e)>-1},s,!0),p=[function(e,n,r){var i=!a&&(r||n!==c)||((t=n).nodeType?l(e,n,r):f(e,n,r));return t=null,i}];u<o;u++)if(n=r.relative[e[u].type])p=[ye(_e(p),n)];else{if((n=r.filter[e[u].type].apply(null,e[u].matches))[b]){for(i=++u;i<o&&!r.relative[e[i].type];i++);return we(u>1&&_e(p),u>1&&me(e.slice(0,u-1).concat({value:" "===e[u-2].type?"*":""})).replace(W,"$1"),n,u<i&&Te(e.slice(u,i)),i<o&&Te(e=e.slice(i)),i<o&&me(e))}p.push(n)}return _e(p)}return ge.prototype=r.filters=r.pseudos,r.setFilters=new ge,a=oe.tokenize=function(e,t){var n,i,o,a,s,u,c,l=C[e+" "];if(l)return t?0:l.slice(0);for(s=e,u=[],c=r.preFilter;s;){for(a in n&&!(i=q.exec(s))||(i&&(s=s.slice(i[0].length)||s),u.push(o=[])),n=!1,(i=B.exec(s))&&(n=i.shift(),o.push({value:n,type:i[0].replace(W," ")}),s=s.slice(n.length)),r.filter)!(i=K[a].exec(s))||c[a]&&!(i=c[a](i))||(n=i.shift(),o.push({value:n,type:a,matches:i}),s=s.slice(n.length));if(!n)break}return t?s.length:s?oe.error(e):C(e,u).slice(0)},s=oe.compile=function(e,t){var n,i=[],o=[],s=A[e+" "];if(!s){for(t||(t=a(e)),n=t.length;n--;)(s=Te(t[n]))[b]?i.push(s):o.push(s);(s=A(e,function(e,t){var n=t.length>0,i=e.length>0,o=function(o,a,s,u,l){var f,h,g,m=0,y="0",_=o&&[],b=[],w=c,E=o||i&&r.find.TAG("*",l),x=T+=null==w?1:Math.random()||.1,C=E.length;for(l&&(c=a===d||a||l);y!==C&&null!=(f=E[y]);y++){if(i&&f){for(h=0,a||f.ownerDocument===d||(p(f),s=!v);g=e[h++];)if(g(f,a||d,s)){u.push(f);break}l&&(T=x)}n&&((f=!g&&f)&&m--,o&&_.push(f))}if(m+=y,n&&y!==m){for(h=0;g=t[h++];)g(_,b,a,s);if(o){if(m>0)for(;y--;)_[y]||b[y]||(b[y]=I.call(u));b=be(b)}N.apply(u,b),l&&!o&&b.length>0&&m+t.length>1&&oe.uniqueSort(u)}return l&&(T=x,c=w),_};return n?se(o):o}(o,i))).selector=e}return s},u=oe.select=function(e,t,n,i){var o,u,c,l,f,p="function"==typeof e&&e,d=!i&&a(e=p.selector||e);if(n=n||[],1===d.length){if((u=d[0]=d[0].slice(0)).length>2&&"ID"===(c=u[0]).type&&9===t.nodeType&&v&&r.relative[u[1].type]){if(!(t=(r.find.ID(c.matches[0].replace(Z,ee),t)||[])[0]))return n;p&&(t=t.parentNode),e=e.slice(u.shift().value.length)}for(o=K.needsContext.test(e)?0:u.length;o--&&(c=u[o],!r.relative[l=c.type]);)if((f=r.find[l])&&(i=f(c.matches[0].replace(Z,ee),J.test(u[0].type)&&ve(t.parentNode)||t))){if(u.splice(o,1),!(e=i.length&&me(u)))return N.apply(n,i),n;break}}return(p||s(e,d))(i,t,!v,n,!t||J.test(e)&&ve(t.parentNode)||t),n},n.sortStable=b.split("").sort(S).join("")===b,n.detectDuplicates=!!f,p(),n.sortDetached=ue(function(e){return 1&e.compareDocumentPosition(d.createElement("fieldset"))}),ue(function(e){return e.innerHTML="<a href='#'></a>","#"===e.firstChild.getAttribute("href")})||ce("type|href|height|width",function(e,t,n){if(!n)return e.getAttribute(t,"type"===t.toLowerCase()?1:2)}),n.attributes&&ue(function(e){return e.innerHTML="<input/>",e.firstChild.setAttribute("value",""),""===e.firstChild.getAttribute("value")})||ce("value",function(e,t,n){if(!n&&"input"===e.nodeName.toLowerCase())return e.defaultValue}),ue(function(e){return null==e.getAttribute("disabled")})||ce(P,function(e,t,n){var r;if(!n)return!0===e[t]?t.toLowerCase():(r=e.getAttributeNode(t))&&r.specified?r.value:null}),oe}(n);E.find=A,E.expr=A.selectors,E.expr[":"]=E.expr.pseudos,E.uniqueSort=E.unique=A.uniqueSort,E.text=A.getText,E.isXMLDoc=A.isXML,E.contains=A.contains,E.escapeSelector=A.escape;var S=function(e,t,n){for(var r=[],i=void 0!==n;(e=e[t])&&9!==e.nodeType;)if(1===e.nodeType){if(i&&E(e).is(n))break;r.push(e)}return r},O=function(e,t){for(var n=[];e;e=e.nextSibling)1===e.nodeType&&e!==t&&n.push(e);return n},D=E.expr.match.needsContext;function I(e,t){return e.nodeName&&e.nodeName.toLowerCase()===t.toLowerCase()}var k=/^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?:<\/\1>|)$/i;function N(e,t,n){return y(t)?E.grep(e,function(e,r){return!!t.call(e,r,e)!==n}):t.nodeType?E.grep(e,function(e){return e===t!==n}):"string"!=typeof t?E.grep(e,function(e){return f.call(t,e)>-1!==n}):E.filter(t,e,n)}E.filter=function(e,t,n){var r=t[0];return n&&(e=":not("+e+")"),1===t.length&&1===r.nodeType?E.find.matchesSelector(r,e)?[r]:[]:E.find.matches(e,E.grep(t,function(e){return 1===e.nodeType}))},E.fn.extend({find:function(e){var t,n,r=this.length,i=this;if("string"!=typeof e)return this.pushStack(E(e).filter(function(){for(t=0;t<r;t++)if(E.contains(i[t],this))return!0}));for(n=this.pushStack([]),t=0;t<r;t++)E.find(e,i[t],n);return r>1?E.uniqueSort(n):n},filter:function(e){return this.pushStack(N(this,e||[],!1))},not:function(e){return this.pushStack(N(this,e||[],!0))},is:function(e){return!!N(this,"string"==typeof e&&D.test(e)?E(e):e||[],!1).length}});var L,j=/^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;(E.fn.init=function(e,t,n){var r,i;if(!e)return this;if(n=n||L,"string"==typeof e){if(!(r="<"===e[0]&&">"===e[e.length-1]&&e.length>=3?[null,e,null]:j.exec(e))||!r[1]&&t)return!t||t.jquery?(t||n).find(e):this.constructor(t).find(e);if(r[1]){if(t=t instanceof E?t[0]:t,E.merge(this,E.parseHTML(r[1],t&&t.nodeType?t.ownerDocument||t:a,!0)),k.test(r[1])&&E.isPlainObject(t))for(r in t)y(this[r])?this[r](t[r]):this.attr(r,t[r]);return this}return(i=a.getElementById(r[2]))&&(this[0]=i,this.length=1),this}return e.nodeType?(this[0]=e,this.length=1,this):y(e)?void 0!==n.ready?n.ready(e):e(E):E.makeArray(e,this)}).prototype=E.fn,L=E(a);var P=/^(?:parents|prev(?:Until|All))/,R={children:!0,contents:!0,next:!0,prev:!0};function $(e,t){for(;(e=e[t])&&1!==e.nodeType;);return e}E.fn.extend({has:function(e){var t=E(e,this),n=t.length;return this.filter(function(){for(var e=0;e<n;e++)if(E.contains(this,t[e]))return!0})},closest:function(e,t){var n,r=0,i=this.length,o=[],a="string"!=typeof e&&E(e);if(!D.test(e))for(;r<i;r++)for(n=this[r];n&&n!==t;n=n.parentNode)if(n.nodeType<11&&(a?a.index(n)>-1:1===n.nodeType&&E.find.matchesSelector(n,e))){o.push(n);break}return this.pushStack(o.length>1?E.uniqueSort(o):o)},index:function(e){return e?"string"==typeof e?f.call(E(e),this[0]):f.call(this,e.jquery?e[0]:e):this[0]&&this[0].parentNode?this.first().prevAll().length:-1},add:function(e,t){return this.pushStack(E.uniqueSort(E.merge(this.get(),E(e,t))))},addBack:function(e){return this.add(null==e?this.prevObject:this.prevObject.filter(e))}}),E.each({parent:function(e){var t=e.parentNode;return t&&11!==t.nodeType?t:null},parents:function(e){return S(e,"parentNode")},parentsUntil:function(e,t,n){return S(e,"parentNode",n)},next:function(e){return $(e,"nextSibling")},prev:function(e){return $(e,"previousSibling")},nextAll:function(e){return S(e,"nextSibling")},prevAll:function(e){return S(e,"previousSibling")},nextUntil:function(e,t,n){return S(e,"nextSibling",n)},prevUntil:function(e,t,n){return S(e,"previousSibling",n)},siblings:function(e){return O((e.parentNode||{}).firstChild,e)},children:function(e){return O(e.firstChild)},contents:function(e){return I(e,"iframe")?e.contentDocument:(I(e,"template")&&(e=e.content||e),E.merge([],e.childNodes))}},function(e,t){E.fn[e]=function(n,r){var i=E.map(this,t,n);return"Until"!==e.slice(-5)&&(r=n),r&&"string"==typeof r&&(i=E.filter(r,i)),this.length>1&&(R[e]||E.uniqueSort(i),P.test(e)&&i.reverse()),this.pushStack(i)}});var H=/[^\x20\t\r\n\f]+/g;function M(e){return e}function F(e){throw e}function W(e,t,n,r){var i;try{e&&y(i=e.promise)?i.call(e).done(t).fail(n):e&&y(i=e.then)?i.call(e,t,n):t.apply(void 0,[e].slice(r))}catch(e){n.apply(void 0,[e])}}E.Callbacks=function(e){e="string"==typeof e?function(e){var t={};return E.each(e.match(H)||[],function(e,n){t[n]=!0}),t}(e):E.extend({},e);var t,n,r,i,o=[],a=[],s=-1,u=function(){for(i=i||e.once,r=t=!0;a.length;s=-1)for(n=a.shift();++s<o.length;)!1===o[s].apply(n[0],n[1])&&e.stopOnFalse&&(s=o.length,n=!1);e.memory||(n=!1),t=!1,i&&(o=n?[]:"")},c={add:function(){return o&&(n&&!t&&(s=o.length-1,a.push(n)),function t(n){E.each(n,function(n,r){y(r)?e.unique&&c.has(r)||o.push(r):r&&r.length&&"string"!==T(r)&&t(r)})}(arguments),n&&!t&&u()),this},remove:function(){return E.each(arguments,function(e,t){for(var n;(n=E.inArray(t,o,n))>-1;)o.splice(n,1),n<=s&&s--}),this},has:function(e){return e?E.inArray(e,o)>-1:o.length>0},empty:function(){return o&&(o=[]),this},disable:function(){return i=a=[],o=n="",this},disabled:function(){return!o},lock:function(){return i=a=[],n||t||(o=n=""),this},locked:function(){return!!i},fireWith:function(e,n){return i||(n=[e,(n=n||[]).slice?n.slice():n],a.push(n),t||u()),this},fire:function(){return c.fireWith(this,arguments),this},fired:function(){return!!r}};return c},E.extend({Deferred:function(e){var t=[["notify","progress",E.Callbacks("memory"),E.Callbacks("memory"),2],["resolve","done",E.Callbacks("once memory"),E.Callbacks("once memory"),0,"resolved"],["reject","fail",E.Callbacks("once memory"),E.Callbacks("once memory"),1,"rejected"]],r="pending",i={state:function(){return r},always:function(){return o.done(arguments).fail(arguments),this},catch:function(e){return i.then(null,e)},pipe:function(){var e=arguments;return E.Deferred(function(n){E.each(t,function(t,r){var i=y(e[r[4]])&&e[r[4]];o[r[1]](function(){var e=i&&i.apply(this,arguments);e&&y(e.promise)?e.promise().progress(n.notify).done(n.resolve).fail(n.reject):n[r[0]+"With"](this,i?[e]:arguments)})}),e=null}).promise()},then:function(e,r,i){var o=0;function a(e,t,r,i){return function(){var s=this,u=arguments,c=function(){var n,c;if(!(e<o)){if((n=r.apply(s,u))===t.promise())throw new TypeError("Thenable self-resolution");c=n&&("object"==typeof n||"function"==typeof n)&&n.then,y(c)?i?c.call(n,a(o,t,M,i),a(o,t,F,i)):(o++,c.call(n,a(o,t,M,i),a(o,t,F,i),a(o,t,M,t.notifyWith))):(r!==M&&(s=void 0,u=[n]),(i||t.resolveWith)(s,u))}},l=i?c:function(){try{c()}catch(n){E.Deferred.exceptionHook&&E.Deferred.exceptionHook(n,l.stackTrace),e+1>=o&&(r!==F&&(s=void 0,u=[n]),t.rejectWith(s,u))}};e?l():(E.Deferred.getStackHook&&(l.stackTrace=E.Deferred.getStackHook()),n.setTimeout(l))}}return E.Deferred(function(n){t[0][3].add(a(0,n,y(i)?i:M,n.notifyWith)),t[1][3].add(a(0,n,y(e)?e:M)),t[2][3].add(a(0,n,y(r)?r:F))}).promise()},promise:function(e){return null!=e?E.extend(e,i):i}},o={};return E.each(t,function(e,n){var a=n[2],s=n[5];i[n[1]]=a.add,s&&a.add(function(){r=s},t[3-e][2].disable,t[3-e][3].disable,t[0][2].lock,t[0][3].lock),a.add(n[3].fire),o[n[0]]=function(){return o[n[0]+"With"](this===o?void 0:this,arguments),this},o[n[0]+"With"]=a.fireWith}),i.promise(o),e&&e.call(o,o),o},when:function(e){var t=arguments.length,n=t,r=Array(n),i=u.call(arguments),o=E.Deferred(),a=function(e){return function(n){r[e]=this,i[e]=arguments.length>1?u.call(arguments):n,--t||o.resolveWith(r,i)}};if(t<=1&&(W(e,o.done(a(n)).resolve,o.reject,!t),"pending"===o.state()||y(i[n]&&i[n].then)))return o.then();for(;n--;)W(i[n],a(n),o.reject);return o.promise()}});var q=/^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;E.Deferred.exceptionHook=function(e,t){n.console&&n.console.warn&&e&&q.test(e.name)&&n.console.warn("jQuery.Deferred exception: "+e.message,e.stack,t)},E.readyException=function(e){n.setTimeout(function(){throw e})};var B=E.Deferred();function U(){a.removeEventListener("DOMContentLoaded",U),n.removeEventListener("load",U),E.ready()}E.fn.ready=function(e){return B.then(e).catch(function(e){E.readyException(e)}),this},E.extend({isReady:!1,readyWait:1,ready:function(e){(!0===e?--E.readyWait:E.isReady)||(E.isReady=!0,!0!==e&&--E.readyWait>0||B.resolveWith(a,[E]))}}),E.ready.then=B.then,"complete"===a.readyState||"loading"!==a.readyState&&!a.documentElement.doScroll?n.setTimeout(E.ready):(a.addEventListener("DOMContentLoaded",U),n.addEventListener("load",U));var V=function(e,t,n,r,i,o,a){var s=0,u=e.length,c=null==n;if("object"===T(n))for(s in i=!0,n)V(e,t,s,n[s],!0,o,a);else if(void 0!==r&&(i=!0,y(r)||(a=!0),c&&(a?(t.call(e,r),t=null):(c=t,t=function(e,t,n){return c.call(E(e),n)})),t))for(;s<u;s++)t(e[s],n,a?r:r.call(e[s],s,t(e[s],n)));return i?e:c?t.call(e):u?t(e[0],n):o},z=/^-ms-/,K=/-([a-z])/g;function G(e,t){return t.toUpperCase()}function X(e){return e.replace(z,"ms-").replace(K,G)}var Q=function(e){return 1===e.nodeType||9===e.nodeType||!+e.nodeType};function Y(){this.expando=E.expando+Y.uid++}Y.uid=1,Y.prototype={cache:function(e){var t=e[this.expando];return t||(t={},Q(e)&&(e.nodeType?e[this.expando]=t:Object.defineProperty(e,this.expando,{value:t,configurable:!0}))),t},set:function(e,t,n){var r,i=this.cache(e);if("string"==typeof t)i[X(t)]=n;else for(r in t)i[X(r)]=t[r];return i},get:function(e,t){return void 0===t?this.cache(e):e[this.expando]&&e[this.expando][X(t)]},access:function(e,t,n){return void 0===t||t&&"string"==typeof t&&void 0===n?this.get(e,t):(this.set(e,t,n),void 0!==n?n:t)},remove:function(e,t){var n,r=e[this.expando];if(void 0!==r){if(void 0!==t){n=(t=Array.isArray(t)?t.map(X):(t=X(t))in r?[t]:t.match(H)||[]).length;for(;n--;)delete r[t[n]]}(void 0===t||E.isEmptyObject(r))&&(e.nodeType?e[this.expando]=void 0:delete e[this.expando])}},hasData:function(e){var t=e[this.expando];return void 0!==t&&!E.isEmptyObject(t)}};var J=new Y,Z=new Y,ee=/^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,te=/[A-Z]/g;function ne(e,t,n){var r;if(void 0===n&&1===e.nodeType)if(r="data-"+t.replace(te,"-$&").toLowerCase(),"string"==typeof(n=e.getAttribute(r))){try{n=function(e){return"true"===e||"false"!==e&&("null"===e?null:e===+e+""?+e:ee.test(e)?JSON.parse(e):e)}(n)}catch(e){}Z.set(e,t,n)}else n=void 0;return n}E.extend({hasData:function(e){return Z.hasData(e)||J.hasData(e)},data:function(e,t,n){return Z.access(e,t,n)},removeData:function(e,t){Z.remove(e,t)},_data:function(e,t,n){return J.access(e,t,n)},_removeData:function(e,t){J.remove(e,t)}}),E.fn.extend({data:function(e,t){var n,r,i,o=this[0],a=o&&o.attributes;if(void 0===e){if(this.length&&(i=Z.get(o),1===o.nodeType&&!J.get(o,"hasDataAttrs"))){for(n=a.length;n--;)a[n]&&0===(r=a[n].name).indexOf("data-")&&(r=X(r.slice(5)),ne(o,r,i[r]));J.set(o,"hasDataAttrs",!0)}return i}return"object"==typeof e?this.each(function(){Z.set(this,e)}):V(this,function(t){var n;if(o&&void 0===t)return void 0!==(n=Z.get(o,e))?n:void 0!==(n=ne(o,e))?n:void 0;this.each(function(){Z.set(this,e,t)})},null,t,arguments.length>1,null,!0)},removeData:function(e){return this.each(function(){Z.remove(this,e)})}}),E.extend({queue:function(e,t,n){var r;if(e)return t=(t||"fx")+"queue",r=J.get(e,t),n&&(!r||Array.isArray(n)?r=J.access(e,t,E.makeArray(n)):r.push(n)),r||[]},dequeue:function(e,t){t=t||"fx";var n=E.queue(e,t),r=n.length,i=n.shift(),o=E._queueHooks(e,t);"inprogress"===i&&(i=n.shift(),r--),i&&("fx"===t&&n.unshift("inprogress"),delete o.stop,i.call(e,function(){E.dequeue(e,t)},o)),!r&&o&&o.empty.fire()},_queueHooks:function(e,t){var n=t+"queueHooks";return J.get(e,n)||J.access(e,n,{empty:E.Callbacks("once memory").add(function(){J.remove(e,[t+"queue",n])})})}}),E.fn.extend({queue:function(e,t){var n=2;return"string"!=typeof e&&(t=e,e="fx",n--),arguments.length<n?E.queue(this[0],e):void 0===t?this:this.each(function(){var n=E.queue(this,e,t);E._queueHooks(this,e),"fx"===e&&"inprogress"!==n[0]&&E.dequeue(this,e)})},dequeue:function(e){return this.each(function(){E.dequeue(this,e)})},clearQueue:function(e){return this.queue(e||"fx",[])},promise:function(e,t){var n,r=1,i=E.Deferred(),o=this,a=this.length,s=function(){--r||i.resolveWith(o,[o])};for("string"!=typeof e&&(t=e,e=void 0),e=e||"fx";a--;)(n=J.get(o[a],e+"queueHooks"))&&n.empty&&(r++,n.empty.add(s));return s(),i.promise(t)}});var re=/[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,ie=new RegExp("^(?:([+-])=|)("+re+")([a-z%]*)$","i"),oe=["Top","Right","Bottom","Left"],ae=function(e,t){return"none"===(e=t||e).style.display||""===e.style.display&&E.contains(e.ownerDocument,e)&&"none"===E.css(e,"display")},se=function(e,t,n,r){var i,o,a={};for(o in t)a[o]=e.style[o],e.style[o]=t[o];for(o in i=n.apply(e,r||[]),t)e.style[o]=a[o];return i};function ue(e,t,n,r){var i,o,a=20,s=r?function(){return r.cur()}:function(){return E.css(e,t,"")},u=s(),c=n&&n[3]||(E.cssNumber[t]?"":"px"),l=(E.cssNumber[t]||"px"!==c&&+u)&&ie.exec(E.css(e,t));if(l&&l[3]!==c){for(u/=2,c=c||l[3],l=+u||1;a--;)E.style(e,t,l+c),(1-o)*(1-(o=s()/u||.5))<=0&&(a=0),l/=o;l*=2,E.style(e,t,l+c),n=n||[]}return n&&(l=+l||+u||0,i=n[1]?l+(n[1]+1)*n[2]:+n[2],r&&(r.unit=c,r.start=l,r.end=i)),i}var ce={};function le(e){var t,n=e.ownerDocument,r=e.nodeName,i=ce[r];return i||(t=n.body.appendChild(n.createElement(r)),i=E.css(t,"display"),t.parentNode.removeChild(t),"none"===i&&(i="block"),ce[r]=i,i)}function fe(e,t){for(var n,r,i=[],o=0,a=e.length;o<a;o++)(r=e[o]).style&&(n=r.style.display,t?("none"===n&&(i[o]=J.get(r,"display")||null,i[o]||(r.style.display="")),""===r.style.display&&ae(r)&&(i[o]=le(r))):"none"!==n&&(i[o]="none",J.set(r,"display",n)));for(o=0;o<a;o++)null!=i[o]&&(e[o].style.display=i[o]);return e}E.fn.extend({show:function(){return fe(this,!0)},hide:function(){return fe(this)},toggle:function(e){return"boolean"==typeof e?e?this.show():this.hide():this.each(function(){ae(this)?E(this).show():E(this).hide()})}});var pe=/^(?:checkbox|radio)$/i,de=/<([a-z][^\/\0>\x20\t\r\n\f]+)/i,he=/^$|^module$|\/(?:java|ecma)script/i,ve={option:[1,"<select multiple='multiple'>","</select>"],thead:[1,"<table>","</table>"],col:[2,"<table><colgroup>","</colgroup></table>"],tr:[2,"<table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],_default:[0,"",""]};function ge(e,t){var n;return n=void 0!==e.getElementsByTagName?e.getElementsByTagName(t||"*"):void 0!==e.querySelectorAll?e.querySelectorAll(t||"*"):[],void 0===t||t&&I(e,t)?E.merge([e],n):n}function me(e,t){for(var n=0,r=e.length;n<r;n++)J.set(e[n],"globalEval",!t||J.get(t[n],"globalEval"))}ve.optgroup=ve.option,ve.tbody=ve.tfoot=ve.colgroup=ve.caption=ve.thead,ve.th=ve.td;var ye,_e,be=/<|&#?\w+;/;function we(e,t,n,r,i){for(var o,a,s,u,c,l,f=t.createDocumentFragment(),p=[],d=0,h=e.length;d<h;d++)if((o=e[d])||0===o)if("object"===T(o))E.merge(p,o.nodeType?[o]:o);else if(be.test(o)){for(a=a||f.appendChild(t.createElement("div")),s=(de.exec(o)||["",""])[1].toLowerCase(),u=ve[s]||ve._default,a.innerHTML=u[1]+E.htmlPrefilter(o)+u[2],l=u[0];l--;)a=a.lastChild;E.merge(p,a.childNodes),(a=f.firstChild).textContent=""}else p.push(t.createTextNode(o));for(f.textContent="",d=0;o=p[d++];)if(r&&E.inArray(o,r)>-1)i&&i.push(o);else if(c=E.contains(o.ownerDocument,o),a=ge(f.appendChild(o),"script"),c&&me(a),n)for(l=0;o=a[l++];)he.test(o.type||"")&&n.push(o);return f}ye=a.createDocumentFragment().appendChild(a.createElement("div")),(_e=a.createElement("input")).setAttribute("type","radio"),_e.setAttribute("checked","checked"),_e.setAttribute("name","t"),ye.appendChild(_e),m.checkClone=ye.cloneNode(!0).cloneNode(!0).lastChild.checked,ye.innerHTML="<textarea>x</textarea>",m.noCloneChecked=!!ye.cloneNode(!0).lastChild.defaultValue;var Te=a.documentElement,Ee=/^key/,xe=/^(?:mouse|pointer|contextmenu|drag|drop)|click/,Ce=/^([^.]*)(?:\.(.+)|)/;function Ae(){return!0}function Se(){return!1}function Oe(){try{return a.activeElement}catch(e){}}function De(e,t,n,r,i,o){var a,s;if("object"==typeof t){for(s in"string"!=typeof n&&(r=r||n,n=void 0),t)De(e,s,n,r,t[s],o);return e}if(null==r&&null==i?(i=n,r=n=void 0):null==i&&("string"==typeof n?(i=r,r=void 0):(i=r,r=n,n=void 0)),!1===i)i=Se;else if(!i)return e;return 1===o&&(a=i,(i=function(e){return E().off(e),a.apply(this,arguments)}).guid=a.guid||(a.guid=E.guid++)),e.each(function(){E.event.add(this,t,i,r,n)})}E.event={global:{},add:function(e,t,n,r,i){var o,a,s,u,c,l,f,p,d,h,v,g=J.get(e);if(g)for(n.handler&&(n=(o=n).handler,i=o.selector),i&&E.find.matchesSelector(Te,i),n.guid||(n.guid=E.guid++),(u=g.events)||(u=g.events={}),(a=g.handle)||(a=g.handle=function(t){return void 0!==E&&E.event.triggered!==t.type?E.event.dispatch.apply(e,arguments):void 0}),c=(t=(t||"").match(H)||[""]).length;c--;)d=v=(s=Ce.exec(t[c])||[])[1],h=(s[2]||"").split(".").sort(),d&&(f=E.event.special[d]||{},d=(i?f.delegateType:f.bindType)||d,f=E.event.special[d]||{},l=E.extend({type:d,origType:v,data:r,handler:n,guid:n.guid,selector:i,needsContext:i&&E.expr.match.needsContext.test(i),namespace:h.join(".")},o),(p=u[d])||((p=u[d]=[]).delegateCount=0,f.setup&&!1!==f.setup.call(e,r,h,a)||e.addEventListener&&e.addEventListener(d,a)),f.add&&(f.add.call(e,l),l.handler.guid||(l.handler.guid=n.guid)),i?p.splice(p.delegateCount++,0,l):p.push(l),E.event.global[d]=!0)},remove:function(e,t,n,r,i){var o,a,s,u,c,l,f,p,d,h,v,g=J.hasData(e)&&J.get(e);if(g&&(u=g.events)){for(c=(t=(t||"").match(H)||[""]).length;c--;)if(d=v=(s=Ce.exec(t[c])||[])[1],h=(s[2]||"").split(".").sort(),d){for(f=E.event.special[d]||{},p=u[d=(r?f.delegateType:f.bindType)||d]||[],s=s[2]&&new RegExp("(^|\\.)"+h.join("\\.(?:.*\\.|)")+"(\\.|$)"),a=o=p.length;o--;)l=p[o],!i&&v!==l.origType||n&&n.guid!==l.guid||s&&!s.test(l.namespace)||r&&r!==l.selector&&("**"!==r||!l.selector)||(p.splice(o,1),l.selector&&p.delegateCount--,f.remove&&f.remove.call(e,l));a&&!p.length&&(f.teardown&&!1!==f.teardown.call(e,h,g.handle)||E.removeEvent(e,d,g.handle),delete u[d])}else for(d in u)E.event.remove(e,d+t[c],n,r,!0);E.isEmptyObject(u)&&J.remove(e,"handle events")}},dispatch:function(e){var t,n,r,i,o,a,s=E.event.fix(e),u=new Array(arguments.length),c=(J.get(this,"events")||{})[s.type]||[],l=E.event.special[s.type]||{};for(u[0]=s,t=1;t<arguments.length;t++)u[t]=arguments[t];if(s.delegateTarget=this,!l.preDispatch||!1!==l.preDispatch.call(this,s)){for(a=E.event.handlers.call(this,s,c),t=0;(i=a[t++])&&!s.isPropagationStopped();)for(s.currentTarget=i.elem,n=0;(o=i.handlers[n++])&&!s.isImmediatePropagationStopped();)s.rnamespace&&!s.rnamespace.test(o.namespace)||(s.handleObj=o,s.data=o.data,void 0!==(r=((E.event.special[o.origType]||{}).handle||o.handler).apply(i.elem,u))&&!1===(s.result=r)&&(s.preventDefault(),s.stopPropagation()));return l.postDispatch&&l.postDispatch.call(this,s),s.result}},handlers:function(e,t){var n,r,i,o,a,s=[],u=t.delegateCount,c=e.target;if(u&&c.nodeType&&!("click"===e.type&&e.button>=1))for(;c!==this;c=c.parentNode||this)if(1===c.nodeType&&("click"!==e.type||!0!==c.disabled)){for(o=[],a={},n=0;n<u;n++)void 0===a[i=(r=t[n]).selector+" "]&&(a[i]=r.needsContext?E(i,this).index(c)>-1:E.find(i,this,null,[c]).length),a[i]&&o.push(r);o.length&&s.push({elem:c,handlers:o})}return c=this,u<t.length&&s.push({elem:c,handlers:t.slice(u)}),s},addProp:function(e,t){Object.defineProperty(E.Event.prototype,e,{enumerable:!0,configurable:!0,get:y(t)?function(){if(this.originalEvent)return t(this.originalEvent)}:function(){if(this.originalEvent)return this.originalEvent[e]},set:function(t){Object.defineProperty(this,e,{enumerable:!0,configurable:!0,writable:!0,value:t})}})},fix:function(e){return e[E.expando]?e:new E.Event(e)},special:{load:{noBubble:!0},focus:{trigger:function(){if(this!==Oe()&&this.focus)return this.focus(),!1},delegateType:"focusin"},blur:{trigger:function(){if(this===Oe()&&this.blur)return this.blur(),!1},delegateType:"focusout"},click:{trigger:function(){if("checkbox"===this.type&&this.click&&I(this,"input"))return this.click(),!1},_default:function(e){return I(e.target,"a")}},beforeunload:{postDispatch:function(e){void 0!==e.result&&e.originalEvent&&(e.originalEvent.returnValue=e.result)}}}},E.removeEvent=function(e,t,n){e.removeEventListener&&e.removeEventListener(t,n)},E.Event=function(e,t){if(!(this instanceof E.Event))return new E.Event(e,t);e&&e.type?(this.originalEvent=e,this.type=e.type,this.isDefaultPrevented=e.defaultPrevented||void 0===e.defaultPrevented&&!1===e.returnValue?Ae:Se,this.target=e.target&&3===e.target.nodeType?e.target.parentNode:e.target,this.currentTarget=e.currentTarget,this.relatedTarget=e.relatedTarget):this.type=e,t&&E.extend(this,t),this.timeStamp=e&&e.timeStamp||Date.now(),this[E.expando]=!0},E.Event.prototype={constructor:E.Event,isDefaultPrevented:Se,isPropagationStopped:Se,isImmediatePropagationStopped:Se,isSimulated:!1,preventDefault:function(){var e=this.originalEvent;this.isDefaultPrevented=Ae,e&&!this.isSimulated&&e.preventDefault()},stopPropagation:function(){var e=this.originalEvent;this.isPropagationStopped=Ae,e&&!this.isSimulated&&e.stopPropagation()},stopImmediatePropagation:function(){var e=this.originalEvent;this.isImmediatePropagationStopped=Ae,e&&!this.isSimulated&&e.stopImmediatePropagation(),this.stopPropagation()}},E.each({altKey:!0,bubbles:!0,cancelable:!0,changedTouches:!0,ctrlKey:!0,detail:!0,eventPhase:!0,metaKey:!0,pageX:!0,pageY:!0,shiftKey:!0,view:!0,char:!0,charCode:!0,key:!0,keyCode:!0,button:!0,buttons:!0,clientX:!0,clientY:!0,offsetX:!0,offsetY:!0,pointerId:!0,pointerType:!0,screenX:!0,screenY:!0,targetTouches:!0,toElement:!0,touches:!0,which:function(e){var t=e.button;return null==e.which&&Ee.test(e.type)?null!=e.charCode?e.charCode:e.keyCode:!e.which&&void 0!==t&&xe.test(e.type)?1&t?1:2&t?3:4&t?2:0:e.which}},E.event.addProp),E.each({mouseenter:"mouseover",mouseleave:"mouseout",pointerenter:"pointerover",pointerleave:"pointerout"},function(e,t){E.event.special[e]={delegateType:t,bindType:t,handle:function(e){var n,r=e.relatedTarget,i=e.handleObj;return r&&(r===this||E.contains(this,r))||(e.type=i.origType,n=i.handler.apply(this,arguments),e.type=t),n}}}),E.fn.extend({on:function(e,t,n,r){return De(this,e,t,n,r)},one:function(e,t,n,r){return De(this,e,t,n,r,1)},off:function(e,t,n){var r,i;if(e&&e.preventDefault&&e.handleObj)return r=e.handleObj,E(e.delegateTarget).off(r.namespace?r.origType+"."+r.namespace:r.origType,r.selector,r.handler),this;if("object"==typeof e){for(i in e)this.off(i,t,e[i]);return this}return!1!==t&&"function"!=typeof t||(n=t,t=void 0),!1===n&&(n=Se),this.each(function(){E.event.remove(this,e,n,t)})}});var Ie=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([a-z][^\/\0>\x20\t\r\n\f]*)[^>]*)\/>/gi,ke=/<script|<style|<link/i,Ne=/checked\s*(?:[^=]|=\s*.checked.)/i,Le=/^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;function je(e,t){return I(e,"table")&&I(11!==t.nodeType?t:t.firstChild,"tr")&&E(e).children("tbody")[0]||e}function Pe(e){return e.type=(null!==e.getAttribute("type"))+"/"+e.type,e}function Re(e){return"true/"===(e.type||"").slice(0,5)?e.type=e.type.slice(5):e.removeAttribute("type"),e}function $e(e,t){var n,r,i,o,a,s,u,c;if(1===t.nodeType){if(J.hasData(e)&&(o=J.access(e),a=J.set(t,o),c=o.events))for(i in delete a.handle,a.events={},c)for(n=0,r=c[i].length;n<r;n++)E.event.add(t,i,c[i][n]);Z.hasData(e)&&(s=Z.access(e),u=E.extend({},s),Z.set(t,u))}}function He(e,t,n,r){t=c.apply([],t);var i,o,a,s,u,l,f=0,p=e.length,d=p-1,h=t[0],v=y(h);if(v||p>1&&"string"==typeof h&&!m.checkClone&&Ne.test(h))return e.each(function(i){var o=e.eq(i);v&&(t[0]=h.call(this,i,o.html())),He(o,t,n,r)});if(p&&(o=(i=we(t,e[0].ownerDocument,!1,e,r)).firstChild,1===i.childNodes.length&&(i=o),o||r)){for(s=(a=E.map(ge(i,"script"),Pe)).length;f<p;f++)u=i,f!==d&&(u=E.clone(u,!0,!0),s&&E.merge(a,ge(u,"script"))),n.call(e[f],u,f);if(s)for(l=a[a.length-1].ownerDocument,E.map(a,Re),f=0;f<s;f++)u=a[f],he.test(u.type||"")&&!J.access(u,"globalEval")&&E.contains(l,u)&&(u.src&&"module"!==(u.type||"").toLowerCase()?E._evalUrl&&E._evalUrl(u.src):w(u.textContent.replace(Le,""),l,u))}return e}function Me(e,t,n){for(var r,i=t?E.filter(t,e):e,o=0;null!=(r=i[o]);o++)n||1!==r.nodeType||E.cleanData(ge(r)),r.parentNode&&(n&&E.contains(r.ownerDocument,r)&&me(ge(r,"script")),r.parentNode.removeChild(r));return e}E.extend({htmlPrefilter:function(e){return e.replace(Ie,"<$1></$2>")},clone:function(e,t,n){var r,i,o,a,s,u,c,l=e.cloneNode(!0),f=E.contains(e.ownerDocument,e);if(!(m.noCloneChecked||1!==e.nodeType&&11!==e.nodeType||E.isXMLDoc(e)))for(a=ge(l),r=0,i=(o=ge(e)).length;r<i;r++)s=o[r],u=a[r],c=void 0,"input"===(c=u.nodeName.toLowerCase())&&pe.test(s.type)?u.checked=s.checked:"input"!==c&&"textarea"!==c||(u.defaultValue=s.defaultValue);if(t)if(n)for(o=o||ge(e),a=a||ge(l),r=0,i=o.length;r<i;r++)$e(o[r],a[r]);else $e(e,l);return(a=ge(l,"script")).length>0&&me(a,!f&&ge(e,"script")),l},cleanData:function(e){for(var t,n,r,i=E.event.special,o=0;void 0!==(n=e[o]);o++)if(Q(n)){if(t=n[J.expando]){if(t.events)for(r in t.events)i[r]?E.event.remove(n,r):E.removeEvent(n,r,t.handle);n[J.expando]=void 0}n[Z.expando]&&(n[Z.expando]=void 0)}}}),E.fn.extend({detach:function(e){return Me(this,e,!0)},remove:function(e){return Me(this,e)},text:function(e){return V(this,function(e){return void 0===e?E.text(this):this.empty().each(function(){1!==this.nodeType&&11!==this.nodeType&&9!==this.nodeType||(this.textContent=e)})},null,e,arguments.length)},append:function(){return He(this,arguments,function(e){1!==this.nodeType&&11!==this.nodeType&&9!==this.nodeType||je(this,e).appendChild(e)})},prepend:function(){return He(this,arguments,function(e){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var t=je(this,e);t.insertBefore(e,t.firstChild)}})},before:function(){return He(this,arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this)})},after:function(){return He(this,arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this.nextSibling)})},empty:function(){for(var e,t=0;null!=(e=this[t]);t++)1===e.nodeType&&(E.cleanData(ge(e,!1)),e.textContent="");return this},clone:function(e,t){return e=null!=e&&e,t=null==t?e:t,this.map(function(){return E.clone(this,e,t)})},html:function(e){return V(this,function(e){var t=this[0]||{},n=0,r=this.length;if(void 0===e&&1===t.nodeType)return t.innerHTML;if("string"==typeof e&&!ke.test(e)&&!ve[(de.exec(e)||["",""])[1].toLowerCase()]){e=E.htmlPrefilter(e);try{for(;n<r;n++)1===(t=this[n]||{}).nodeType&&(E.cleanData(ge(t,!1)),t.innerHTML=e);t=0}catch(e){}}t&&this.empty().append(e)},null,e,arguments.length)},replaceWith:function(){var e=[];return He(this,arguments,function(t){var n=this.parentNode;E.inArray(this,e)<0&&(E.cleanData(ge(this)),n&&n.replaceChild(t,this))},e)}}),E.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(e,t){E.fn[e]=function(e){for(var n,r=[],i=E(e),o=i.length-1,a=0;a<=o;a++)n=a===o?this:this.clone(!0),E(i[a])[t](n),l.apply(r,n.get());return this.pushStack(r)}});var Fe=new RegExp("^("+re+")(?!px)[a-z%]+$","i"),We=function(e){var t=e.ownerDocument.defaultView;return t&&t.opener||(t=n),t.getComputedStyle(e)},qe=new RegExp(oe.join("|"),"i");function Be(e,t,n){var r,i,o,a,s=e.style;return(n=n||We(e))&&(""!==(a=n.getPropertyValue(t)||n[t])||E.contains(e.ownerDocument,e)||(a=E.style(e,t)),!m.pixelBoxStyles()&&Fe.test(a)&&qe.test(t)&&(r=s.width,i=s.minWidth,o=s.maxWidth,s.minWidth=s.maxWidth=s.width=a,a=n.width,s.width=r,s.minWidth=i,s.maxWidth=o)),void 0!==a?a+"":a}function Ue(e,t){return{get:function(){if(!e())return(this.get=t).apply(this,arguments);delete this.get}}}!function(){function e(){if(l){c.style.cssText="position:absolute;left:-11111px;width:60px;margin-top:1px;padding:0;border:0",l.style.cssText="position:relative;display:block;box-sizing:border-box;overflow:scroll;margin:auto;border:1px;padding:1px;width:60%;top:1%",Te.appendChild(c).appendChild(l);var e=n.getComputedStyle(l);r="1%"!==e.top,u=12===t(e.marginLeft),l.style.right="60%",s=36===t(e.right),i=36===t(e.width),l.style.position="absolute",o=36===l.offsetWidth||"absolute",Te.removeChild(c),l=null}}function t(e){return Math.round(parseFloat(e))}var r,i,o,s,u,c=a.createElement("div"),l=a.createElement("div");l.style&&(l.style.backgroundClip="content-box",l.cloneNode(!0).style.backgroundClip="",m.clearCloneStyle="content-box"===l.style.backgroundClip,E.extend(m,{boxSizingReliable:function(){return e(),i},pixelBoxStyles:function(){return e(),s},pixelPosition:function(){return e(),r},reliableMarginLeft:function(){return e(),u},scrollboxSize:function(){return e(),o}}))}();var Ve=/^(none|table(?!-c[ea]).+)/,ze=/^--/,Ke={position:"absolute",visibility:"hidden",display:"block"},Ge={letterSpacing:"0",fontWeight:"400"},Xe=["Webkit","Moz","ms"],Qe=a.createElement("div").style;function Ye(e){var t=E.cssProps[e];return t||(t=E.cssProps[e]=function(e){if(e in Qe)return e;for(var t=e[0].toUpperCase()+e.slice(1),n=Xe.length;n--;)if((e=Xe[n]+t)in Qe)return e}(e)||e),t}function Je(e,t,n){var r=ie.exec(t);return r?Math.max(0,r[2]-(n||0))+(r[3]||"px"):t}function Ze(e,t,n,r,i,o){var a="width"===t?1:0,s=0,u=0;if(n===(r?"border":"content"))return 0;for(;a<4;a+=2)"margin"===n&&(u+=E.css(e,n+oe[a],!0,i)),r?("content"===n&&(u-=E.css(e,"padding"+oe[a],!0,i)),"margin"!==n&&(u-=E.css(e,"border"+oe[a]+"Width",!0,i))):(u+=E.css(e,"padding"+oe[a],!0,i),"padding"!==n?u+=E.css(e,"border"+oe[a]+"Width",!0,i):s+=E.css(e,"border"+oe[a]+"Width",!0,i));return!r&&o>=0&&(u+=Math.max(0,Math.ceil(e["offset"+t[0].toUpperCase()+t.slice(1)]-o-u-s-.5))),u}function et(e,t,n){var r=We(e),i=Be(e,t,r),o="border-box"===E.css(e,"boxSizing",!1,r),a=o;if(Fe.test(i)){if(!n)return i;i="auto"}return a=a&&(m.boxSizingReliable()||i===e.style[t]),("auto"===i||!parseFloat(i)&&"inline"===E.css(e,"display",!1,r))&&(i=e["offset"+t[0].toUpperCase()+t.slice(1)],a=!0),(i=parseFloat(i)||0)+Ze(e,t,n||(o?"border":"content"),a,r,i)+"px"}function tt(e,t,n,r,i){return new tt.prototype.init(e,t,n,r,i)}E.extend({cssHooks:{opacity:{get:function(e,t){if(t){var n=Be(e,"opacity");return""===n?"1":n}}}},cssNumber:{animationIterationCount:!0,columnCount:!0,fillOpacity:!0,flexGrow:!0,flexShrink:!0,fontWeight:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{},style:function(e,t,n,r){if(e&&3!==e.nodeType&&8!==e.nodeType&&e.style){var i,o,a,s=X(t),u=ze.test(t),c=e.style;if(u||(t=Ye(s)),a=E.cssHooks[t]||E.cssHooks[s],void 0===n)return a&&"get"in a&&void 0!==(i=a.get(e,!1,r))?i:c[t];"string"===(o=typeof n)&&(i=ie.exec(n))&&i[1]&&(n=ue(e,t,i),o="number"),null!=n&&n==n&&("number"===o&&(n+=i&&i[3]||(E.cssNumber[s]?"":"px")),m.clearCloneStyle||""!==n||0!==t.indexOf("background")||(c[t]="inherit"),a&&"set"in a&&void 0===(n=a.set(e,n,r))||(u?c.setProperty(t,n):c[t]=n))}},css:function(e,t,n,r){var i,o,a,s=X(t);return ze.test(t)||(t=Ye(s)),(a=E.cssHooks[t]||E.cssHooks[s])&&"get"in a&&(i=a.get(e,!0,n)),void 0===i&&(i=Be(e,t,r)),"normal"===i&&t in Ge&&(i=Ge[t]),""===n||n?(o=parseFloat(i),!0===n||isFinite(o)?o||0:i):i}}),E.each(["height","width"],function(e,t){E.cssHooks[t]={get:function(e,n,r){if(n)return!Ve.test(E.css(e,"display"))||e.getClientRects().length&&e.getBoundingClientRect().width?et(e,t,r):se(e,Ke,function(){return et(e,t,r)})},set:function(e,n,r){var i,o=We(e),a="border-box"===E.css(e,"boxSizing",!1,o),s=r&&Ze(e,t,r,a,o);return a&&m.scrollboxSize()===o.position&&(s-=Math.ceil(e["offset"+t[0].toUpperCase()+t.slice(1)]-parseFloat(o[t])-Ze(e,t,"border",!1,o)-.5)),s&&(i=ie.exec(n))&&"px"!==(i[3]||"px")&&(e.style[t]=n,n=E.css(e,t)),Je(0,n,s)}}}),E.cssHooks.marginLeft=Ue(m.reliableMarginLeft,function(e,t){if(t)return(parseFloat(Be(e,"marginLeft"))||e.getBoundingClientRect().left-se(e,{marginLeft:0},function(){return e.getBoundingClientRect().left}))+"px"}),E.each({margin:"",padding:"",border:"Width"},function(e,t){E.cssHooks[e+t]={expand:function(n){for(var r=0,i={},o="string"==typeof n?n.split(" "):[n];r<4;r++)i[e+oe[r]+t]=o[r]||o[r-2]||o[0];return i}},"margin"!==e&&(E.cssHooks[e+t].set=Je)}),E.fn.extend({css:function(e,t){return V(this,function(e,t,n){var r,i,o={},a=0;if(Array.isArray(t)){for(r=We(e),i=t.length;a<i;a++)o[t[a]]=E.css(e,t[a],!1,r);return o}return void 0!==n?E.style(e,t,n):E.css(e,t)},e,t,arguments.length>1)}}),E.Tween=tt,tt.prototype={constructor:tt,init:function(e,t,n,r,i,o){this.elem=e,this.prop=n,this.easing=i||E.easing._default,this.options=t,this.start=this.now=this.cur(),this.end=r,this.unit=o||(E.cssNumber[n]?"":"px")},cur:function(){var e=tt.propHooks[this.prop];return e&&e.get?e.get(this):tt.propHooks._default.get(this)},run:function(e){var t,n=tt.propHooks[this.prop];return this.options.duration?this.pos=t=E.easing[this.easing](e,this.options.duration*e,0,1,this.options.duration):this.pos=t=e,this.now=(this.end-this.start)*t+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),n&&n.set?n.set(this):tt.propHooks._default.set(this),this}},tt.prototype.init.prototype=tt.prototype,tt.propHooks={_default:{get:function(e){var t;return 1!==e.elem.nodeType||null!=e.elem[e.prop]&&null==e.elem.style[e.prop]?e.elem[e.prop]:(t=E.css(e.elem,e.prop,""))&&"auto"!==t?t:0},set:function(e){E.fx.step[e.prop]?E.fx.step[e.prop](e):1!==e.elem.nodeType||null==e.elem.style[E.cssProps[e.prop]]&&!E.cssHooks[e.prop]?e.elem[e.prop]=e.now:E.style(e.elem,e.prop,e.now+e.unit)}}},tt.propHooks.scrollTop=tt.propHooks.scrollLeft={set:function(e){e.elem.nodeType&&e.elem.parentNode&&(e.elem[e.prop]=e.now)}},E.easing={linear:function(e){return e},swing:function(e){return.5-Math.cos(e*Math.PI)/2},_default:"swing"},E.fx=tt.prototype.init,E.fx.step={};var nt,rt,it=/^(?:toggle|show|hide)$/,ot=/queueHooks$/;function at(){rt&&(!1===a.hidden&&n.requestAnimationFrame?n.requestAnimationFrame(at):n.setTimeout(at,E.fx.interval),E.fx.tick())}function st(){return n.setTimeout(function(){nt=void 0}),nt=Date.now()}function ut(e,t){var n,r=0,i={height:e};for(t=t?1:0;r<4;r+=2-t)i["margin"+(n=oe[r])]=i["padding"+n]=e;return t&&(i.opacity=i.width=e),i}function ct(e,t,n){for(var r,i=(lt.tweeners[t]||[]).concat(lt.tweeners["*"]),o=0,a=i.length;o<a;o++)if(r=i[o].call(n,t,e))return r}function lt(e,t,n){var r,i,o=0,a=lt.prefilters.length,s=E.Deferred().always(function(){delete u.elem}),u=function(){if(i)return!1;for(var t=nt||st(),n=Math.max(0,c.startTime+c.duration-t),r=1-(n/c.duration||0),o=0,a=c.tweens.length;o<a;o++)c.tweens[o].run(r);return s.notifyWith(e,[c,r,n]),r<1&&a?n:(a||s.notifyWith(e,[c,1,0]),s.resolveWith(e,[c]),!1)},c=s.promise({elem:e,props:E.extend({},t),opts:E.extend(!0,{specialEasing:{},easing:E.easing._default},n),originalProperties:t,originalOptions:n,startTime:nt||st(),duration:n.duration,tweens:[],createTween:function(t,n){var r=E.Tween(e,c.opts,t,n,c.opts.specialEasing[t]||c.opts.easing);return c.tweens.push(r),r},stop:function(t){var n=0,r=t?c.tweens.length:0;if(i)return this;for(i=!0;n<r;n++)c.tweens[n].run(1);return t?(s.notifyWith(e,[c,1,0]),s.resolveWith(e,[c,t])):s.rejectWith(e,[c,t]),this}}),l=c.props;for(!function(e,t){var n,r,i,o,a;for(n in e)if(i=t[r=X(n)],o=e[n],Array.isArray(o)&&(i=o[1],o=e[n]=o[0]),n!==r&&(e[r]=o,delete e[n]),(a=E.cssHooks[r])&&"expand"in a)for(n in o=a.expand(o),delete e[r],o)n in e||(e[n]=o[n],t[n]=i);else t[r]=i}(l,c.opts.specialEasing);o<a;o++)if(r=lt.prefilters[o].call(c,e,l,c.opts))return y(r.stop)&&(E._queueHooks(c.elem,c.opts.queue).stop=r.stop.bind(r)),r;return E.map(l,ct,c),y(c.opts.start)&&c.opts.start.call(e,c),c.progress(c.opts.progress).done(c.opts.done,c.opts.complete).fail(c.opts.fail).always(c.opts.always),E.fx.timer(E.extend(u,{elem:e,anim:c,queue:c.opts.queue})),c}E.Animation=E.extend(lt,{tweeners:{"*":[function(e,t){var n=this.createTween(e,t);return ue(n.elem,e,ie.exec(t),n),n}]},tweener:function(e,t){y(e)?(t=e,e=["*"]):e=e.match(H);for(var n,r=0,i=e.length;r<i;r++)n=e[r],lt.tweeners[n]=lt.tweeners[n]||[],lt.tweeners[n].unshift(t)},prefilters:[function(e,t,n){var r,i,o,a,s,u,c,l,f="width"in t||"height"in t,p=this,d={},h=e.style,v=e.nodeType&&ae(e),g=J.get(e,"fxshow");for(r in n.queue||(null==(a=E._queueHooks(e,"fx")).unqueued&&(a.unqueued=0,s=a.empty.fire,a.empty.fire=function(){a.unqueued||s()}),a.unqueued++,p.always(function(){p.always(function(){a.unqueued--,E.queue(e,"fx").length||a.empty.fire()})})),t)if(i=t[r],it.test(i)){if(delete t[r],o=o||"toggle"===i,i===(v?"hide":"show")){if("show"!==i||!g||void 0===g[r])continue;v=!0}d[r]=g&&g[r]||E.style(e,r)}if((u=!E.isEmptyObject(t))||!E.isEmptyObject(d))for(r in f&&1===e.nodeType&&(n.overflow=[h.overflow,h.overflowX,h.overflowY],null==(c=g&&g.display)&&(c=J.get(e,"display")),"none"===(l=E.css(e,"display"))&&(c?l=c:(fe([e],!0),c=e.style.display||c,l=E.css(e,"display"),fe([e]))),("inline"===l||"inline-block"===l&&null!=c)&&"none"===E.css(e,"float")&&(u||(p.done(function(){h.display=c}),null==c&&(l=h.display,c="none"===l?"":l)),h.display="inline-block")),n.overflow&&(h.overflow="hidden",p.always(function(){h.overflow=n.overflow[0],h.overflowX=n.overflow[1],h.overflowY=n.overflow[2]})),u=!1,d)u||(g?"hidden"in g&&(v=g.hidden):g=J.access(e,"fxshow",{display:c}),o&&(g.hidden=!v),v&&fe([e],!0),p.done(function(){for(r in v||fe([e]),J.remove(e,"fxshow"),d)E.style(e,r,d[r])})),u=ct(v?g[r]:0,r,p),r in g||(g[r]=u.start,v&&(u.end=u.start,u.start=0))}],prefilter:function(e,t){t?lt.prefilters.unshift(e):lt.prefilters.push(e)}}),E.speed=function(e,t,n){var r=e&&"object"==typeof e?E.extend({},e):{complete:n||!n&&t||y(e)&&e,duration:e,easing:n&&t||t&&!y(t)&&t};return E.fx.off?r.duration=0:"number"!=typeof r.duration&&(r.duration in E.fx.speeds?r.duration=E.fx.speeds[r.duration]:r.duration=E.fx.speeds._default),null!=r.queue&&!0!==r.queue||(r.queue="fx"),r.old=r.complete,r.complete=function(){y(r.old)&&r.old.call(this),r.queue&&E.dequeue(this,r.queue)},r},E.fn.extend({fadeTo:function(e,t,n,r){return this.filter(ae).css("opacity",0).show().end().animate({opacity:t},e,n,r)},animate:function(e,t,n,r){var i=E.isEmptyObject(e),o=E.speed(t,n,r),a=function(){var t=lt(this,E.extend({},e),o);(i||J.get(this,"finish"))&&t.stop(!0)};return a.finish=a,i||!1===o.queue?this.each(a):this.queue(o.queue,a)},stop:function(e,t,n){var r=function(e){var t=e.stop;delete e.stop,t(n)};return"string"!=typeof e&&(n=t,t=e,e=void 0),t&&!1!==e&&this.queue(e||"fx",[]),this.each(function(){var t=!0,i=null!=e&&e+"queueHooks",o=E.timers,a=J.get(this);if(i)a[i]&&a[i].stop&&r(a[i]);else for(i in a)a[i]&&a[i].stop&&ot.test(i)&&r(a[i]);for(i=o.length;i--;)o[i].elem!==this||null!=e&&o[i].queue!==e||(o[i].anim.stop(n),t=!1,o.splice(i,1));!t&&n||E.dequeue(this,e)})},finish:function(e){return!1!==e&&(e=e||"fx"),this.each(function(){var t,n=J.get(this),r=n[e+"queue"],i=n[e+"queueHooks"],o=E.timers,a=r?r.length:0;for(n.finish=!0,E.queue(this,e,[]),i&&i.stop&&i.stop.call(this,!0),t=o.length;t--;)o[t].elem===this&&o[t].queue===e&&(o[t].anim.stop(!0),o.splice(t,1));for(t=0;t<a;t++)r[t]&&r[t].finish&&r[t].finish.call(this);delete n.finish})}}),E.each(["toggle","show","hide"],function(e,t){var n=E.fn[t];E.fn[t]=function(e,r,i){return null==e||"boolean"==typeof e?n.apply(this,arguments):this.animate(ut(t,!0),e,r,i)}}),E.each({slideDown:ut("show"),slideUp:ut("hide"),slideToggle:ut("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(e,t){E.fn[e]=function(e,n,r){return this.animate(t,e,n,r)}}),E.timers=[],E.fx.tick=function(){var e,t=0,n=E.timers;for(nt=Date.now();t<n.length;t++)(e=n[t])()||n[t]!==e||n.splice(t--,1);n.length||E.fx.stop(),nt=void 0},E.fx.timer=function(e){E.timers.push(e),E.fx.start()},E.fx.interval=13,E.fx.start=function(){rt||(rt=!0,at())},E.fx.stop=function(){rt=null},E.fx.speeds={slow:600,fast:200,_default:400},E.fn.delay=function(e,t){return e=E.fx&&E.fx.speeds[e]||e,t=t||"fx",this.queue(t,function(t,r){var i=n.setTimeout(t,e);r.stop=function(){n.clearTimeout(i)}})},function(){var e=a.createElement("input"),t=a.createElement("select").appendChild(a.createElement("option"));e.type="checkbox",m.checkOn=""!==e.value,m.optSelected=t.selected,(e=a.createElement("input")).value="t",e.type="radio",m.radioValue="t"===e.value}();var ft,pt=E.expr.attrHandle;E.fn.extend({attr:function(e,t){return V(this,E.attr,e,t,arguments.length>1)},removeAttr:function(e){return this.each(function(){E.removeAttr(this,e)})}}),E.extend({attr:function(e,t,n){var r,i,o=e.nodeType;if(3!==o&&8!==o&&2!==o)return void 0===e.getAttribute?E.prop(e,t,n):(1===o&&E.isXMLDoc(e)||(i=E.attrHooks[t.toLowerCase()]||(E.expr.match.bool.test(t)?ft:void 0)),void 0!==n?null===n?void E.removeAttr(e,t):i&&"set"in i&&void 0!==(r=i.set(e,n,t))?r:(e.setAttribute(t,n+""),n):i&&"get"in i&&null!==(r=i.get(e,t))?r:null==(r=E.find.attr(e,t))?void 0:r)},attrHooks:{type:{set:function(e,t){if(!m.radioValue&&"radio"===t&&I(e,"input")){var n=e.value;return e.setAttribute("type",t),n&&(e.value=n),t}}}},removeAttr:function(e,t){var n,r=0,i=t&&t.match(H);if(i&&1===e.nodeType)for(;n=i[r++];)e.removeAttribute(n)}}),ft={set:function(e,t,n){return!1===t?E.removeAttr(e,n):e.setAttribute(n,n),n}},E.each(E.expr.match.bool.source.match(/\w+/g),function(e,t){var n=pt[t]||E.find.attr;pt[t]=function(e,t,r){var i,o,a=t.toLowerCase();return r||(o=pt[a],pt[a]=i,i=null!=n(e,t,r)?a:null,pt[a]=o),i}});var dt=/^(?:input|select|textarea|button)$/i,ht=/^(?:a|area)$/i;function vt(e){return(e.match(H)||[]).join(" ")}function gt(e){return e.getAttribute&&e.getAttribute("class")||""}function mt(e){return Array.isArray(e)?e:"string"==typeof e&&e.match(H)||[]}E.fn.extend({prop:function(e,t){return V(this,E.prop,e,t,arguments.length>1)},removeProp:function(e){return this.each(function(){delete this[E.propFix[e]||e]})}}),E.extend({prop:function(e,t,n){var r,i,o=e.nodeType;if(3!==o&&8!==o&&2!==o)return 1===o&&E.isXMLDoc(e)||(t=E.propFix[t]||t,i=E.propHooks[t]),void 0!==n?i&&"set"in i&&void 0!==(r=i.set(e,n,t))?r:e[t]=n:i&&"get"in i&&null!==(r=i.get(e,t))?r:e[t]},propHooks:{tabIndex:{get:function(e){var t=E.find.attr(e,"tabindex");return t?parseInt(t,10):dt.test(e.nodeName)||ht.test(e.nodeName)&&e.href?0:-1}}},propFix:{for:"htmlFor",class:"className"}}),m.optSelected||(E.propHooks.selected={get:function(e){var t=e.parentNode;return t&&t.parentNode&&t.parentNode.selectedIndex,null},set:function(e){var t=e.parentNode;t&&(t.selectedIndex,t.parentNode&&t.parentNode.selectedIndex)}}),E.each(["tabIndex","readOnly","maxLength","cellSpacing","cellPadding","rowSpan","colSpan","useMap","frameBorder","contentEditable"],function(){E.propFix[this.toLowerCase()]=this}),E.fn.extend({addClass:function(e){var t,n,r,i,o,a,s,u=0;if(y(e))return this.each(function(t){E(this).addClass(e.call(this,t,gt(this)))});if((t=mt(e)).length)for(;n=this[u++];)if(i=gt(n),r=1===n.nodeType&&" "+vt(i)+" "){for(a=0;o=t[a++];)r.indexOf(" "+o+" ")<0&&(r+=o+" ");i!==(s=vt(r))&&n.setAttribute("class",s)}return this},removeClass:function(e){var t,n,r,i,o,a,s,u=0;if(y(e))return this.each(function(t){E(this).removeClass(e.call(this,t,gt(this)))});if(!arguments.length)return this.attr("class","");if((t=mt(e)).length)for(;n=this[u++];)if(i=gt(n),r=1===n.nodeType&&" "+vt(i)+" "){for(a=0;o=t[a++];)for(;r.indexOf(" "+o+" ")>-1;)r=r.replace(" "+o+" "," ");i!==(s=vt(r))&&n.setAttribute("class",s)}return this},toggleClass:function(e,t){var n=typeof e,r="string"===n||Array.isArray(e);return"boolean"==typeof t&&r?t?this.addClass(e):this.removeClass(e):y(e)?this.each(function(n){E(this).toggleClass(e.call(this,n,gt(this),t),t)}):this.each(function(){var t,i,o,a;if(r)for(i=0,o=E(this),a=mt(e);t=a[i++];)o.hasClass(t)?o.removeClass(t):o.addClass(t);else void 0!==e&&"boolean"!==n||((t=gt(this))&&J.set(this,"__className__",t),this.setAttribute&&this.setAttribute("class",t||!1===e?"":J.get(this,"__className__")||""))})},hasClass:function(e){var t,n,r=0;for(t=" "+e+" ";n=this[r++];)if(1===n.nodeType&&(" "+vt(gt(n))+" ").indexOf(t)>-1)return!0;return!1}});var yt=/\r/g;E.fn.extend({val:function(e){var t,n,r,i=this[0];return arguments.length?(r=y(e),this.each(function(n){var i;1===this.nodeType&&(null==(i=r?e.call(this,n,E(this).val()):e)?i="":"number"==typeof i?i+="":Array.isArray(i)&&(i=E.map(i,function(e){return null==e?"":e+""})),(t=E.valHooks[this.type]||E.valHooks[this.nodeName.toLowerCase()])&&"set"in t&&void 0!==t.set(this,i,"value")||(this.value=i))})):i?(t=E.valHooks[i.type]||E.valHooks[i.nodeName.toLowerCase()])&&"get"in t&&void 0!==(n=t.get(i,"value"))?n:"string"==typeof(n=i.value)?n.replace(yt,""):null==n?"":n:void 0}}),E.extend({valHooks:{option:{get:function(e){var t=E.find.attr(e,"value");return null!=t?t:vt(E.text(e))}},select:{get:function(e){var t,n,r,i=e.options,o=e.selectedIndex,a="select-one"===e.type,s=a?null:[],u=a?o+1:i.length;for(r=o<0?u:a?o:0;r<u;r++)if(((n=i[r]).selected||r===o)&&!n.disabled&&(!n.parentNode.disabled||!I(n.parentNode,"optgroup"))){if(t=E(n).val(),a)return t;s.push(t)}return s},set:function(e,t){for(var n,r,i=e.options,o=E.makeArray(t),a=i.length;a--;)((r=i[a]).selected=E.inArray(E.valHooks.option.get(r),o)>-1)&&(n=!0);return n||(e.selectedIndex=-1),o}}}}),E.each(["radio","checkbox"],function(){E.valHooks[this]={set:function(e,t){if(Array.isArray(t))return e.checked=E.inArray(E(e).val(),t)>-1}},m.checkOn||(E.valHooks[this].get=function(e){return null===e.getAttribute("value")?"on":e.value})}),m.focusin="onfocusin"in n;var _t=/^(?:focusinfocus|focusoutblur)$/,bt=function(e){e.stopPropagation()};E.extend(E.event,{trigger:function(e,t,r,i){var o,s,u,c,l,f,p,d,v=[r||a],g=h.call(e,"type")?e.type:e,m=h.call(e,"namespace")?e.namespace.split("."):[];if(s=d=u=r=r||a,3!==r.nodeType&&8!==r.nodeType&&!_t.test(g+E.event.triggered)&&(g.indexOf(".")>-1&&(m=g.split("."),g=m.shift(),m.sort()),l=g.indexOf(":")<0&&"on"+g,(e=e[E.expando]?e:new E.Event(g,"object"==typeof e&&e)).isTrigger=i?2:3,e.namespace=m.join("."),e.rnamespace=e.namespace?new RegExp("(^|\\.)"+m.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,e.result=void 0,e.target||(e.target=r),t=null==t?[e]:E.makeArray(t,[e]),p=E.event.special[g]||{},i||!p.trigger||!1!==p.trigger.apply(r,t))){if(!i&&!p.noBubble&&!_(r)){for(c=p.delegateType||g,_t.test(c+g)||(s=s.parentNode);s;s=s.parentNode)v.push(s),u=s;u===(r.ownerDocument||a)&&v.push(u.defaultView||u.parentWindow||n)}for(o=0;(s=v[o++])&&!e.isPropagationStopped();)d=s,e.type=o>1?c:p.bindType||g,(f=(J.get(s,"events")||{})[e.type]&&J.get(s,"handle"))&&f.apply(s,t),(f=l&&s[l])&&f.apply&&Q(s)&&(e.result=f.apply(s,t),!1===e.result&&e.preventDefault());return e.type=g,i||e.isDefaultPrevented()||p._default&&!1!==p._default.apply(v.pop(),t)||!Q(r)||l&&y(r[g])&&!_(r)&&((u=r[l])&&(r[l]=null),E.event.triggered=g,e.isPropagationStopped()&&d.addEventListener(g,bt),r[g](),e.isPropagationStopped()&&d.removeEventListener(g,bt),E.event.triggered=void 0,u&&(r[l]=u)),e.result}},simulate:function(e,t,n){var r=E.extend(new E.Event,n,{type:e,isSimulated:!0});E.event.trigger(r,null,t)}}),E.fn.extend({trigger:function(e,t){return this.each(function(){E.event.trigger(e,t,this)})},triggerHandler:function(e,t){var n=this[0];if(n)return E.event.trigger(e,t,n,!0)}}),m.focusin||E.each({focus:"focusin",blur:"focusout"},function(e,t){var n=function(e){E.event.simulate(t,e.target,E.event.fix(e))};E.event.special[t]={setup:function(){var r=this.ownerDocument||this,i=J.access(r,t);i||r.addEventListener(e,n,!0),J.access(r,t,(i||0)+1)},teardown:function(){var r=this.ownerDocument||this,i=J.access(r,t)-1;i?J.access(r,t,i):(r.removeEventListener(e,n,!0),J.remove(r,t))}}});var wt=n.location,Tt=Date.now(),Et=/\?/;E.parseXML=function(e){var t;if(!e||"string"!=typeof e)return null;try{t=(new n.DOMParser).parseFromString(e,"text/xml")}catch(e){t=void 0}return t&&!t.getElementsByTagName("parsererror").length||E.error("Invalid XML: "+e),t};var xt=/\[\]$/,Ct=/\r?\n/g,At=/^(?:submit|button|image|reset|file)$/i,St=/^(?:input|select|textarea|keygen)/i;function Ot(e,t,n,r){var i;if(Array.isArray(t))E.each(t,function(t,i){n||xt.test(e)?r(e,i):Ot(e+"["+("object"==typeof i&&null!=i?t:"")+"]",i,n,r)});else if(n||"object"!==T(t))r(e,t);else for(i in t)Ot(e+"["+i+"]",t[i],n,r)}E.param=function(e,t){var n,r=[],i=function(e,t){var n=y(t)?t():t;r[r.length]=encodeURIComponent(e)+"="+encodeURIComponent(null==n?"":n)};if(Array.isArray(e)||e.jquery&&!E.isPlainObject(e))E.each(e,function(){i(this.name,this.value)});else for(n in e)Ot(n,e[n],t,i);return r.join("&")},E.fn.extend({serialize:function(){return E.param(this.serializeArray())},serializeArray:function(){return this.map(function(){var e=E.prop(this,"elements");return e?E.makeArray(e):this}).filter(function(){var e=this.type;return this.name&&!E(this).is(":disabled")&&St.test(this.nodeName)&&!At.test(e)&&(this.checked||!pe.test(e))}).map(function(e,t){var n=E(this).val();return null==n?null:Array.isArray(n)?E.map(n,function(e){return{name:t.name,value:e.replace(Ct,"\r\n")}}):{name:t.name,value:n.replace(Ct,"\r\n")}}).get()}});var Dt=/%20/g,It=/#.*$/,kt=/([?&])_=[^&]*/,Nt=/^(.*?):[ \t]*([^\r\n]*)$/gm,Lt=/^(?:GET|HEAD)$/,jt=/^\/\//,Pt={},Rt={},$t="*/".concat("*"),Ht=a.createElement("a");function Mt(e){return function(t,n){"string"!=typeof t&&(n=t,t="*");var r,i=0,o=t.toLowerCase().match(H)||[];if(y(n))for(;r=o[i++];)"+"===r[0]?(r=r.slice(1)||"*",(e[r]=e[r]||[]).unshift(n)):(e[r]=e[r]||[]).push(n)}}function Ft(e,t,n,r){var i={},o=e===Rt;function a(s){var u;return i[s]=!0,E.each(e[s]||[],function(e,s){var c=s(t,n,r);return"string"!=typeof c||o||i[c]?o?!(u=c):void 0:(t.dataTypes.unshift(c),a(c),!1)}),u}return a(t.dataTypes[0])||!i["*"]&&a("*")}function Wt(e,t){var n,r,i=E.ajaxSettings.flatOptions||{};for(n in t)void 0!==t[n]&&((i[n]?e:r||(r={}))[n]=t[n]);return r&&E.extend(!0,e,r),e}Ht.href=wt.href,E.extend({active:0,lastModified:{},etag:{},ajaxSettings:{url:wt.href,type:"GET",isLocal:/^(?:about|app|app-storage|.+-extension|file|res|widget):$/.test(wt.protocol),global:!0,processData:!0,async:!0,contentType:"application/x-www-form-urlencoded; charset=UTF-8",accepts:{"*":$t,text:"text/plain",html:"text/html",xml:"application/xml, text/xml",json:"application/json, text/javascript"},contents:{xml:/\bxml\b/,html:/\bhtml/,json:/\bjson\b/},responseFields:{xml:"responseXML",text:"responseText",json:"responseJSON"},converters:{"* text":String,"text html":!0,"text json":JSON.parse,"text xml":E.parseXML},flatOptions:{url:!0,context:!0}},ajaxSetup:function(e,t){return t?Wt(Wt(e,E.ajaxSettings),t):Wt(E.ajaxSettings,e)},ajaxPrefilter:Mt(Pt),ajaxTransport:Mt(Rt),ajax:function(e,t){"object"==typeof e&&(t=e,e=void 0),t=t||{};var r,i,o,s,u,c,l,f,p,d,h=E.ajaxSetup({},t),v=h.context||h,g=h.context&&(v.nodeType||v.jquery)?E(v):E.event,m=E.Deferred(),y=E.Callbacks("once memory"),_=h.statusCode||{},b={},w={},T="canceled",x={readyState:0,getResponseHeader:function(e){var t;if(l){if(!s)for(s={};t=Nt.exec(o);)s[t[1].toLowerCase()]=t[2];t=s[e.toLowerCase()]}return null==t?null:t},getAllResponseHeaders:function(){return l?o:null},setRequestHeader:function(e,t){return null==l&&(e=w[e.toLowerCase()]=w[e.toLowerCase()]||e,b[e]=t),this},overrideMimeType:function(e){return null==l&&(h.mimeType=e),this},statusCode:function(e){var t;if(e)if(l)x.always(e[x.status]);else for(t in e)_[t]=[_[t],e[t]];return this},abort:function(e){var t=e||T;return r&&r.abort(t),C(0,t),this}};if(m.promise(x),h.url=((e||h.url||wt.href)+"").replace(jt,wt.protocol+"//"),h.type=t.method||t.type||h.method||h.type,h.dataTypes=(h.dataType||"*").toLowerCase().match(H)||[""],null==h.crossDomain){c=a.createElement("a");try{c.href=h.url,c.href=c.href,h.crossDomain=Ht.protocol+"//"+Ht.host!=c.protocol+"//"+c.host}catch(e){h.crossDomain=!0}}if(h.data&&h.processData&&"string"!=typeof h.data&&(h.data=E.param(h.data,h.traditional)),Ft(Pt,h,t,x),l)return x;for(p in(f=E.event&&h.global)&&0==E.active++&&E.event.trigger("ajaxStart"),h.type=h.type.toUpperCase(),h.hasContent=!Lt.test(h.type),i=h.url.replace(It,""),h.hasContent?h.data&&h.processData&&0===(h.contentType||"").indexOf("application/x-www-form-urlencoded")&&(h.data=h.data.replace(Dt,"+")):(d=h.url.slice(i.length),h.data&&(h.processData||"string"==typeof h.data)&&(i+=(Et.test(i)?"&":"?")+h.data,delete h.data),!1===h.cache&&(i=i.replace(kt,"$1"),d=(Et.test(i)?"&":"?")+"_="+Tt+++d),h.url=i+d),h.ifModified&&(E.lastModified[i]&&x.setRequestHeader("If-Modified-Since",E.lastModified[i]),E.etag[i]&&x.setRequestHeader("If-None-Match",E.etag[i])),(h.data&&h.hasContent&&!1!==h.contentType||t.contentType)&&x.setRequestHeader("Content-Type",h.contentType),x.setRequestHeader("Accept",h.dataTypes[0]&&h.accepts[h.dataTypes[0]]?h.accepts[h.dataTypes[0]]+("*"!==h.dataTypes[0]?", "+$t+"; q=0.01":""):h.accepts["*"]),h.headers)x.setRequestHeader(p,h.headers[p]);if(h.beforeSend&&(!1===h.beforeSend.call(v,x,h)||l))return x.abort();if(T="abort",y.add(h.complete),x.done(h.success),x.fail(h.error),r=Ft(Rt,h,t,x)){if(x.readyState=1,f&&g.trigger("ajaxSend",[x,h]),l)return x;h.async&&h.timeout>0&&(u=n.setTimeout(function(){x.abort("timeout")},h.timeout));try{l=!1,r.send(b,C)}catch(e){if(l)throw e;C(-1,e)}}else C(-1,"No Transport");function C(e,t,a,s){var c,p,d,b,w,T=t;l||(l=!0,u&&n.clearTimeout(u),r=void 0,o=s||"",x.readyState=e>0?4:0,c=e>=200&&e<300||304===e,a&&(b=function(e,t,n){for(var r,i,o,a,s=e.contents,u=e.dataTypes;"*"===u[0];)u.shift(),void 0===r&&(r=e.mimeType||t.getResponseHeader("Content-Type"));if(r)for(i in s)if(s[i]&&s[i].test(r)){u.unshift(i);break}if(u[0]in n)o=u[0];else{for(i in n){if(!u[0]||e.converters[i+" "+u[0]]){o=i;break}a||(a=i)}o=o||a}if(o)return o!==u[0]&&u.unshift(o),n[o]}(h,x,a)),b=function(e,t,n,r){var i,o,a,s,u,c={},l=e.dataTypes.slice();if(l[1])for(a in e.converters)c[a.toLowerCase()]=e.converters[a];for(o=l.shift();o;)if(e.responseFields[o]&&(n[e.responseFields[o]]=t),!u&&r&&e.dataFilter&&(t=e.dataFilter(t,e.dataType)),u=o,o=l.shift())if("*"===o)o=u;else if("*"!==u&&u!==o){if(!(a=c[u+" "+o]||c["* "+o]))for(i in c)if((s=i.split(" "))[1]===o&&(a=c[u+" "+s[0]]||c["* "+s[0]])){!0===a?a=c[i]:!0!==c[i]&&(o=s[0],l.unshift(s[1]));break}if(!0!==a)if(a&&e.throws)t=a(t);else try{t=a(t)}catch(e){return{state:"parsererror",error:a?e:"No conversion from "+u+" to "+o}}}return{state:"success",data:t}}(h,b,x,c),c?(h.ifModified&&((w=x.getResponseHeader("Last-Modified"))&&(E.lastModified[i]=w),(w=x.getResponseHeader("etag"))&&(E.etag[i]=w)),204===e||"HEAD"===h.type?T="nocontent":304===e?T="notmodified":(T=b.state,p=b.data,c=!(d=b.error))):(d=T,!e&&T||(T="error",e<0&&(e=0))),x.status=e,x.statusText=(t||T)+"",c?m.resolveWith(v,[p,T,x]):m.rejectWith(v,[x,T,d]),x.statusCode(_),_=void 0,f&&g.trigger(c?"ajaxSuccess":"ajaxError",[x,h,c?p:d]),y.fireWith(v,[x,T]),f&&(g.trigger("ajaxComplete",[x,h]),--E.active||E.event.trigger("ajaxStop")))}return x},getJSON:function(e,t,n){return E.get(e,t,n,"json")},getScript:function(e,t){return E.get(e,void 0,t,"script")}}),E.each(["get","post"],function(e,t){E[t]=function(e,n,r,i){return y(n)&&(i=i||r,r=n,n=void 0),E.ajax(E.extend({url:e,type:t,dataType:i,data:n,success:r},E.isPlainObject(e)&&e))}}),E._evalUrl=function(e){return E.ajax({url:e,type:"GET",dataType:"script",cache:!0,async:!1,global:!1,throws:!0})},E.fn.extend({wrapAll:function(e){var t;return this[0]&&(y(e)&&(e=e.call(this[0])),t=E(e,this[0].ownerDocument).eq(0).clone(!0),this[0].parentNode&&t.insertBefore(this[0]),t.map(function(){for(var e=this;e.firstElementChild;)e=e.firstElementChild;return e}).append(this)),this},wrapInner:function(e){return y(e)?this.each(function(t){E(this).wrapInner(e.call(this,t))}):this.each(function(){var t=E(this),n=t.contents();n.length?n.wrapAll(e):t.append(e)})},wrap:function(e){var t=y(e);return this.each(function(n){E(this).wrapAll(t?e.call(this,n):e)})},unwrap:function(e){return this.parent(e).not("body").each(function(){E(this).replaceWith(this.childNodes)}),this}}),E.expr.pseudos.hidden=function(e){return!E.expr.pseudos.visible(e)},E.expr.pseudos.visible=function(e){return!!(e.offsetWidth||e.offsetHeight||e.getClientRects().length)},E.ajaxSettings.xhr=function(){try{return new n.XMLHttpRequest}catch(e){}};var qt={0:200,1223:204},Bt=E.ajaxSettings.xhr();m.cors=!!Bt&&"withCredentials"in Bt,m.ajax=Bt=!!Bt,E.ajaxTransport(function(e){var t,r;if(m.cors||Bt&&!e.crossDomain)return{send:function(i,o){var a,s=e.xhr();if(s.open(e.type,e.url,e.async,e.username,e.password),e.xhrFields)for(a in e.xhrFields)s[a]=e.xhrFields[a];for(a in e.mimeType&&s.overrideMimeType&&s.overrideMimeType(e.mimeType),e.crossDomain||i["X-Requested-With"]||(i["X-Requested-With"]="XMLHttpRequest"),i)s.setRequestHeader(a,i[a]);t=function(e){return function(){t&&(t=r=s.onload=s.onerror=s.onabort=s.ontimeout=s.onreadystatechange=null,"abort"===e?s.abort():"error"===e?"number"!=typeof s.status?o(0,"error"):o(s.status,s.statusText):o(qt[s.status]||s.status,s.statusText,"text"!==(s.responseType||"text")||"string"!=typeof s.responseText?{binary:s.response}:{text:s.responseText},s.getAllResponseHeaders()))}},s.onload=t(),r=s.onerror=s.ontimeout=t("error"),void 0!==s.onabort?s.onabort=r:s.onreadystatechange=function(){4===s.readyState&&n.setTimeout(function(){t&&r()})},t=t("abort");try{s.send(e.hasContent&&e.data||null)}catch(e){if(t)throw e}},abort:function(){t&&t()}}}),E.ajaxPrefilter(function(e){e.crossDomain&&(e.contents.script=!1)}),E.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/\b(?:java|ecma)script\b/},converters:{"text script":function(e){return E.globalEval(e),e}}}),E.ajaxPrefilter("script",function(e){void 0===e.cache&&(e.cache=!1),e.crossDomain&&(e.type="GET")}),E.ajaxTransport("script",function(e){var t,n;if(e.crossDomain)return{send:function(r,i){t=E("<script>").prop({charset:e.scriptCharset,src:e.url}).on("load error",n=function(e){t.remove(),n=null,e&&i("error"===e.type?404:200,e.type)}),a.head.appendChild(t[0])},abort:function(){n&&n()}}});var Ut,Vt=[],zt=/(=)\?(?=&|$)|\?\?/;E.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var e=Vt.pop()||E.expando+"_"+Tt++;return this[e]=!0,e}}),E.ajaxPrefilter("json jsonp",function(e,t,r){var i,o,a,s=!1!==e.jsonp&&(zt.test(e.url)?"url":"string"==typeof e.data&&0===(e.contentType||"").indexOf("application/x-www-form-urlencoded")&&zt.test(e.data)&&"data");if(s||"jsonp"===e.dataTypes[0])return i=e.jsonpCallback=y(e.jsonpCallback)?e.jsonpCallback():e.jsonpCallback,s?e[s]=e[s].replace(zt,"$1"+i):!1!==e.jsonp&&(e.url+=(Et.test(e.url)?"&":"?")+e.jsonp+"="+i),e.converters["script json"]=function(){return a||E.error(i+" was not called"),a[0]},e.dataTypes[0]="json",o=n[i],n[i]=function(){a=arguments},r.always(function(){void 0===o?E(n).removeProp(i):n[i]=o,e[i]&&(e.jsonpCallback=t.jsonpCallback,Vt.push(i)),a&&y(o)&&o(a[0]),a=o=void 0}),"script"}),m.createHTMLDocument=((Ut=a.implementation.createHTMLDocument("").body).innerHTML="<form></form><form></form>",2===Ut.childNodes.length),E.parseHTML=function(e,t,n){return"string"!=typeof e?[]:("boolean"==typeof t&&(n=t,t=!1),t||(m.createHTMLDocument?((r=(t=a.implementation.createHTMLDocument("")).createElement("base")).href=a.location.href,t.head.appendChild(r)):t=a),o=!n&&[],(i=k.exec(e))?[t.createElement(i[1])]:(i=we([e],t,o),o&&o.length&&E(o).remove(),E.merge([],i.childNodes)));var r,i,o},E.fn.load=function(e,t,n){var r,i,o,a=this,s=e.indexOf(" ");return s>-1&&(r=vt(e.slice(s)),e=e.slice(0,s)),y(t)?(n=t,t=void 0):t&&"object"==typeof t&&(i="POST"),a.length>0&&E.ajax({url:e,type:i||"GET",dataType:"html",data:t}).done(function(e){o=arguments,a.html(r?E("<div>").append(E.parseHTML(e)).find(r):e)}).always(n&&function(e,t){a.each(function(){n.apply(this,o||[e.responseText,t,e])})}),this},E.each(["ajaxStart","ajaxStop","ajaxComplete","ajaxError","ajaxSuccess","ajaxSend"],function(e,t){E.fn[t]=function(e){return this.on(t,e)}}),E.expr.pseudos.animated=function(e){return E.grep(E.timers,function(t){return e===t.elem}).length},E.offset={setOffset:function(e,t,n){var r,i,o,a,s,u,c=E.css(e,"position"),l=E(e),f={};"static"===c&&(e.style.position="relative"),s=l.offset(),o=E.css(e,"top"),u=E.css(e,"left"),("absolute"===c||"fixed"===c)&&(o+u).indexOf("auto")>-1?(a=(r=l.position()).top,i=r.left):(a=parseFloat(o)||0,i=parseFloat(u)||0),y(t)&&(t=t.call(e,n,E.extend({},s))),null!=t.top&&(f.top=t.top-s.top+a),null!=t.left&&(f.left=t.left-s.left+i),"using"in t?t.using.call(e,f):l.css(f)}},E.fn.extend({offset:function(e){if(arguments.length)return void 0===e?this:this.each(function(t){E.offset.setOffset(this,e,t)});var t,n,r=this[0];return r?r.getClientRects().length?(t=r.getBoundingClientRect(),n=r.ownerDocument.defaultView,{top:t.top+n.pageYOffset,left:t.left+n.pageXOffset}):{top:0,left:0}:void 0},position:function(){if(this[0]){var e,t,n,r=this[0],i={top:0,left:0};if("fixed"===E.css(r,"position"))t=r.getBoundingClientRect();else{for(t=this.offset(),n=r.ownerDocument,e=r.offsetParent||n.documentElement;e&&(e===n.body||e===n.documentElement)&&"static"===E.css(e,"position");)e=e.parentNode;e&&e!==r&&1===e.nodeType&&((i=E(e).offset()).top+=E.css(e,"borderTopWidth",!0),i.left+=E.css(e,"borderLeftWidth",!0))}return{top:t.top-i.top-E.css(r,"marginTop",!0),left:t.left-i.left-E.css(r,"marginLeft",!0)}}},offsetParent:function(){return this.map(function(){for(var e=this.offsetParent;e&&"static"===E.css(e,"position");)e=e.offsetParent;return e||Te})}}),E.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(e,t){var n="pageYOffset"===t;E.fn[e]=function(r){return V(this,function(e,r,i){var o;if(_(e)?o=e:9===e.nodeType&&(o=e.defaultView),void 0===i)return o?o[t]:e[r];o?o.scrollTo(n?o.pageXOffset:i,n?i:o.pageYOffset):e[r]=i},e,r,arguments.length)}}),E.each(["top","left"],function(e,t){E.cssHooks[t]=Ue(m.pixelPosition,function(e,n){if(n)return n=Be(e,t),Fe.test(n)?E(e).position()[t]+"px":n})}),E.each({Height:"height",Width:"width"},function(e,t){E.each({padding:"inner"+e,content:t,"":"outer"+e},function(n,r){E.fn[r]=function(i,o){var a=arguments.length&&(n||"boolean"!=typeof i),s=n||(!0===i||!0===o?"margin":"border");return V(this,function(t,n,i){var o;return _(t)?0===r.indexOf("outer")?t["inner"+e]:t.document.documentElement["client"+e]:9===t.nodeType?(o=t.documentElement,Math.max(t.body["scroll"+e],o["scroll"+e],t.body["offset"+e],o["offset"+e],o["client"+e])):void 0===i?E.css(t,n,s):E.style(t,n,i,s)},t,a?i:void 0,a)}})}),E.each("blur focus focusin focusout resize scroll click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup contextmenu".split(" "),function(e,t){E.fn[t]=function(e,n){return arguments.length>0?this.on(t,null,e,n):this.trigger(t)}}),E.fn.extend({hover:function(e,t){return this.mouseenter(e).mouseleave(t||e)}}),E.fn.extend({bind:function(e,t,n){return this.on(e,null,t,n)},unbind:function(e,t){return this.off(e,null,t)},delegate:function(e,t,n,r){return this.on(t,e,n,r)},undelegate:function(e,t,n){return 1===arguments.length?this.off(e,"**"):this.off(t,e||"**",n)}}),E.proxy=function(e,t){var n,r,i;if("string"==typeof t&&(n=e[t],t=e,e=n),y(e))return r=u.call(arguments,2),(i=function(){return e.apply(t||this,r.concat(u.call(arguments)))}).guid=e.guid=e.guid||E.guid++,i},E.holdReady=function(e){e?E.readyWait++:E.ready(!0)},E.isArray=Array.isArray,E.parseJSON=JSON.parse,E.nodeName=I,E.isFunction=y,E.isWindow=_,E.camelCase=X,E.type=T,E.now=Date.now,E.isNumeric=function(e){var t=E.type(e);return("number"===t||"string"===t)&&!isNaN(e-parseFloat(e))},void 0===(r=function(){return E}.apply(t,[]))||(e.exports=r);var Kt=n.jQuery,Gt=n.$;return E.noConflict=function(e){return n.$===E&&(n.$=Gt),e&&n.jQuery===E&&(n.jQuery=Kt),E},i||(n.jQuery=n.$=E),E})},function(e,t,n){"use strict";e.exports=function(e,t){return function(){for(var n=new Array(arguments.length),r=0;r<n.length;r++)n[r]=arguments[r];return e.apply(t,n)}}},function(e,t){var n,r,i=e.exports={};function o(){throw new Error("setTimeout has not been defined")}function a(){throw new Error("clearTimeout has not been defined")}function s(e){if(n===setTimeout)return setTimeout(e,0);if((n===o||!n)&&setTimeout)return n=setTimeout,setTimeout(e,0);try{return n(e,0)}catch(t){try{return n.call(null,e,0)}catch(t){return n.call(this,e,0)}}}!function(){try{n="function"==typeof setTimeout?setTimeout:o}catch(e){n=o}try{r="function"==typeof clearTimeout?clearTimeout:a}catch(e){r=a}}();var u,c=[],l=!1,f=-1;function p(){l&&u&&(l=!1,u.length?c=u.concat(c):f=-1,c.length&&d())}function d(){if(!l){var e=s(p);l=!0;for(var t=c.length;t;){for(u=c,c=[];++f<t;)u&&u[f].run();f=-1,t=c.length}u=null,l=!1,function(e){if(r===clearTimeout)return clearTimeout(e);if((r===a||!r)&&clearTimeout)return r=clearTimeout,clearTimeout(e);try{r(e)}catch(t){try{return r.call(null,e)}catch(t){return r.call(this,e)}}}(e)}}function h(e,t){this.fun=e,this.array=t}function v(){}i.nextTick=function(e){var t=new Array(arguments.length-1);if(arguments.length>1)for(var n=1;n<arguments.length;n++)t[n-1]=arguments[n];c.push(new h(e,t)),1!==c.length||l||s(d)},h.prototype.run=function(){this.fun.apply(null,this.array)},i.title="browser",i.browser=!0,i.env={},i.argv=[],i.version="",i.versions={},i.on=v,i.addListener=v,i.once=v,i.off=v,i.removeListener=v,i.removeAllListeners=v,i.emit=v,i.prependListener=v,i.prependOnceListener=v,i.listeners=function(e){return[]},i.binding=function(e){throw new Error("process.binding is not supported")},i.cwd=function(){return"/"},i.chdir=function(e){throw new Error("process.chdir is not supported")},i.umask=function(){return 0}},function(e,t,n){"use strict";var r=n(0),i=n(22),o=n(24),a=n(25),s=n(26),u=n(8),c="undefined"!=typeof window&&window.btoa&&window.btoa.bind(window)||n(27);e.exports=function(e){return new Promise(function(t,l){var f=e.data,p=e.headers;r.isFormData(f)&&delete p["Content-Type"];var d=new XMLHttpRequest,h="onreadystatechange",v=!1;if("undefined"==typeof window||!window.XDomainRequest||"withCredentials"in d||s(e.url)||(d=new window.XDomainRequest,h="onload",v=!0,d.onprogress=function(){},d.ontimeout=function(){}),e.auth){var g=e.auth.username||"",m=e.auth.password||"";p.Authorization="Basic "+c(g+":"+m)}if(d.open(e.method.toUpperCase(),o(e.url,e.params,e.paramsSerializer),!0),d.timeout=e.timeout,d[h]=function(){if(d&&(4===d.readyState||v)&&(0!==d.status||d.responseURL&&0===d.responseURL.indexOf("file:"))){var n="getAllResponseHeaders"in d?a(d.getAllResponseHeaders()):null,r={data:e.responseType&&"text"!==e.responseType?d.response:d.responseText,status:1223===d.status?204:d.status,statusText:1223===d.status?"No Content":d.statusText,headers:n,config:e,request:d};i(t,l,r),d=null}},d.onerror=function(){l(u("Network Error",e,null,d)),d=null},d.ontimeout=function(){l(u("timeout of "+e.timeout+"ms exceeded",e,"ECONNABORTED",d)),d=null},r.isStandardBrowserEnv()){var y=n(28),_=(e.withCredentials||s(e.url))&&e.xsrfCookieName?y.read(e.xsrfCookieName):void 0;_&&(p[e.xsrfHeaderName]=_)}if("setRequestHeader"in d&&r.forEach(p,function(e,t){void 0===f&&"content-type"===t.toLowerCase()?delete p[t]:d.setRequestHeader(t,e)}),e.withCredentials&&(d.withCredentials=!0),e.responseType)try{d.responseType=e.responseType}catch(t){if("json"!==e.responseType)throw t}"function"==typeof e.onDownloadProgress&&d.addEventListener("progress",e.onDownloadProgress),"function"==typeof e.onUploadProgress&&d.upload&&d.upload.addEventListener("progress",e.onUploadProgress),e.cancelToken&&e.cancelToken.promise.then(function(e){d&&(d.abort(),l(e),d=null)}),void 0===f&&(f=null),d.send(f)})}},function(e,t,n){"use strict";var r=n(23);e.exports=function(e,t,n,i,o){var a=new Error(e);return r(a,t,n,i,o)}},function(e,t,n){"use strict";e.exports=function(e){return!(!e||!e.__CANCEL__)}},function(e,t,n){"use strict";function r(e){this.message=e}r.prototype.toString=function(){return"Cancel"+(this.message?": "+this.message:"")},r.prototype.__CANCEL__=!0,e.exports=r},function(e,t,n){n(12),e.exports=n(40)},function(e,t,n){n(13),window.Vue=n(36),Vue.component("example-component",n(39).default);new Vue({el:"#app"})},function(e,t,n){window._=n(14);try{window.Popper=n(3).default,window.$=window.jQuery=n(4),n(16)}catch(e){}window.axios=n(17),window.axios.defaults.headers.common["X-Requested-With"]="XMLHttpRequest";var r=document.head.querySelector('meta[name="csrf-token"]');r?window.axios.defaults.headers.common["X-CSRF-TOKEN"]=r.content:console.error("CSRF token not found: https://laravel.com/docs/csrf#csrf-x-csrf-token")},function(e,t,n){(function(e,r){var i;(function(){var o,a=200,s="Unsupported core-js use. Try https://npms.io/search?q=ponyfill.",u="Expected a function",c="__lodash_hash_undefined__",l=500,f="__lodash_placeholder__",p=1,d=2,h=4,v=1,g=2,m=1,y=2,_=4,b=8,w=16,T=32,E=64,x=128,C=256,A=512,S=30,O="...",D=800,I=16,k=1,N=2,L=1/0,j=9007199254740991,P=1.7976931348623157e308,R=NaN,$=4294967295,H=$-1,M=$>>>1,F=[["ary",x],["bind",m],["bindKey",y],["curry",b],["curryRight",w],["flip",A],["partial",T],["partialRight",E],["rearg",C]],W="[object Arguments]",q="[object Array]",B="[object AsyncFunction]",U="[object Boolean]",V="[object Date]",z="[object DOMException]",K="[object Error]",G="[object Function]",X="[object GeneratorFunction]",Q="[object Map]",Y="[object Number]",J="[object Null]",Z="[object Object]",ee="[object Proxy]",te="[object RegExp]",ne="[object Set]",re="[object String]",ie="[object Symbol]",oe="[object Undefined]",ae="[object WeakMap]",se="[object WeakSet]",ue="[object ArrayBuffer]",ce="[object DataView]",le="[object Float32Array]",fe="[object Float64Array]",pe="[object Int8Array]",de="[object Int16Array]",he="[object Int32Array]",ve="[object Uint8Array]",ge="[object Uint8ClampedArray]",me="[object Uint16Array]",ye="[object Uint32Array]",_e=/\b__p \+= '';/g,be=/\b(__p \+=) '' \+/g,we=/(__e\(.*?\)|\b__t\)) \+\n'';/g,Te=/&(?:amp|lt|gt|quot|#39);/g,Ee=/[&<>"']/g,xe=RegExp(Te.source),Ce=RegExp(Ee.source),Ae=/<%-([\s\S]+?)%>/g,Se=/<%([\s\S]+?)%>/g,Oe=/<%=([\s\S]+?)%>/g,De=/\.|\[(?:[^[\]]*|(["'])(?:(?!\1)[^\\]|\\.)*?\1)\]/,Ie=/^\w*$/,ke=/[^.[\]]+|\[(?:(-?\d+(?:\.\d+)?)|(["'])((?:(?!\2)[^\\]|\\.)*?)\2)\]|(?=(?:\.|\[\])(?:\.|\[\]|$))/g,Ne=/[\\^$.*+?()[\]{}|]/g,Le=RegExp(Ne.source),je=/^\s+|\s+$/g,Pe=/^\s+/,Re=/\s+$/,$e=/\{(?:\n\/\* \[wrapped with .+\] \*\/)?\n?/,He=/\{\n\/\* \[wrapped with (.+)\] \*/,Me=/,? & /,Fe=/[^\x00-\x2f\x3a-\x40\x5b-\x60\x7b-\x7f]+/g,We=/\\(\\)?/g,qe=/\$\{([^\\}]*(?:\\.[^\\}]*)*)\}/g,Be=/\w*$/,Ue=/^[-+]0x[0-9a-f]+$/i,Ve=/^0b[01]+$/i,ze=/^\[object .+?Constructor\]$/,Ke=/^0o[0-7]+$/i,Ge=/^(?:0|[1-9]\d*)$/,Xe=/[\xc0-\xd6\xd8-\xf6\xf8-\xff\u0100-\u017f]/g,Qe=/($^)/,Ye=/['\n\r\u2028\u2029\\]/g,Je="\\u0300-\\u036f\\ufe20-\\ufe2f\\u20d0-\\u20ff",Ze="\\xac\\xb1\\xd7\\xf7\\x00-\\x2f\\x3a-\\x40\\x5b-\\x60\\x7b-\\xbf\\u2000-\\u206f \\t\\x0b\\f\\xa0\\ufeff\\n\\r\\u2028\\u2029\\u1680\\u180e\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200a\\u202f\\u205f\\u3000",et="[\\ud800-\\udfff]",tt="["+Ze+"]",nt="["+Je+"]",rt="\\d+",it="[\\u2700-\\u27bf]",ot="[a-z\\xdf-\\xf6\\xf8-\\xff]",at="[^\\ud800-\\udfff"+Ze+rt+"\\u2700-\\u27bfa-z\\xdf-\\xf6\\xf8-\\xffA-Z\\xc0-\\xd6\\xd8-\\xde]",st="\\ud83c[\\udffb-\\udfff]",ut="[^\\ud800-\\udfff]",ct="(?:\\ud83c[\\udde6-\\uddff]){2}",lt="[\\ud800-\\udbff][\\udc00-\\udfff]",ft="[A-Z\\xc0-\\xd6\\xd8-\\xde]",pt="(?:"+ot+"|"+at+")",dt="(?:"+ft+"|"+at+")",ht="(?:"+nt+"|"+st+")"+"?",vt="[\\ufe0e\\ufe0f]?"+ht+("(?:\\u200d(?:"+[ut,ct,lt].join("|")+")[\\ufe0e\\ufe0f]?"+ht+")*"),gt="(?:"+[it,ct,lt].join("|")+")"+vt,mt="(?:"+[ut+nt+"?",nt,ct,lt,et].join("|")+")",yt=RegExp("['’]","g"),_t=RegExp(nt,"g"),bt=RegExp(st+"(?="+st+")|"+mt+vt,"g"),wt=RegExp([ft+"?"+ot+"+(?:['’](?:d|ll|m|re|s|t|ve))?(?="+[tt,ft,"$"].join("|")+")",dt+"+(?:['’](?:D|LL|M|RE|S|T|VE))?(?="+[tt,ft+pt,"$"].join("|")+")",ft+"?"+pt+"+(?:['’](?:d|ll|m|re|s|t|ve))?",ft+"+(?:['’](?:D|LL|M|RE|S|T|VE))?","\\d*(?:1ST|2ND|3RD|(?![123])\\dTH)(?=\\b|[a-z_])","\\d*(?:1st|2nd|3rd|(?![123])\\dth)(?=\\b|[A-Z_])",rt,gt].join("|"),"g"),Tt=RegExp("[\\u200d\\ud800-\\udfff"+Je+"\\ufe0e\\ufe0f]"),Et=/[a-z][A-Z]|[A-Z]{2}[a-z]|[0-9][a-zA-Z]|[a-zA-Z][0-9]|[^a-zA-Z0-9 ]/,xt=["Array","Buffer","DataView","Date","Error","Float32Array","Float64Array","Function","Int8Array","Int16Array","Int32Array","Map","Math","Object","Promise","RegExp","Set","String","Symbol","TypeError","Uint8Array","Uint8ClampedArray","Uint16Array","Uint32Array","WeakMap","_","clearTimeout","isFinite","parseInt","setTimeout"],Ct=-1,At={};At[le]=At[fe]=At[pe]=At[de]=At[he]=At[ve]=At[ge]=At[me]=At[ye]=!0,At[W]=At[q]=At[ue]=At[U]=At[ce]=At[V]=At[K]=At[G]=At[Q]=At[Y]=At[Z]=At[te]=At[ne]=At[re]=At[ae]=!1;var St={};St[W]=St[q]=St[ue]=St[ce]=St[U]=St[V]=St[le]=St[fe]=St[pe]=St[de]=St[he]=St[Q]=St[Y]=St[Z]=St[te]=St[ne]=St[re]=St[ie]=St[ve]=St[ge]=St[me]=St[ye]=!0,St[K]=St[G]=St[ae]=!1;var Ot={"\\":"\\","'":"'","\n":"n","\r":"r","\u2028":"u2028","\u2029":"u2029"},Dt=parseFloat,It=parseInt,kt="object"==typeof e&&e&&e.Object===Object&&e,Nt="object"==typeof self&&self&&self.Object===Object&&self,Lt=kt||Nt||Function("return this")(),jt=t&&!t.nodeType&&t,Pt=jt&&"object"==typeof r&&r&&!r.nodeType&&r,Rt=Pt&&Pt.exports===jt,$t=Rt&&kt.process,Ht=function(){try{var e=Pt&&Pt.require&&Pt.require("util").types;return e||$t&&$t.binding&&$t.binding("util")}catch(e){}}(),Mt=Ht&&Ht.isArrayBuffer,Ft=Ht&&Ht.isDate,Wt=Ht&&Ht.isMap,qt=Ht&&Ht.isRegExp,Bt=Ht&&Ht.isSet,Ut=Ht&&Ht.isTypedArray;function Vt(e,t,n){switch(n.length){case 0:return e.call(t);case 1:return e.call(t,n[0]);case 2:return e.call(t,n[0],n[1]);case 3:return e.call(t,n[0],n[1],n[2])}return e.apply(t,n)}function zt(e,t,n,r){for(var i=-1,o=null==e?0:e.length;++i<o;){var a=e[i];t(r,a,n(a),e)}return r}function Kt(e,t){for(var n=-1,r=null==e?0:e.length;++n<r&&!1!==t(e[n],n,e););return e}function Gt(e,t){for(var n=null==e?0:e.length;n--&&!1!==t(e[n],n,e););return e}function Xt(e,t){for(var n=-1,r=null==e?0:e.length;++n<r;)if(!t(e[n],n,e))return!1;return!0}function Qt(e,t){for(var n=-1,r=null==e?0:e.length,i=0,o=[];++n<r;){var a=e[n];t(a,n,e)&&(o[i++]=a)}return o}function Yt(e,t){return!!(null==e?0:e.length)&&un(e,t,0)>-1}function Jt(e,t,n){for(var r=-1,i=null==e?0:e.length;++r<i;)if(n(t,e[r]))return!0;return!1}function Zt(e,t){for(var n=-1,r=null==e?0:e.length,i=Array(r);++n<r;)i[n]=t(e[n],n,e);return i}function en(e,t){for(var n=-1,r=t.length,i=e.length;++n<r;)e[i+n]=t[n];return e}function tn(e,t,n,r){var i=-1,o=null==e?0:e.length;for(r&&o&&(n=e[++i]);++i<o;)n=t(n,e[i],i,e);return n}function nn(e,t,n,r){var i=null==e?0:e.length;for(r&&i&&(n=e[--i]);i--;)n=t(n,e[i],i,e);return n}function rn(e,t){for(var n=-1,r=null==e?0:e.length;++n<r;)if(t(e[n],n,e))return!0;return!1}var on=pn("length");function an(e,t,n){var r;return n(e,function(e,n,i){if(t(e,n,i))return r=n,!1}),r}function sn(e,t,n,r){for(var i=e.length,o=n+(r?1:-1);r?o--:++o<i;)if(t(e[o],o,e))return o;return-1}function un(e,t,n){return t==t?function(e,t,n){var r=n-1,i=e.length;for(;++r<i;)if(e[r]===t)return r;return-1}(e,t,n):sn(e,ln,n)}function cn(e,t,n,r){for(var i=n-1,o=e.length;++i<o;)if(r(e[i],t))return i;return-1}function ln(e){return e!=e}function fn(e,t){var n=null==e?0:e.length;return n?vn(e,t)/n:R}function pn(e){return function(t){return null==t?o:t[e]}}function dn(e){return function(t){return null==e?o:e[t]}}function hn(e,t,n,r,i){return i(e,function(e,i,o){n=r?(r=!1,e):t(n,e,i,o)}),n}function vn(e,t){for(var n,r=-1,i=e.length;++r<i;){var a=t(e[r]);a!==o&&(n=n===o?a:n+a)}return n}function gn(e,t){for(var n=-1,r=Array(e);++n<e;)r[n]=t(n);return r}function mn(e){return function(t){return e(t)}}function yn(e,t){return Zt(t,function(t){return e[t]})}function _n(e,t){return e.has(t)}function bn(e,t){for(var n=-1,r=e.length;++n<r&&un(t,e[n],0)>-1;);return n}function wn(e,t){for(var n=e.length;n--&&un(t,e[n],0)>-1;);return n}var Tn=dn({"À":"A","Á":"A","Â":"A","Ã":"A","Ä":"A","Å":"A","à":"a","á":"a","â":"a","ã":"a","ä":"a","å":"a","Ç":"C","ç":"c","Ð":"D","ð":"d","È":"E","É":"E","Ê":"E","Ë":"E","è":"e","é":"e","ê":"e","ë":"e","Ì":"I","Í":"I","Î":"I","Ï":"I","ì":"i","í":"i","î":"i","ï":"i","Ñ":"N","ñ":"n","Ò":"O","Ó":"O","Ô":"O","Õ":"O","Ö":"O","Ø":"O","ò":"o","ó":"o","ô":"o","õ":"o","ö":"o","ø":"o","Ù":"U","Ú":"U","Û":"U","Ü":"U","ù":"u","ú":"u","û":"u","ü":"u","Ý":"Y","ý":"y","ÿ":"y","Æ":"Ae","æ":"ae","Þ":"Th","þ":"th","ß":"ss","Ā":"A","Ă":"A","Ą":"A","ā":"a","ă":"a","ą":"a","Ć":"C","Ĉ":"C","Ċ":"C","Č":"C","ć":"c","ĉ":"c","ċ":"c","č":"c","Ď":"D","Đ":"D","ď":"d","đ":"d","Ē":"E","Ĕ":"E","Ė":"E","Ę":"E","Ě":"E","ē":"e","ĕ":"e","ė":"e","ę":"e","ě":"e","Ĝ":"G","Ğ":"G","Ġ":"G","Ģ":"G","ĝ":"g","ğ":"g","ġ":"g","ģ":"g","Ĥ":"H","Ħ":"H","ĥ":"h","ħ":"h","Ĩ":"I","Ī":"I","Ĭ":"I","Į":"I","İ":"I","ĩ":"i","ī":"i","ĭ":"i","į":"i","ı":"i","Ĵ":"J","ĵ":"j","Ķ":"K","ķ":"k","ĸ":"k","Ĺ":"L","Ļ":"L","Ľ":"L","Ŀ":"L","Ł":"L","ĺ":"l","ļ":"l","ľ":"l","ŀ":"l","ł":"l","Ń":"N","Ņ":"N","Ň":"N","Ŋ":"N","ń":"n","ņ":"n","ň":"n","ŋ":"n","Ō":"O","Ŏ":"O","Ő":"O","ō":"o","ŏ":"o","ő":"o","Ŕ":"R","Ŗ":"R","Ř":"R","ŕ":"r","ŗ":"r","ř":"r","Ś":"S","Ŝ":"S","Ş":"S","Š":"S","ś":"s","ŝ":"s","ş":"s","š":"s","Ţ":"T","Ť":"T","Ŧ":"T","ţ":"t","ť":"t","ŧ":"t","Ũ":"U","Ū":"U","Ŭ":"U","Ů":"U","Ű":"U","Ų":"U","ũ":"u","ū":"u","ŭ":"u","ů":"u","ű":"u","ų":"u","Ŵ":"W","ŵ":"w","Ŷ":"Y","ŷ":"y","Ÿ":"Y","Ź":"Z","Ż":"Z","Ž":"Z","ź":"z","ż":"z","ž":"z","Ĳ":"IJ","ĳ":"ij","Œ":"Oe","œ":"oe","ŉ":"'n","ſ":"s"}),En=dn({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"});function xn(e){return"\\"+Ot[e]}function Cn(e){return Tt.test(e)}function An(e){var t=-1,n=Array(e.size);return e.forEach(function(e,r){n[++t]=[r,e]}),n}function Sn(e,t){return function(n){return e(t(n))}}function On(e,t){for(var n=-1,r=e.length,i=0,o=[];++n<r;){var a=e[n];a!==t&&a!==f||(e[n]=f,o[i++]=n)}return o}function Dn(e){var t=-1,n=Array(e.size);return e.forEach(function(e){n[++t]=e}),n}function In(e){var t=-1,n=Array(e.size);return e.forEach(function(e){n[++t]=[e,e]}),n}function kn(e){return Cn(e)?function(e){var t=bt.lastIndex=0;for(;bt.test(e);)++t;return t}(e):on(e)}function Nn(e){return Cn(e)?function(e){return e.match(bt)||[]}(e):function(e){return e.split("")}(e)}var Ln=dn({"&amp;":"&","&lt;":"<","&gt;":">","&quot;":'"',"&#39;":"'"});var jn=function e(t){var n,r=(t=null==t?Lt:jn.defaults(Lt.Object(),t,jn.pick(Lt,xt))).Array,i=t.Date,Je=t.Error,Ze=t.Function,et=t.Math,tt=t.Object,nt=t.RegExp,rt=t.String,it=t.TypeError,ot=r.prototype,at=Ze.prototype,st=tt.prototype,ut=t["__core-js_shared__"],ct=at.toString,lt=st.hasOwnProperty,ft=0,pt=(n=/[^.]+$/.exec(ut&&ut.keys&&ut.keys.IE_PROTO||""))?"Symbol(src)_1."+n:"",dt=st.toString,ht=ct.call(tt),vt=Lt._,gt=nt("^"+ct.call(lt).replace(Ne,"\\$&").replace(/hasOwnProperty|(function).*?(?=\\\()| for .+?(?=\\\])/g,"$1.*?")+"$"),mt=Rt?t.Buffer:o,bt=t.Symbol,Tt=t.Uint8Array,Ot=mt?mt.allocUnsafe:o,kt=Sn(tt.getPrototypeOf,tt),Nt=tt.create,jt=st.propertyIsEnumerable,Pt=ot.splice,$t=bt?bt.isConcatSpreadable:o,Ht=bt?bt.iterator:o,on=bt?bt.toStringTag:o,dn=function(){try{var e=Mo(tt,"defineProperty");return e({},"",{}),e}catch(e){}}(),Pn=t.clearTimeout!==Lt.clearTimeout&&t.clearTimeout,Rn=i&&i.now!==Lt.Date.now&&i.now,$n=t.setTimeout!==Lt.setTimeout&&t.setTimeout,Hn=et.ceil,Mn=et.floor,Fn=tt.getOwnPropertySymbols,Wn=mt?mt.isBuffer:o,qn=t.isFinite,Bn=ot.join,Un=Sn(tt.keys,tt),Vn=et.max,zn=et.min,Kn=i.now,Gn=t.parseInt,Xn=et.random,Qn=ot.reverse,Yn=Mo(t,"DataView"),Jn=Mo(t,"Map"),Zn=Mo(t,"Promise"),er=Mo(t,"Set"),tr=Mo(t,"WeakMap"),nr=Mo(tt,"create"),rr=tr&&new tr,ir={},or=fa(Yn),ar=fa(Jn),sr=fa(Zn),ur=fa(er),cr=fa(tr),lr=bt?bt.prototype:o,fr=lr?lr.valueOf:o,pr=lr?lr.toString:o;function dr(e){if(Os(e)&&!ms(e)&&!(e instanceof mr)){if(e instanceof gr)return e;if(lt.call(e,"__wrapped__"))return pa(e)}return new gr(e)}var hr=function(){function e(){}return function(t){if(!Ss(t))return{};if(Nt)return Nt(t);e.prototype=t;var n=new e;return e.prototype=o,n}}();function vr(){}function gr(e,t){this.__wrapped__=e,this.__actions__=[],this.__chain__=!!t,this.__index__=0,this.__values__=o}function mr(e){this.__wrapped__=e,this.__actions__=[],this.__dir__=1,this.__filtered__=!1,this.__iteratees__=[],this.__takeCount__=$,this.__views__=[]}function yr(e){var t=-1,n=null==e?0:e.length;for(this.clear();++t<n;){var r=e[t];this.set(r[0],r[1])}}function _r(e){var t=-1,n=null==e?0:e.length;for(this.clear();++t<n;){var r=e[t];this.set(r[0],r[1])}}function br(e){var t=-1,n=null==e?0:e.length;for(this.clear();++t<n;){var r=e[t];this.set(r[0],r[1])}}function wr(e){var t=-1,n=null==e?0:e.length;for(this.__data__=new br;++t<n;)this.add(e[t])}function Tr(e){var t=this.__data__=new _r(e);this.size=t.size}function Er(e,t){var n=ms(e),r=!n&&gs(e),i=!n&&!r&&ws(e),o=!n&&!r&&!i&&Rs(e),a=n||r||i||o,s=a?gn(e.length,rt):[],u=s.length;for(var c in e)!t&&!lt.call(e,c)||a&&("length"==c||i&&("offset"==c||"parent"==c)||o&&("buffer"==c||"byteLength"==c||"byteOffset"==c)||zo(c,u))||s.push(c);return s}function xr(e){var t=e.length;return t?e[wi(0,t-1)]:o}function Cr(e,t){return ua(no(e),jr(t,0,e.length))}function Ar(e){return ua(no(e))}function Sr(e,t,n){(n===o||ds(e[t],n))&&(n!==o||t in e)||Nr(e,t,n)}function Or(e,t,n){var r=e[t];lt.call(e,t)&&ds(r,n)&&(n!==o||t in e)||Nr(e,t,n)}function Dr(e,t){for(var n=e.length;n--;)if(ds(e[n][0],t))return n;return-1}function Ir(e,t,n,r){return Mr(e,function(e,i,o){t(r,e,n(e),o)}),r}function kr(e,t){return e&&ro(t,iu(t),e)}function Nr(e,t,n){"__proto__"==t&&dn?dn(e,t,{configurable:!0,enumerable:!0,value:n,writable:!0}):e[t]=n}function Lr(e,t){for(var n=-1,i=t.length,a=r(i),s=null==e;++n<i;)a[n]=s?o:Zs(e,t[n]);return a}function jr(e,t,n){return e==e&&(n!==o&&(e=e<=n?e:n),t!==o&&(e=e>=t?e:t)),e}function Pr(e,t,n,r,i,a){var s,u=t&p,c=t&d,l=t&h;if(n&&(s=i?n(e,r,i,a):n(e)),s!==o)return s;if(!Ss(e))return e;var f=ms(e);if(f){if(s=function(e){var t=e.length,n=new e.constructor(t);return t&&"string"==typeof e[0]&&lt.call(e,"index")&&(n.index=e.index,n.input=e.input),n}(e),!u)return no(e,s)}else{var v=qo(e),g=v==G||v==X;if(ws(e))return Qi(e,u);if(v==Z||v==W||g&&!i){if(s=c||g?{}:Uo(e),!u)return c?function(e,t){return ro(e,Wo(e),t)}(e,function(e,t){return e&&ro(t,ou(t),e)}(s,e)):function(e,t){return ro(e,Fo(e),t)}(e,kr(s,e))}else{if(!St[v])return i?e:{};s=function(e,t,n){var r,i,o,a=e.constructor;switch(t){case ue:return Yi(e);case U:case V:return new a(+e);case ce:return function(e,t){var n=t?Yi(e.buffer):e.buffer;return new e.constructor(n,e.byteOffset,e.byteLength)}(e,n);case le:case fe:case pe:case de:case he:case ve:case ge:case me:case ye:return Ji(e,n);case Q:return new a;case Y:case re:return new a(e);case te:return(o=new(i=e).constructor(i.source,Be.exec(i))).lastIndex=i.lastIndex,o;case ne:return new a;case ie:return r=e,fr?tt(fr.call(r)):{}}}(e,v,u)}}a||(a=new Tr);var m=a.get(e);if(m)return m;if(a.set(e,s),Ls(e))return e.forEach(function(r){s.add(Pr(r,t,n,r,e,a))}),s;if(Ds(e))return e.forEach(function(r,i){s.set(i,Pr(r,t,n,i,e,a))}),s;var y=f?o:(l?c?No:ko:c?ou:iu)(e);return Kt(y||e,function(r,i){y&&(r=e[i=r]),Or(s,i,Pr(r,t,n,i,e,a))}),s}function Rr(e,t,n){var r=n.length;if(null==e)return!r;for(e=tt(e);r--;){var i=n[r],a=t[i],s=e[i];if(s===o&&!(i in e)||!a(s))return!1}return!0}function $r(e,t,n){if("function"!=typeof e)throw new it(u);return ia(function(){e.apply(o,n)},t)}function Hr(e,t,n,r){var i=-1,o=Yt,s=!0,u=e.length,c=[],l=t.length;if(!u)return c;n&&(t=Zt(t,mn(n))),r?(o=Jt,s=!1):t.length>=a&&(o=_n,s=!1,t=new wr(t));e:for(;++i<u;){var f=e[i],p=null==n?f:n(f);if(f=r||0!==f?f:0,s&&p==p){for(var d=l;d--;)if(t[d]===p)continue e;c.push(f)}else o(t,p,r)||c.push(f)}return c}dr.templateSettings={escape:Ae,evaluate:Se,interpolate:Oe,variable:"",imports:{_:dr}},dr.prototype=vr.prototype,dr.prototype.constructor=dr,gr.prototype=hr(vr.prototype),gr.prototype.constructor=gr,mr.prototype=hr(vr.prototype),mr.prototype.constructor=mr,yr.prototype.clear=function(){this.__data__=nr?nr(null):{},this.size=0},yr.prototype.delete=function(e){var t=this.has(e)&&delete this.__data__[e];return this.size-=t?1:0,t},yr.prototype.get=function(e){var t=this.__data__;if(nr){var n=t[e];return n===c?o:n}return lt.call(t,e)?t[e]:o},yr.prototype.has=function(e){var t=this.__data__;return nr?t[e]!==o:lt.call(t,e)},yr.prototype.set=function(e,t){var n=this.__data__;return this.size+=this.has(e)?0:1,n[e]=nr&&t===o?c:t,this},_r.prototype.clear=function(){this.__data__=[],this.size=0},_r.prototype.delete=function(e){var t=this.__data__,n=Dr(t,e);return!(n<0||(n==t.length-1?t.pop():Pt.call(t,n,1),--this.size,0))},_r.prototype.get=function(e){var t=this.__data__,n=Dr(t,e);return n<0?o:t[n][1]},_r.prototype.has=function(e){return Dr(this.__data__,e)>-1},_r.prototype.set=function(e,t){var n=this.__data__,r=Dr(n,e);return r<0?(++this.size,n.push([e,t])):n[r][1]=t,this},br.prototype.clear=function(){this.size=0,this.__data__={hash:new yr,map:new(Jn||_r),string:new yr}},br.prototype.delete=function(e){var t=$o(this,e).delete(e);return this.size-=t?1:0,t},br.prototype.get=function(e){return $o(this,e).get(e)},br.prototype.has=function(e){return $o(this,e).has(e)},br.prototype.set=function(e,t){var n=$o(this,e),r=n.size;return n.set(e,t),this.size+=n.size==r?0:1,this},wr.prototype.add=wr.prototype.push=function(e){return this.__data__.set(e,c),this},wr.prototype.has=function(e){return this.__data__.has(e)},Tr.prototype.clear=function(){this.__data__=new _r,this.size=0},Tr.prototype.delete=function(e){var t=this.__data__,n=t.delete(e);return this.size=t.size,n},Tr.prototype.get=function(e){return this.__data__.get(e)},Tr.prototype.has=function(e){return this.__data__.has(e)},Tr.prototype.set=function(e,t){var n=this.__data__;if(n instanceof _r){var r=n.__data__;if(!Jn||r.length<a-1)return r.push([e,t]),this.size=++n.size,this;n=this.__data__=new br(r)}return n.set(e,t),this.size=n.size,this};var Mr=ao(Kr),Fr=ao(Gr,!0);function Wr(e,t){var n=!0;return Mr(e,function(e,r,i){return n=!!t(e,r,i)}),n}function qr(e,t,n){for(var r=-1,i=e.length;++r<i;){var a=e[r],s=t(a);if(null!=s&&(u===o?s==s&&!Ps(s):n(s,u)))var u=s,c=a}return c}function Br(e,t){var n=[];return Mr(e,function(e,r,i){t(e,r,i)&&n.push(e)}),n}function Ur(e,t,n,r,i){var o=-1,a=e.length;for(n||(n=Vo),i||(i=[]);++o<a;){var s=e[o];t>0&&n(s)?t>1?Ur(s,t-1,n,r,i):en(i,s):r||(i[i.length]=s)}return i}var Vr=so(),zr=so(!0);function Kr(e,t){return e&&Vr(e,t,iu)}function Gr(e,t){return e&&zr(e,t,iu)}function Xr(e,t){return Qt(t,function(t){return xs(e[t])})}function Qr(e,t){for(var n=0,r=(t=zi(t,e)).length;null!=e&&n<r;)e=e[la(t[n++])];return n&&n==r?e:o}function Yr(e,t,n){var r=t(e);return ms(e)?r:en(r,n(e))}function Jr(e){return null==e?e===o?oe:J:on&&on in tt(e)?function(e){var t=lt.call(e,on),n=e[on];try{e[on]=o;var r=!0}catch(e){}var i=dt.call(e);return r&&(t?e[on]=n:delete e[on]),i}(e):function(e){return dt.call(e)}(e)}function Zr(e,t){return e>t}function ei(e,t){return null!=e&&lt.call(e,t)}function ti(e,t){return null!=e&&t in tt(e)}function ni(e,t,n){for(var i=n?Jt:Yt,a=e[0].length,s=e.length,u=s,c=r(s),l=1/0,f=[];u--;){var p=e[u];u&&t&&(p=Zt(p,mn(t))),l=zn(p.length,l),c[u]=!n&&(t||a>=120&&p.length>=120)?new wr(u&&p):o}p=e[0];var d=-1,h=c[0];e:for(;++d<a&&f.length<l;){var v=p[d],g=t?t(v):v;if(v=n||0!==v?v:0,!(h?_n(h,g):i(f,g,n))){for(u=s;--u;){var m=c[u];if(!(m?_n(m,g):i(e[u],g,n)))continue e}h&&h.push(g),f.push(v)}}return f}function ri(e,t,n){var r=null==(e=ta(e,t=zi(t,e)))?e:e[la(Ea(t))];return null==r?o:Vt(r,e,n)}function ii(e){return Os(e)&&Jr(e)==W}function oi(e,t,n,r,i){return e===t||(null==e||null==t||!Os(e)&&!Os(t)?e!=e&&t!=t:function(e,t,n,r,i,a){var s=ms(e),u=ms(t),c=s?q:qo(e),l=u?q:qo(t),f=(c=c==W?Z:c)==Z,p=(l=l==W?Z:l)==Z,d=c==l;if(d&&ws(e)){if(!ws(t))return!1;s=!0,f=!1}if(d&&!f)return a||(a=new Tr),s||Rs(e)?Do(e,t,n,r,i,a):function(e,t,n,r,i,o,a){switch(n){case ce:if(e.byteLength!=t.byteLength||e.byteOffset!=t.byteOffset)return!1;e=e.buffer,t=t.buffer;case ue:return!(e.byteLength!=t.byteLength||!o(new Tt(e),new Tt(t)));case U:case V:case Y:return ds(+e,+t);case K:return e.name==t.name&&e.message==t.message;case te:case re:return e==t+"";case Q:var s=An;case ne:var u=r&v;if(s||(s=Dn),e.size!=t.size&&!u)return!1;var c=a.get(e);if(c)return c==t;r|=g,a.set(e,t);var l=Do(s(e),s(t),r,i,o,a);return a.delete(e),l;case ie:if(fr)return fr.call(e)==fr.call(t)}return!1}(e,t,c,n,r,i,a);if(!(n&v)){var h=f&&lt.call(e,"__wrapped__"),m=p&&lt.call(t,"__wrapped__");if(h||m){var y=h?e.value():e,_=m?t.value():t;return a||(a=new Tr),i(y,_,n,r,a)}}return!!d&&(a||(a=new Tr),function(e,t,n,r,i,a){var s=n&v,u=ko(e),c=u.length,l=ko(t).length;if(c!=l&&!s)return!1;for(var f=c;f--;){var p=u[f];if(!(s?p in t:lt.call(t,p)))return!1}var d=a.get(e);if(d&&a.get(t))return d==t;var h=!0;a.set(e,t),a.set(t,e);for(var g=s;++f<c;){p=u[f];var m=e[p],y=t[p];if(r)var _=s?r(y,m,p,t,e,a):r(m,y,p,e,t,a);if(!(_===o?m===y||i(m,y,n,r,a):_)){h=!1;break}g||(g="constructor"==p)}if(h&&!g){var b=e.constructor,w=t.constructor;b!=w&&"constructor"in e&&"constructor"in t&&!("function"==typeof b&&b instanceof b&&"function"==typeof w&&w instanceof w)&&(h=!1)}return a.delete(e),a.delete(t),h}(e,t,n,r,i,a))}(e,t,n,r,oi,i))}function ai(e,t,n,r){var i=n.length,a=i,s=!r;if(null==e)return!a;for(e=tt(e);i--;){var u=n[i];if(s&&u[2]?u[1]!==e[u[0]]:!(u[0]in e))return!1}for(;++i<a;){var c=(u=n[i])[0],l=e[c],f=u[1];if(s&&u[2]){if(l===o&&!(c in e))return!1}else{var p=new Tr;if(r)var d=r(l,f,c,e,t,p);if(!(d===o?oi(f,l,v|g,r,p):d))return!1}}return!0}function si(e){return!(!Ss(e)||(t=e,pt&&pt in t))&&(xs(e)?gt:ze).test(fa(e));var t}function ui(e){return"function"==typeof e?e:null==e?Iu:"object"==typeof e?ms(e)?hi(e[0],e[1]):di(e):Mu(e)}function ci(e){if(!Yo(e))return Un(e);var t=[];for(var n in tt(e))lt.call(e,n)&&"constructor"!=n&&t.push(n);return t}function li(e){if(!Ss(e))return function(e){var t=[];if(null!=e)for(var n in tt(e))t.push(n);return t}(e);var t=Yo(e),n=[];for(var r in e)("constructor"!=r||!t&&lt.call(e,r))&&n.push(r);return n}function fi(e,t){return e<t}function pi(e,t){var n=-1,i=_s(e)?r(e.length):[];return Mr(e,function(e,r,o){i[++n]=t(e,r,o)}),i}function di(e){var t=Ho(e);return 1==t.length&&t[0][2]?Zo(t[0][0],t[0][1]):function(n){return n===e||ai(n,e,t)}}function hi(e,t){return Go(e)&&Jo(t)?Zo(la(e),t):function(n){var r=Zs(n,e);return r===o&&r===t?eu(n,e):oi(t,r,v|g)}}function vi(e,t,n,r,i){e!==t&&Vr(t,function(a,s){if(Ss(a))i||(i=new Tr),function(e,t,n,r,i,a,s){var u=na(e,n),c=na(t,n),l=s.get(c);if(l)Sr(e,n,l);else{var f=a?a(u,c,n+"",e,t,s):o,p=f===o;if(p){var d=ms(c),h=!d&&ws(c),v=!d&&!h&&Rs(c);f=c,d||h||v?ms(u)?f=u:bs(u)?f=no(u):h?(p=!1,f=Qi(c,!0)):v?(p=!1,f=Ji(c,!0)):f=[]:ks(c)||gs(c)?(f=u,gs(u)?f=Us(u):Ss(u)&&!xs(u)||(f=Uo(c))):p=!1}p&&(s.set(c,f),i(f,c,r,a,s),s.delete(c)),Sr(e,n,f)}}(e,t,s,n,vi,r,i);else{var u=r?r(na(e,s),a,s+"",e,t,i):o;u===o&&(u=a),Sr(e,s,u)}},ou)}function gi(e,t){var n=e.length;if(n)return zo(t+=t<0?n:0,n)?e[t]:o}function mi(e,t,n){var r=-1;return t=Zt(t.length?t:[Iu],mn(Ro())),function(e,t){var n=e.length;for(e.sort(t);n--;)e[n]=e[n].value;return e}(pi(e,function(e,n,i){return{criteria:Zt(t,function(t){return t(e)}),index:++r,value:e}}),function(e,t){return function(e,t,n){for(var r=-1,i=e.criteria,o=t.criteria,a=i.length,s=n.length;++r<a;){var u=Zi(i[r],o[r]);if(u){if(r>=s)return u;var c=n[r];return u*("desc"==c?-1:1)}}return e.index-t.index}(e,t,n)})}function yi(e,t,n){for(var r=-1,i=t.length,o={};++r<i;){var a=t[r],s=Qr(e,a);n(s,a)&&Ai(o,zi(a,e),s)}return o}function _i(e,t,n,r){var i=r?cn:un,o=-1,a=t.length,s=e;for(e===t&&(t=no(t)),n&&(s=Zt(e,mn(n)));++o<a;)for(var u=0,c=t[o],l=n?n(c):c;(u=i(s,l,u,r))>-1;)s!==e&&Pt.call(s,u,1),Pt.call(e,u,1);return e}function bi(e,t){for(var n=e?t.length:0,r=n-1;n--;){var i=t[n];if(n==r||i!==o){var o=i;zo(i)?Pt.call(e,i,1):Hi(e,i)}}return e}function wi(e,t){return e+Mn(Xn()*(t-e+1))}function Ti(e,t){var n="";if(!e||t<1||t>j)return n;do{t%2&&(n+=e),(t=Mn(t/2))&&(e+=e)}while(t);return n}function Ei(e,t){return oa(ea(e,t,Iu),e+"")}function xi(e){return xr(du(e))}function Ci(e,t){var n=du(e);return ua(n,jr(t,0,n.length))}function Ai(e,t,n,r){if(!Ss(e))return e;for(var i=-1,a=(t=zi(t,e)).length,s=a-1,u=e;null!=u&&++i<a;){var c=la(t[i]),l=n;if(i!=s){var f=u[c];(l=r?r(f,c,u):o)===o&&(l=Ss(f)?f:zo(t[i+1])?[]:{})}Or(u,c,l),u=u[c]}return e}var Si=rr?function(e,t){return rr.set(e,t),e}:Iu,Oi=dn?function(e,t){return dn(e,"toString",{configurable:!0,enumerable:!1,value:Su(t),writable:!0})}:Iu;function Di(e){return ua(du(e))}function Ii(e,t,n){var i=-1,o=e.length;t<0&&(t=-t>o?0:o+t),(n=n>o?o:n)<0&&(n+=o),o=t>n?0:n-t>>>0,t>>>=0;for(var a=r(o);++i<o;)a[i]=e[i+t];return a}function ki(e,t){var n;return Mr(e,function(e,r,i){return!(n=t(e,r,i))}),!!n}function Ni(e,t,n){var r=0,i=null==e?r:e.length;if("number"==typeof t&&t==t&&i<=M){for(;r<i;){var o=r+i>>>1,a=e[o];null!==a&&!Ps(a)&&(n?a<=t:a<t)?r=o+1:i=o}return i}return Li(e,t,Iu,n)}function Li(e,t,n,r){t=n(t);for(var i=0,a=null==e?0:e.length,s=t!=t,u=null===t,c=Ps(t),l=t===o;i<a;){var f=Mn((i+a)/2),p=n(e[f]),d=p!==o,h=null===p,v=p==p,g=Ps(p);if(s)var m=r||v;else m=l?v&&(r||d):u?v&&d&&(r||!h):c?v&&d&&!h&&(r||!g):!h&&!g&&(r?p<=t:p<t);m?i=f+1:a=f}return zn(a,H)}function ji(e,t){for(var n=-1,r=e.length,i=0,o=[];++n<r;){var a=e[n],s=t?t(a):a;if(!n||!ds(s,u)){var u=s;o[i++]=0===a?0:a}}return o}function Pi(e){return"number"==typeof e?e:Ps(e)?R:+e}function Ri(e){if("string"==typeof e)return e;if(ms(e))return Zt(e,Ri)+"";if(Ps(e))return pr?pr.call(e):"";var t=e+"";return"0"==t&&1/e==-L?"-0":t}function $i(e,t,n){var r=-1,i=Yt,o=e.length,s=!0,u=[],c=u;if(n)s=!1,i=Jt;else if(o>=a){var l=t?null:Eo(e);if(l)return Dn(l);s=!1,i=_n,c=new wr}else c=t?[]:u;e:for(;++r<o;){var f=e[r],p=t?t(f):f;if(f=n||0!==f?f:0,s&&p==p){for(var d=c.length;d--;)if(c[d]===p)continue e;t&&c.push(p),u.push(f)}else i(c,p,n)||(c!==u&&c.push(p),u.push(f))}return u}function Hi(e,t){return null==(e=ta(e,t=zi(t,e)))||delete e[la(Ea(t))]}function Mi(e,t,n,r){return Ai(e,t,n(Qr(e,t)),r)}function Fi(e,t,n,r){for(var i=e.length,o=r?i:-1;(r?o--:++o<i)&&t(e[o],o,e););return n?Ii(e,r?0:o,r?o+1:i):Ii(e,r?o+1:0,r?i:o)}function Wi(e,t){var n=e;return n instanceof mr&&(n=n.value()),tn(t,function(e,t){return t.func.apply(t.thisArg,en([e],t.args))},n)}function qi(e,t,n){var i=e.length;if(i<2)return i?$i(e[0]):[];for(var o=-1,a=r(i);++o<i;)for(var s=e[o],u=-1;++u<i;)u!=o&&(a[o]=Hr(a[o]||s,e[u],t,n));return $i(Ur(a,1),t,n)}function Bi(e,t,n){for(var r=-1,i=e.length,a=t.length,s={};++r<i;){var u=r<a?t[r]:o;n(s,e[r],u)}return s}function Ui(e){return bs(e)?e:[]}function Vi(e){return"function"==typeof e?e:Iu}function zi(e,t){return ms(e)?e:Go(e,t)?[e]:ca(Vs(e))}var Ki=Ei;function Gi(e,t,n){var r=e.length;return n=n===o?r:n,!t&&n>=r?e:Ii(e,t,n)}var Xi=Pn||function(e){return Lt.clearTimeout(e)};function Qi(e,t){if(t)return e.slice();var n=e.length,r=Ot?Ot(n):new e.constructor(n);return e.copy(r),r}function Yi(e){var t=new e.constructor(e.byteLength);return new Tt(t).set(new Tt(e)),t}function Ji(e,t){var n=t?Yi(e.buffer):e.buffer;return new e.constructor(n,e.byteOffset,e.length)}function Zi(e,t){if(e!==t){var n=e!==o,r=null===e,i=e==e,a=Ps(e),s=t!==o,u=null===t,c=t==t,l=Ps(t);if(!u&&!l&&!a&&e>t||a&&s&&c&&!u&&!l||r&&s&&c||!n&&c||!i)return 1;if(!r&&!a&&!l&&e<t||l&&n&&i&&!r&&!a||u&&n&&i||!s&&i||!c)return-1}return 0}function eo(e,t,n,i){for(var o=-1,a=e.length,s=n.length,u=-1,c=t.length,l=Vn(a-s,0),f=r(c+l),p=!i;++u<c;)f[u]=t[u];for(;++o<s;)(p||o<a)&&(f[n[o]]=e[o]);for(;l--;)f[u++]=e[o++];return f}function to(e,t,n,i){for(var o=-1,a=e.length,s=-1,u=n.length,c=-1,l=t.length,f=Vn(a-u,0),p=r(f+l),d=!i;++o<f;)p[o]=e[o];for(var h=o;++c<l;)p[h+c]=t[c];for(;++s<u;)(d||o<a)&&(p[h+n[s]]=e[o++]);return p}function no(e,t){var n=-1,i=e.length;for(t||(t=r(i));++n<i;)t[n]=e[n];return t}function ro(e,t,n,r){var i=!n;n||(n={});for(var a=-1,s=t.length;++a<s;){var u=t[a],c=r?r(n[u],e[u],u,n,e):o;c===o&&(c=e[u]),i?Nr(n,u,c):Or(n,u,c)}return n}function io(e,t){return function(n,r){var i=ms(n)?zt:Ir,o=t?t():{};return i(n,e,Ro(r,2),o)}}function oo(e){return Ei(function(t,n){var r=-1,i=n.length,a=i>1?n[i-1]:o,s=i>2?n[2]:o;for(a=e.length>3&&"function"==typeof a?(i--,a):o,s&&Ko(n[0],n[1],s)&&(a=i<3?o:a,i=1),t=tt(t);++r<i;){var u=n[r];u&&e(t,u,r,a)}return t})}function ao(e,t){return function(n,r){if(null==n)return n;if(!_s(n))return e(n,r);for(var i=n.length,o=t?i:-1,a=tt(n);(t?o--:++o<i)&&!1!==r(a[o],o,a););return n}}function so(e){return function(t,n,r){for(var i=-1,o=tt(t),a=r(t),s=a.length;s--;){var u=a[e?s:++i];if(!1===n(o[u],u,o))break}return t}}function uo(e){return function(t){var n=Cn(t=Vs(t))?Nn(t):o,r=n?n[0]:t.charAt(0),i=n?Gi(n,1).join(""):t.slice(1);return r[e]()+i}}function co(e){return function(t){return tn(xu(gu(t).replace(yt,"")),e,"")}}function lo(e){return function(){var t=arguments;switch(t.length){case 0:return new e;case 1:return new e(t[0]);case 2:return new e(t[0],t[1]);case 3:return new e(t[0],t[1],t[2]);case 4:return new e(t[0],t[1],t[2],t[3]);case 5:return new e(t[0],t[1],t[2],t[3],t[4]);case 6:return new e(t[0],t[1],t[2],t[3],t[4],t[5]);case 7:return new e(t[0],t[1],t[2],t[3],t[4],t[5],t[6])}var n=hr(e.prototype),r=e.apply(n,t);return Ss(r)?r:n}}function fo(e){return function(t,n,r){var i=tt(t);if(!_s(t)){var a=Ro(n,3);t=iu(t),n=function(e){return a(i[e],e,i)}}var s=e(t,n,r);return s>-1?i[a?t[s]:s]:o}}function po(e){return Io(function(t){var n=t.length,r=n,i=gr.prototype.thru;for(e&&t.reverse();r--;){var a=t[r];if("function"!=typeof a)throw new it(u);if(i&&!s&&"wrapper"==jo(a))var s=new gr([],!0)}for(r=s?r:n;++r<n;){var c=jo(a=t[r]),l="wrapper"==c?Lo(a):o;s=l&&Xo(l[0])&&l[1]==(x|b|T|C)&&!l[4].length&&1==l[9]?s[jo(l[0])].apply(s,l[3]):1==a.length&&Xo(a)?s[c]():s.thru(a)}return function(){var e=arguments,r=e[0];if(s&&1==e.length&&ms(r))return s.plant(r).value();for(var i=0,o=n?t[i].apply(this,e):r;++i<n;)o=t[i].call(this,o);return o}})}function ho(e,t,n,i,a,s,u,c,l,f){var p=t&x,d=t&m,h=t&y,v=t&(b|w),g=t&A,_=h?o:lo(e);return function m(){for(var y=arguments.length,b=r(y),w=y;w--;)b[w]=arguments[w];if(v)var T=Po(m),E=function(e,t){for(var n=e.length,r=0;n--;)e[n]===t&&++r;return r}(b,T);if(i&&(b=eo(b,i,a,v)),s&&(b=to(b,s,u,v)),y-=E,v&&y<f){var x=On(b,T);return wo(e,t,ho,m.placeholder,n,b,x,c,l,f-y)}var C=d?n:this,A=h?C[e]:e;return y=b.length,c?b=function(e,t){for(var n=e.length,r=zn(t.length,n),i=no(e);r--;){var a=t[r];e[r]=zo(a,n)?i[a]:o}return e}(b,c):g&&y>1&&b.reverse(),p&&l<y&&(b.length=l),this&&this!==Lt&&this instanceof m&&(A=_||lo(A)),A.apply(C,b)}}function vo(e,t){return function(n,r){return function(e,t,n,r){return Kr(e,function(e,i,o){t(r,n(e),i,o)}),r}(n,e,t(r),{})}}function go(e,t){return function(n,r){var i;if(n===o&&r===o)return t;if(n!==o&&(i=n),r!==o){if(i===o)return r;"string"==typeof n||"string"==typeof r?(n=Ri(n),r=Ri(r)):(n=Pi(n),r=Pi(r)),i=e(n,r)}return i}}function mo(e){return Io(function(t){return t=Zt(t,mn(Ro())),Ei(function(n){var r=this;return e(t,function(e){return Vt(e,r,n)})})})}function yo(e,t){var n=(t=t===o?" ":Ri(t)).length;if(n<2)return n?Ti(t,e):t;var r=Ti(t,Hn(e/kn(t)));return Cn(t)?Gi(Nn(r),0,e).join(""):r.slice(0,e)}function _o(e){return function(t,n,i){return i&&"number"!=typeof i&&Ko(t,n,i)&&(n=i=o),t=Fs(t),n===o?(n=t,t=0):n=Fs(n),function(e,t,n,i){for(var o=-1,a=Vn(Hn((t-e)/(n||1)),0),s=r(a);a--;)s[i?a:++o]=e,e+=n;return s}(t,n,i=i===o?t<n?1:-1:Fs(i),e)}}function bo(e){return function(t,n){return"string"==typeof t&&"string"==typeof n||(t=Bs(t),n=Bs(n)),e(t,n)}}function wo(e,t,n,r,i,a,s,u,c,l){var f=t&b;t|=f?T:E,(t&=~(f?E:T))&_||(t&=~(m|y));var p=[e,t,i,f?a:o,f?s:o,f?o:a,f?o:s,u,c,l],d=n.apply(o,p);return Xo(e)&&ra(d,p),d.placeholder=r,aa(d,e,t)}function To(e){var t=et[e];return function(e,n){if(e=Bs(e),n=null==n?0:zn(Ws(n),292)){var r=(Vs(e)+"e").split("e");return+((r=(Vs(t(r[0]+"e"+(+r[1]+n)))+"e").split("e"))[0]+"e"+(+r[1]-n))}return t(e)}}var Eo=er&&1/Dn(new er([,-0]))[1]==L?function(e){return new er(e)}:Pu;function xo(e){return function(t){var n=qo(t);return n==Q?An(t):n==ne?In(t):function(e,t){return Zt(t,function(t){return[t,e[t]]})}(t,e(t))}}function Co(e,t,n,i,a,s,c,l){var p=t&y;if(!p&&"function"!=typeof e)throw new it(u);var d=i?i.length:0;if(d||(t&=~(T|E),i=a=o),c=c===o?c:Vn(Ws(c),0),l=l===o?l:Ws(l),d-=a?a.length:0,t&E){var h=i,v=a;i=a=o}var g=p?o:Lo(e),A=[e,t,n,i,a,h,v,s,c,l];if(g&&function(e,t){var n=e[1],r=t[1],i=n|r,o=i<(m|y|x),a=r==x&&n==b||r==x&&n==C&&e[7].length<=t[8]||r==(x|C)&&t[7].length<=t[8]&&n==b;if(!o&&!a)return e;r&m&&(e[2]=t[2],i|=n&m?0:_);var s=t[3];if(s){var u=e[3];e[3]=u?eo(u,s,t[4]):s,e[4]=u?On(e[3],f):t[4]}(s=t[5])&&(u=e[5],e[5]=u?to(u,s,t[6]):s,e[6]=u?On(e[5],f):t[6]),(s=t[7])&&(e[7]=s),r&x&&(e[8]=null==e[8]?t[8]:zn(e[8],t[8])),null==e[9]&&(e[9]=t[9]),e[0]=t[0],e[1]=i}(A,g),e=A[0],t=A[1],n=A[2],i=A[3],a=A[4],!(l=A[9]=A[9]===o?p?0:e.length:Vn(A[9]-d,0))&&t&(b|w)&&(t&=~(b|w)),t&&t!=m)S=t==b||t==w?function(e,t,n){var i=lo(e);return function a(){for(var s=arguments.length,u=r(s),c=s,l=Po(a);c--;)u[c]=arguments[c];var f=s<3&&u[0]!==l&&u[s-1]!==l?[]:On(u,l);return(s-=f.length)<n?wo(e,t,ho,a.placeholder,o,u,f,o,o,n-s):Vt(this&&this!==Lt&&this instanceof a?i:e,this,u)}}(e,t,l):t!=T&&t!=(m|T)||a.length?ho.apply(o,A):function(e,t,n,i){var o=t&m,a=lo(e);return function t(){for(var s=-1,u=arguments.length,c=-1,l=i.length,f=r(l+u),p=this&&this!==Lt&&this instanceof t?a:e;++c<l;)f[c]=i[c];for(;u--;)f[c++]=arguments[++s];return Vt(p,o?n:this,f)}}(e,t,n,i);else var S=function(e,t,n){var r=t&m,i=lo(e);return function t(){return(this&&this!==Lt&&this instanceof t?i:e).apply(r?n:this,arguments)}}(e,t,n);return aa((g?Si:ra)(S,A),e,t)}function Ao(e,t,n,r){return e===o||ds(e,st[n])&&!lt.call(r,n)?t:e}function So(e,t,n,r,i,a){return Ss(e)&&Ss(t)&&(a.set(t,e),vi(e,t,o,So,a),a.delete(t)),e}function Oo(e){return ks(e)?o:e}function Do(e,t,n,r,i,a){var s=n&v,u=e.length,c=t.length;if(u!=c&&!(s&&c>u))return!1;var l=a.get(e);if(l&&a.get(t))return l==t;var f=-1,p=!0,d=n&g?new wr:o;for(a.set(e,t),a.set(t,e);++f<u;){var h=e[f],m=t[f];if(r)var y=s?r(m,h,f,t,e,a):r(h,m,f,e,t,a);if(y!==o){if(y)continue;p=!1;break}if(d){if(!rn(t,function(e,t){if(!_n(d,t)&&(h===e||i(h,e,n,r,a)))return d.push(t)})){p=!1;break}}else if(h!==m&&!i(h,m,n,r,a)){p=!1;break}}return a.delete(e),a.delete(t),p}function Io(e){return oa(ea(e,o,ya),e+"")}function ko(e){return Yr(e,iu,Fo)}function No(e){return Yr(e,ou,Wo)}var Lo=rr?function(e){return rr.get(e)}:Pu;function jo(e){for(var t=e.name+"",n=ir[t],r=lt.call(ir,t)?n.length:0;r--;){var i=n[r],o=i.func;if(null==o||o==e)return i.name}return t}function Po(e){return(lt.call(dr,"placeholder")?dr:e).placeholder}function Ro(){var e=dr.iteratee||ku;return e=e===ku?ui:e,arguments.length?e(arguments[0],arguments[1]):e}function $o(e,t){var n,r,i=e.__data__;return("string"==(r=typeof(n=t))||"number"==r||"symbol"==r||"boolean"==r?"__proto__"!==n:null===n)?i["string"==typeof t?"string":"hash"]:i.map}function Ho(e){for(var t=iu(e),n=t.length;n--;){var r=t[n],i=e[r];t[n]=[r,i,Jo(i)]}return t}function Mo(e,t){var n=function(e,t){return null==e?o:e[t]}(e,t);return si(n)?n:o}var Fo=Fn?function(e){return null==e?[]:(e=tt(e),Qt(Fn(e),function(t){return jt.call(e,t)}))}:qu,Wo=Fn?function(e){for(var t=[];e;)en(t,Fo(e)),e=kt(e);return t}:qu,qo=Jr;function Bo(e,t,n){for(var r=-1,i=(t=zi(t,e)).length,o=!1;++r<i;){var a=la(t[r]);if(!(o=null!=e&&n(e,a)))break;e=e[a]}return o||++r!=i?o:!!(i=null==e?0:e.length)&&As(i)&&zo(a,i)&&(ms(e)||gs(e))}function Uo(e){return"function"!=typeof e.constructor||Yo(e)?{}:hr(kt(e))}function Vo(e){return ms(e)||gs(e)||!!($t&&e&&e[$t])}function zo(e,t){var n=typeof e;return!!(t=null==t?j:t)&&("number"==n||"symbol"!=n&&Ge.test(e))&&e>-1&&e%1==0&&e<t}function Ko(e,t,n){if(!Ss(n))return!1;var r=typeof t;return!!("number"==r?_s(n)&&zo(t,n.length):"string"==r&&t in n)&&ds(n[t],e)}function Go(e,t){if(ms(e))return!1;var n=typeof e;return!("number"!=n&&"symbol"!=n&&"boolean"!=n&&null!=e&&!Ps(e))||Ie.test(e)||!De.test(e)||null!=t&&e in tt(t)}function Xo(e){var t=jo(e),n=dr[t];if("function"!=typeof n||!(t in mr.prototype))return!1;if(e===n)return!0;var r=Lo(n);return!!r&&e===r[0]}(Yn&&qo(new Yn(new ArrayBuffer(1)))!=ce||Jn&&qo(new Jn)!=Q||Zn&&"[object Promise]"!=qo(Zn.resolve())||er&&qo(new er)!=ne||tr&&qo(new tr)!=ae)&&(qo=function(e){var t=Jr(e),n=t==Z?e.constructor:o,r=n?fa(n):"";if(r)switch(r){case or:return ce;case ar:return Q;case sr:return"[object Promise]";case ur:return ne;case cr:return ae}return t});var Qo=ut?xs:Bu;function Yo(e){var t=e&&e.constructor;return e===("function"==typeof t&&t.prototype||st)}function Jo(e){return e==e&&!Ss(e)}function Zo(e,t){return function(n){return null!=n&&n[e]===t&&(t!==o||e in tt(n))}}function ea(e,t,n){return t=Vn(t===o?e.length-1:t,0),function(){for(var i=arguments,o=-1,a=Vn(i.length-t,0),s=r(a);++o<a;)s[o]=i[t+o];o=-1;for(var u=r(t+1);++o<t;)u[o]=i[o];return u[t]=n(s),Vt(e,this,u)}}function ta(e,t){return t.length<2?e:Qr(e,Ii(t,0,-1))}function na(e,t){if("__proto__"!=t)return e[t]}var ra=sa(Si),ia=$n||function(e,t){return Lt.setTimeout(e,t)},oa=sa(Oi);function aa(e,t,n){var r=t+"";return oa(e,function(e,t){var n=t.length;if(!n)return e;var r=n-1;return t[r]=(n>1?"& ":"")+t[r],t=t.join(n>2?", ":" "),e.replace($e,"{\n/* [wrapped with "+t+"] */\n")}(r,function(e,t){return Kt(F,function(n){var r="_."+n[0];t&n[1]&&!Yt(e,r)&&e.push(r)}),e.sort()}(function(e){var t=e.match(He);return t?t[1].split(Me):[]}(r),n)))}function sa(e){var t=0,n=0;return function(){var r=Kn(),i=I-(r-n);if(n=r,i>0){if(++t>=D)return arguments[0]}else t=0;return e.apply(o,arguments)}}function ua(e,t){var n=-1,r=e.length,i=r-1;for(t=t===o?r:t;++n<t;){var a=wi(n,i),s=e[a];e[a]=e[n],e[n]=s}return e.length=t,e}var ca=function(e){var t=ss(e,function(e){return n.size===l&&n.clear(),e}),n=t.cache;return t}(function(e){var t=[];return 46===e.charCodeAt(0)&&t.push(""),e.replace(ke,function(e,n,r,i){t.push(r?i.replace(We,"$1"):n||e)}),t});function la(e){if("string"==typeof e||Ps(e))return e;var t=e+"";return"0"==t&&1/e==-L?"-0":t}function fa(e){if(null!=e){try{return ct.call(e)}catch(e){}try{return e+""}catch(e){}}return""}function pa(e){if(e instanceof mr)return e.clone();var t=new gr(e.__wrapped__,e.__chain__);return t.__actions__=no(e.__actions__),t.__index__=e.__index__,t.__values__=e.__values__,t}var da=Ei(function(e,t){return bs(e)?Hr(e,Ur(t,1,bs,!0)):[]}),ha=Ei(function(e,t){var n=Ea(t);return bs(n)&&(n=o),bs(e)?Hr(e,Ur(t,1,bs,!0),Ro(n,2)):[]}),va=Ei(function(e,t){var n=Ea(t);return bs(n)&&(n=o),bs(e)?Hr(e,Ur(t,1,bs,!0),o,n):[]});function ga(e,t,n){var r=null==e?0:e.length;if(!r)return-1;var i=null==n?0:Ws(n);return i<0&&(i=Vn(r+i,0)),sn(e,Ro(t,3),i)}function ma(e,t,n){var r=null==e?0:e.length;if(!r)return-1;var i=r-1;return n!==o&&(i=Ws(n),i=n<0?Vn(r+i,0):zn(i,r-1)),sn(e,Ro(t,3),i,!0)}function ya(e){return null!=e&&e.length?Ur(e,1):[]}function _a(e){return e&&e.length?e[0]:o}var ba=Ei(function(e){var t=Zt(e,Ui);return t.length&&t[0]===e[0]?ni(t):[]}),wa=Ei(function(e){var t=Ea(e),n=Zt(e,Ui);return t===Ea(n)?t=o:n.pop(),n.length&&n[0]===e[0]?ni(n,Ro(t,2)):[]}),Ta=Ei(function(e){var t=Ea(e),n=Zt(e,Ui);return(t="function"==typeof t?t:o)&&n.pop(),n.length&&n[0]===e[0]?ni(n,o,t):[]});function Ea(e){var t=null==e?0:e.length;return t?e[t-1]:o}var xa=Ei(Ca);function Ca(e,t){return e&&e.length&&t&&t.length?_i(e,t):e}var Aa=Io(function(e,t){var n=null==e?0:e.length,r=Lr(e,t);return bi(e,Zt(t,function(e){return zo(e,n)?+e:e}).sort(Zi)),r});function Sa(e){return null==e?e:Qn.call(e)}var Oa=Ei(function(e){return $i(Ur(e,1,bs,!0))}),Da=Ei(function(e){var t=Ea(e);return bs(t)&&(t=o),$i(Ur(e,1,bs,!0),Ro(t,2))}),Ia=Ei(function(e){var t=Ea(e);return t="function"==typeof t?t:o,$i(Ur(e,1,bs,!0),o,t)});function ka(e){if(!e||!e.length)return[];var t=0;return e=Qt(e,function(e){if(bs(e))return t=Vn(e.length,t),!0}),gn(t,function(t){return Zt(e,pn(t))})}function Na(e,t){if(!e||!e.length)return[];var n=ka(e);return null==t?n:Zt(n,function(e){return Vt(t,o,e)})}var La=Ei(function(e,t){return bs(e)?Hr(e,t):[]}),ja=Ei(function(e){return qi(Qt(e,bs))}),Pa=Ei(function(e){var t=Ea(e);return bs(t)&&(t=o),qi(Qt(e,bs),Ro(t,2))}),Ra=Ei(function(e){var t=Ea(e);return t="function"==typeof t?t:o,qi(Qt(e,bs),o,t)}),$a=Ei(ka);var Ha=Ei(function(e){var t=e.length,n=t>1?e[t-1]:o;return n="function"==typeof n?(e.pop(),n):o,Na(e,n)});function Ma(e){var t=dr(e);return t.__chain__=!0,t}function Fa(e,t){return t(e)}var Wa=Io(function(e){var t=e.length,n=t?e[0]:0,r=this.__wrapped__,i=function(t){return Lr(t,e)};return!(t>1||this.__actions__.length)&&r instanceof mr&&zo(n)?((r=r.slice(n,+n+(t?1:0))).__actions__.push({func:Fa,args:[i],thisArg:o}),new gr(r,this.__chain__).thru(function(e){return t&&!e.length&&e.push(o),e})):this.thru(i)});var qa=io(function(e,t,n){lt.call(e,n)?++e[n]:Nr(e,n,1)});var Ba=fo(ga),Ua=fo(ma);function Va(e,t){return(ms(e)?Kt:Mr)(e,Ro(t,3))}function za(e,t){return(ms(e)?Gt:Fr)(e,Ro(t,3))}var Ka=io(function(e,t,n){lt.call(e,n)?e[n].push(t):Nr(e,n,[t])});var Ga=Ei(function(e,t,n){var i=-1,o="function"==typeof t,a=_s(e)?r(e.length):[];return Mr(e,function(e){a[++i]=o?Vt(t,e,n):ri(e,t,n)}),a}),Xa=io(function(e,t,n){Nr(e,n,t)});function Qa(e,t){return(ms(e)?Zt:pi)(e,Ro(t,3))}var Ya=io(function(e,t,n){e[n?0:1].push(t)},function(){return[[],[]]});var Ja=Ei(function(e,t){if(null==e)return[];var n=t.length;return n>1&&Ko(e,t[0],t[1])?t=[]:n>2&&Ko(t[0],t[1],t[2])&&(t=[t[0]]),mi(e,Ur(t,1),[])}),Za=Rn||function(){return Lt.Date.now()};function es(e,t,n){return t=n?o:t,t=e&&null==t?e.length:t,Co(e,x,o,o,o,o,t)}function ts(e,t){var n;if("function"!=typeof t)throw new it(u);return e=Ws(e),function(){return--e>0&&(n=t.apply(this,arguments)),e<=1&&(t=o),n}}var ns=Ei(function(e,t,n){var r=m;if(n.length){var i=On(n,Po(ns));r|=T}return Co(e,r,t,n,i)}),rs=Ei(function(e,t,n){var r=m|y;if(n.length){var i=On(n,Po(rs));r|=T}return Co(t,r,e,n,i)});function is(e,t,n){var r,i,a,s,c,l,f=0,p=!1,d=!1,h=!0;if("function"!=typeof e)throw new it(u);function v(t){var n=r,a=i;return r=i=o,f=t,s=e.apply(a,n)}function g(e){var n=e-l;return l===o||n>=t||n<0||d&&e-f>=a}function m(){var e=Za();if(g(e))return y(e);c=ia(m,function(e){var n=t-(e-l);return d?zn(n,a-(e-f)):n}(e))}function y(e){return c=o,h&&r?v(e):(r=i=o,s)}function _(){var e=Za(),n=g(e);if(r=arguments,i=this,l=e,n){if(c===o)return function(e){return f=e,c=ia(m,t),p?v(e):s}(l);if(d)return c=ia(m,t),v(l)}return c===o&&(c=ia(m,t)),s}return t=Bs(t)||0,Ss(n)&&(p=!!n.leading,a=(d="maxWait"in n)?Vn(Bs(n.maxWait)||0,t):a,h="trailing"in n?!!n.trailing:h),_.cancel=function(){c!==o&&Xi(c),f=0,r=l=i=c=o},_.flush=function(){return c===o?s:y(Za())},_}var os=Ei(function(e,t){return $r(e,1,t)}),as=Ei(function(e,t,n){return $r(e,Bs(t)||0,n)});function ss(e,t){if("function"!=typeof e||null!=t&&"function"!=typeof t)throw new it(u);var n=function(){var r=arguments,i=t?t.apply(this,r):r[0],o=n.cache;if(o.has(i))return o.get(i);var a=e.apply(this,r);return n.cache=o.set(i,a)||o,a};return n.cache=new(ss.Cache||br),n}function us(e){if("function"!=typeof e)throw new it(u);return function(){var t=arguments;switch(t.length){case 0:return!e.call(this);case 1:return!e.call(this,t[0]);case 2:return!e.call(this,t[0],t[1]);case 3:return!e.call(this,t[0],t[1],t[2])}return!e.apply(this,t)}}ss.Cache=br;var cs=Ki(function(e,t){var n=(t=1==t.length&&ms(t[0])?Zt(t[0],mn(Ro())):Zt(Ur(t,1),mn(Ro()))).length;return Ei(function(r){for(var i=-1,o=zn(r.length,n);++i<o;)r[i]=t[i].call(this,r[i]);return Vt(e,this,r)})}),ls=Ei(function(e,t){var n=On(t,Po(ls));return Co(e,T,o,t,n)}),fs=Ei(function(e,t){var n=On(t,Po(fs));return Co(e,E,o,t,n)}),ps=Io(function(e,t){return Co(e,C,o,o,o,t)});function ds(e,t){return e===t||e!=e&&t!=t}var hs=bo(Zr),vs=bo(function(e,t){return e>=t}),gs=ii(function(){return arguments}())?ii:function(e){return Os(e)&&lt.call(e,"callee")&&!jt.call(e,"callee")},ms=r.isArray,ys=Mt?mn(Mt):function(e){return Os(e)&&Jr(e)==ue};function _s(e){return null!=e&&As(e.length)&&!xs(e)}function bs(e){return Os(e)&&_s(e)}var ws=Wn||Bu,Ts=Ft?mn(Ft):function(e){return Os(e)&&Jr(e)==V};function Es(e){if(!Os(e))return!1;var t=Jr(e);return t==K||t==z||"string"==typeof e.message&&"string"==typeof e.name&&!ks(e)}function xs(e){if(!Ss(e))return!1;var t=Jr(e);return t==G||t==X||t==B||t==ee}function Cs(e){return"number"==typeof e&&e==Ws(e)}function As(e){return"number"==typeof e&&e>-1&&e%1==0&&e<=j}function Ss(e){var t=typeof e;return null!=e&&("object"==t||"function"==t)}function Os(e){return null!=e&&"object"==typeof e}var Ds=Wt?mn(Wt):function(e){return Os(e)&&qo(e)==Q};function Is(e){return"number"==typeof e||Os(e)&&Jr(e)==Y}function ks(e){if(!Os(e)||Jr(e)!=Z)return!1;var t=kt(e);if(null===t)return!0;var n=lt.call(t,"constructor")&&t.constructor;return"function"==typeof n&&n instanceof n&&ct.call(n)==ht}var Ns=qt?mn(qt):function(e){return Os(e)&&Jr(e)==te};var Ls=Bt?mn(Bt):function(e){return Os(e)&&qo(e)==ne};function js(e){return"string"==typeof e||!ms(e)&&Os(e)&&Jr(e)==re}function Ps(e){return"symbol"==typeof e||Os(e)&&Jr(e)==ie}var Rs=Ut?mn(Ut):function(e){return Os(e)&&As(e.length)&&!!At[Jr(e)]};var $s=bo(fi),Hs=bo(function(e,t){return e<=t});function Ms(e){if(!e)return[];if(_s(e))return js(e)?Nn(e):no(e);if(Ht&&e[Ht])return function(e){for(var t,n=[];!(t=e.next()).done;)n.push(t.value);return n}(e[Ht]());var t=qo(e);return(t==Q?An:t==ne?Dn:du)(e)}function Fs(e){return e?(e=Bs(e))===L||e===-L?(e<0?-1:1)*P:e==e?e:0:0===e?e:0}function Ws(e){var t=Fs(e),n=t%1;return t==t?n?t-n:t:0}function qs(e){return e?jr(Ws(e),0,$):0}function Bs(e){if("number"==typeof e)return e;if(Ps(e))return R;if(Ss(e)){var t="function"==typeof e.valueOf?e.valueOf():e;e=Ss(t)?t+"":t}if("string"!=typeof e)return 0===e?e:+e;e=e.replace(je,"");var n=Ve.test(e);return n||Ke.test(e)?It(e.slice(2),n?2:8):Ue.test(e)?R:+e}function Us(e){return ro(e,ou(e))}function Vs(e){return null==e?"":Ri(e)}var zs=oo(function(e,t){if(Yo(t)||_s(t))ro(t,iu(t),e);else for(var n in t)lt.call(t,n)&&Or(e,n,t[n])}),Ks=oo(function(e,t){ro(t,ou(t),e)}),Gs=oo(function(e,t,n,r){ro(t,ou(t),e,r)}),Xs=oo(function(e,t,n,r){ro(t,iu(t),e,r)}),Qs=Io(Lr);var Ys=Ei(function(e,t){e=tt(e);var n=-1,r=t.length,i=r>2?t[2]:o;for(i&&Ko(t[0],t[1],i)&&(r=1);++n<r;)for(var a=t[n],s=ou(a),u=-1,c=s.length;++u<c;){var l=s[u],f=e[l];(f===o||ds(f,st[l])&&!lt.call(e,l))&&(e[l]=a[l])}return e}),Js=Ei(function(e){return e.push(o,So),Vt(su,o,e)});function Zs(e,t,n){var r=null==e?o:Qr(e,t);return r===o?n:r}function eu(e,t){return null!=e&&Bo(e,t,ti)}var tu=vo(function(e,t,n){null!=t&&"function"!=typeof t.toString&&(t=dt.call(t)),e[t]=n},Su(Iu)),nu=vo(function(e,t,n){null!=t&&"function"!=typeof t.toString&&(t=dt.call(t)),lt.call(e,t)?e[t].push(n):e[t]=[n]},Ro),ru=Ei(ri);function iu(e){return _s(e)?Er(e):ci(e)}function ou(e){return _s(e)?Er(e,!0):li(e)}var au=oo(function(e,t,n){vi(e,t,n)}),su=oo(function(e,t,n,r){vi(e,t,n,r)}),uu=Io(function(e,t){var n={};if(null==e)return n;var r=!1;t=Zt(t,function(t){return t=zi(t,e),r||(r=t.length>1),t}),ro(e,No(e),n),r&&(n=Pr(n,p|d|h,Oo));for(var i=t.length;i--;)Hi(n,t[i]);return n});var cu=Io(function(e,t){return null==e?{}:function(e,t){return yi(e,t,function(t,n){return eu(e,n)})}(e,t)});function lu(e,t){if(null==e)return{};var n=Zt(No(e),function(e){return[e]});return t=Ro(t),yi(e,n,function(e,n){return t(e,n[0])})}var fu=xo(iu),pu=xo(ou);function du(e){return null==e?[]:yn(e,iu(e))}var hu=co(function(e,t,n){return t=t.toLowerCase(),e+(n?vu(t):t)});function vu(e){return Eu(Vs(e).toLowerCase())}function gu(e){return(e=Vs(e))&&e.replace(Xe,Tn).replace(_t,"")}var mu=co(function(e,t,n){return e+(n?"-":"")+t.toLowerCase()}),yu=co(function(e,t,n){return e+(n?" ":"")+t.toLowerCase()}),_u=uo("toLowerCase");var bu=co(function(e,t,n){return e+(n?"_":"")+t.toLowerCase()});var wu=co(function(e,t,n){return e+(n?" ":"")+Eu(t)});var Tu=co(function(e,t,n){return e+(n?" ":"")+t.toUpperCase()}),Eu=uo("toUpperCase");function xu(e,t,n){return e=Vs(e),(t=n?o:t)===o?function(e){return Et.test(e)}(e)?function(e){return e.match(wt)||[]}(e):function(e){return e.match(Fe)||[]}(e):e.match(t)||[]}var Cu=Ei(function(e,t){try{return Vt(e,o,t)}catch(e){return Es(e)?e:new Je(e)}}),Au=Io(function(e,t){return Kt(t,function(t){t=la(t),Nr(e,t,ns(e[t],e))}),e});function Su(e){return function(){return e}}var Ou=po(),Du=po(!0);function Iu(e){return e}function ku(e){return ui("function"==typeof e?e:Pr(e,p))}var Nu=Ei(function(e,t){return function(n){return ri(n,e,t)}}),Lu=Ei(function(e,t){return function(n){return ri(e,n,t)}});function ju(e,t,n){var r=iu(t),i=Xr(t,r);null!=n||Ss(t)&&(i.length||!r.length)||(n=t,t=e,e=this,i=Xr(t,iu(t)));var o=!(Ss(n)&&"chain"in n&&!n.chain),a=xs(e);return Kt(i,function(n){var r=t[n];e[n]=r,a&&(e.prototype[n]=function(){var t=this.__chain__;if(o||t){var n=e(this.__wrapped__);return(n.__actions__=no(this.__actions__)).push({func:r,args:arguments,thisArg:e}),n.__chain__=t,n}return r.apply(e,en([this.value()],arguments))})}),e}function Pu(){}var Ru=mo(Zt),$u=mo(Xt),Hu=mo(rn);function Mu(e){return Go(e)?pn(la(e)):function(e){return function(t){return Qr(t,e)}}(e)}var Fu=_o(),Wu=_o(!0);function qu(){return[]}function Bu(){return!1}var Uu=go(function(e,t){return e+t},0),Vu=To("ceil"),zu=go(function(e,t){return e/t},1),Ku=To("floor");var Gu,Xu=go(function(e,t){return e*t},1),Qu=To("round"),Yu=go(function(e,t){return e-t},0);return dr.after=function(e,t){if("function"!=typeof t)throw new it(u);return e=Ws(e),function(){if(--e<1)return t.apply(this,arguments)}},dr.ary=es,dr.assign=zs,dr.assignIn=Ks,dr.assignInWith=Gs,dr.assignWith=Xs,dr.at=Qs,dr.before=ts,dr.bind=ns,dr.bindAll=Au,dr.bindKey=rs,dr.castArray=function(){if(!arguments.length)return[];var e=arguments[0];return ms(e)?e:[e]},dr.chain=Ma,dr.chunk=function(e,t,n){t=(n?Ko(e,t,n):t===o)?1:Vn(Ws(t),0);var i=null==e?0:e.length;if(!i||t<1)return[];for(var a=0,s=0,u=r(Hn(i/t));a<i;)u[s++]=Ii(e,a,a+=t);return u},dr.compact=function(e){for(var t=-1,n=null==e?0:e.length,r=0,i=[];++t<n;){var o=e[t];o&&(i[r++]=o)}return i},dr.concat=function(){var e=arguments.length;if(!e)return[];for(var t=r(e-1),n=arguments[0],i=e;i--;)t[i-1]=arguments[i];return en(ms(n)?no(n):[n],Ur(t,1))},dr.cond=function(e){var t=null==e?0:e.length,n=Ro();return e=t?Zt(e,function(e){if("function"!=typeof e[1])throw new it(u);return[n(e[0]),e[1]]}):[],Ei(function(n){for(var r=-1;++r<t;){var i=e[r];if(Vt(i[0],this,n))return Vt(i[1],this,n)}})},dr.conforms=function(e){return function(e){var t=iu(e);return function(n){return Rr(n,e,t)}}(Pr(e,p))},dr.constant=Su,dr.countBy=qa,dr.create=function(e,t){var n=hr(e);return null==t?n:kr(n,t)},dr.curry=function e(t,n,r){var i=Co(t,b,o,o,o,o,o,n=r?o:n);return i.placeholder=e.placeholder,i},dr.curryRight=function e(t,n,r){var i=Co(t,w,o,o,o,o,o,n=r?o:n);return i.placeholder=e.placeholder,i},dr.debounce=is,dr.defaults=Ys,dr.defaultsDeep=Js,dr.defer=os,dr.delay=as,dr.difference=da,dr.differenceBy=ha,dr.differenceWith=va,dr.drop=function(e,t,n){var r=null==e?0:e.length;return r?Ii(e,(t=n||t===o?1:Ws(t))<0?0:t,r):[]},dr.dropRight=function(e,t,n){var r=null==e?0:e.length;return r?Ii(e,0,(t=r-(t=n||t===o?1:Ws(t)))<0?0:t):[]},dr.dropRightWhile=function(e,t){return e&&e.length?Fi(e,Ro(t,3),!0,!0):[]},dr.dropWhile=function(e,t){return e&&e.length?Fi(e,Ro(t,3),!0):[]},dr.fill=function(e,t,n,r){var i=null==e?0:e.length;return i?(n&&"number"!=typeof n&&Ko(e,t,n)&&(n=0,r=i),function(e,t,n,r){var i=e.length;for((n=Ws(n))<0&&(n=-n>i?0:i+n),(r=r===o||r>i?i:Ws(r))<0&&(r+=i),r=n>r?0:qs(r);n<r;)e[n++]=t;return e}(e,t,n,r)):[]},dr.filter=function(e,t){return(ms(e)?Qt:Br)(e,Ro(t,3))},dr.flatMap=function(e,t){return Ur(Qa(e,t),1)},dr.flatMapDeep=function(e,t){return Ur(Qa(e,t),L)},dr.flatMapDepth=function(e,t,n){return n=n===o?1:Ws(n),Ur(Qa(e,t),n)},dr.flatten=ya,dr.flattenDeep=function(e){return null!=e&&e.length?Ur(e,L):[]},dr.flattenDepth=function(e,t){return null!=e&&e.length?Ur(e,t=t===o?1:Ws(t)):[]},dr.flip=function(e){return Co(e,A)},dr.flow=Ou,dr.flowRight=Du,dr.fromPairs=function(e){for(var t=-1,n=null==e?0:e.length,r={};++t<n;){var i=e[t];r[i[0]]=i[1]}return r},dr.functions=function(e){return null==e?[]:Xr(e,iu(e))},dr.functionsIn=function(e){return null==e?[]:Xr(e,ou(e))},dr.groupBy=Ka,dr.initial=function(e){return null!=e&&e.length?Ii(e,0,-1):[]},dr.intersection=ba,dr.intersectionBy=wa,dr.intersectionWith=Ta,dr.invert=tu,dr.invertBy=nu,dr.invokeMap=Ga,dr.iteratee=ku,dr.keyBy=Xa,dr.keys=iu,dr.keysIn=ou,dr.map=Qa,dr.mapKeys=function(e,t){var n={};return t=Ro(t,3),Kr(e,function(e,r,i){Nr(n,t(e,r,i),e)}),n},dr.mapValues=function(e,t){var n={};return t=Ro(t,3),Kr(e,function(e,r,i){Nr(n,r,t(e,r,i))}),n},dr.matches=function(e){return di(Pr(e,p))},dr.matchesProperty=function(e,t){return hi(e,Pr(t,p))},dr.memoize=ss,dr.merge=au,dr.mergeWith=su,dr.method=Nu,dr.methodOf=Lu,dr.mixin=ju,dr.negate=us,dr.nthArg=function(e){return e=Ws(e),Ei(function(t){return gi(t,e)})},dr.omit=uu,dr.omitBy=function(e,t){return lu(e,us(Ro(t)))},dr.once=function(e){return ts(2,e)},dr.orderBy=function(e,t,n,r){return null==e?[]:(ms(t)||(t=null==t?[]:[t]),ms(n=r?o:n)||(n=null==n?[]:[n]),mi(e,t,n))},dr.over=Ru,dr.overArgs=cs,dr.overEvery=$u,dr.overSome=Hu,dr.partial=ls,dr.partialRight=fs,dr.partition=Ya,dr.pick=cu,dr.pickBy=lu,dr.property=Mu,dr.propertyOf=function(e){return function(t){return null==e?o:Qr(e,t)}},dr.pull=xa,dr.pullAll=Ca,dr.pullAllBy=function(e,t,n){return e&&e.length&&t&&t.length?_i(e,t,Ro(n,2)):e},dr.pullAllWith=function(e,t,n){return e&&e.length&&t&&t.length?_i(e,t,o,n):e},dr.pullAt=Aa,dr.range=Fu,dr.rangeRight=Wu,dr.rearg=ps,dr.reject=function(e,t){return(ms(e)?Qt:Br)(e,us(Ro(t,3)))},dr.remove=function(e,t){var n=[];if(!e||!e.length)return n;var r=-1,i=[],o=e.length;for(t=Ro(t,3);++r<o;){var a=e[r];t(a,r,e)&&(n.push(a),i.push(r))}return bi(e,i),n},dr.rest=function(e,t){if("function"!=typeof e)throw new it(u);return Ei(e,t=t===o?t:Ws(t))},dr.reverse=Sa,dr.sampleSize=function(e,t,n){return t=(n?Ko(e,t,n):t===o)?1:Ws(t),(ms(e)?Cr:Ci)(e,t)},dr.set=function(e,t,n){return null==e?e:Ai(e,t,n)},dr.setWith=function(e,t,n,r){return r="function"==typeof r?r:o,null==e?e:Ai(e,t,n,r)},dr.shuffle=function(e){return(ms(e)?Ar:Di)(e)},dr.slice=function(e,t,n){var r=null==e?0:e.length;return r?(n&&"number"!=typeof n&&Ko(e,t,n)?(t=0,n=r):(t=null==t?0:Ws(t),n=n===o?r:Ws(n)),Ii(e,t,n)):[]},dr.sortBy=Ja,dr.sortedUniq=function(e){return e&&e.length?ji(e):[]},dr.sortedUniqBy=function(e,t){return e&&e.length?ji(e,Ro(t,2)):[]},dr.split=function(e,t,n){return n&&"number"!=typeof n&&Ko(e,t,n)&&(t=n=o),(n=n===o?$:n>>>0)?(e=Vs(e))&&("string"==typeof t||null!=t&&!Ns(t))&&!(t=Ri(t))&&Cn(e)?Gi(Nn(e),0,n):e.split(t,n):[]},dr.spread=function(e,t){if("function"!=typeof e)throw new it(u);return t=null==t?0:Vn(Ws(t),0),Ei(function(n){var r=n[t],i=Gi(n,0,t);return r&&en(i,r),Vt(e,this,i)})},dr.tail=function(e){var t=null==e?0:e.length;return t?Ii(e,1,t):[]},dr.take=function(e,t,n){return e&&e.length?Ii(e,0,(t=n||t===o?1:Ws(t))<0?0:t):[]},dr.takeRight=function(e,t,n){var r=null==e?0:e.length;return r?Ii(e,(t=r-(t=n||t===o?1:Ws(t)))<0?0:t,r):[]},dr.takeRightWhile=function(e,t){return e&&e.length?Fi(e,Ro(t,3),!1,!0):[]},dr.takeWhile=function(e,t){return e&&e.length?Fi(e,Ro(t,3)):[]},dr.tap=function(e,t){return t(e),e},dr.throttle=function(e,t,n){var r=!0,i=!0;if("function"!=typeof e)throw new it(u);return Ss(n)&&(r="leading"in n?!!n.leading:r,i="trailing"in n?!!n.trailing:i),is(e,t,{leading:r,maxWait:t,trailing:i})},dr.thru=Fa,dr.toArray=Ms,dr.toPairs=fu,dr.toPairsIn=pu,dr.toPath=function(e){return ms(e)?Zt(e,la):Ps(e)?[e]:no(ca(Vs(e)))},dr.toPlainObject=Us,dr.transform=function(e,t,n){var r=ms(e),i=r||ws(e)||Rs(e);if(t=Ro(t,4),null==n){var o=e&&e.constructor;n=i?r?new o:[]:Ss(e)&&xs(o)?hr(kt(e)):{}}return(i?Kt:Kr)(e,function(e,r,i){return t(n,e,r,i)}),n},dr.unary=function(e){return es(e,1)},dr.union=Oa,dr.unionBy=Da,dr.unionWith=Ia,dr.uniq=function(e){return e&&e.length?$i(e):[]},dr.uniqBy=function(e,t){return e&&e.length?$i(e,Ro(t,2)):[]},dr.uniqWith=function(e,t){return t="function"==typeof t?t:o,e&&e.length?$i(e,o,t):[]},dr.unset=function(e,t){return null==e||Hi(e,t)},dr.unzip=ka,dr.unzipWith=Na,dr.update=function(e,t,n){return null==e?e:Mi(e,t,Vi(n))},dr.updateWith=function(e,t,n,r){return r="function"==typeof r?r:o,null==e?e:Mi(e,t,Vi(n),r)},dr.values=du,dr.valuesIn=function(e){return null==e?[]:yn(e,ou(e))},dr.without=La,dr.words=xu,dr.wrap=function(e,t){return ls(Vi(t),e)},dr.xor=ja,dr.xorBy=Pa,dr.xorWith=Ra,dr.zip=$a,dr.zipObject=function(e,t){return Bi(e||[],t||[],Or)},dr.zipObjectDeep=function(e,t){return Bi(e||[],t||[],Ai)},dr.zipWith=Ha,dr.entries=fu,dr.entriesIn=pu,dr.extend=Ks,dr.extendWith=Gs,ju(dr,dr),dr.add=Uu,dr.attempt=Cu,dr.camelCase=hu,dr.capitalize=vu,dr.ceil=Vu,dr.clamp=function(e,t,n){return n===o&&(n=t,t=o),n!==o&&(n=(n=Bs(n))==n?n:0),t!==o&&(t=(t=Bs(t))==t?t:0),jr(Bs(e),t,n)},dr.clone=function(e){return Pr(e,h)},dr.cloneDeep=function(e){return Pr(e,p|h)},dr.cloneDeepWith=function(e,t){return Pr(e,p|h,t="function"==typeof t?t:o)},dr.cloneWith=function(e,t){return Pr(e,h,t="function"==typeof t?t:o)},dr.conformsTo=function(e,t){return null==t||Rr(e,t,iu(t))},dr.deburr=gu,dr.defaultTo=function(e,t){return null==e||e!=e?t:e},dr.divide=zu,dr.endsWith=function(e,t,n){e=Vs(e),t=Ri(t);var r=e.length,i=n=n===o?r:jr(Ws(n),0,r);return(n-=t.length)>=0&&e.slice(n,i)==t},dr.eq=ds,dr.escape=function(e){return(e=Vs(e))&&Ce.test(e)?e.replace(Ee,En):e},dr.escapeRegExp=function(e){return(e=Vs(e))&&Le.test(e)?e.replace(Ne,"\\$&"):e},dr.every=function(e,t,n){var r=ms(e)?Xt:Wr;return n&&Ko(e,t,n)&&(t=o),r(e,Ro(t,3))},dr.find=Ba,dr.findIndex=ga,dr.findKey=function(e,t){return an(e,Ro(t,3),Kr)},dr.findLast=Ua,dr.findLastIndex=ma,dr.findLastKey=function(e,t){return an(e,Ro(t,3),Gr)},dr.floor=Ku,dr.forEach=Va,dr.forEachRight=za,dr.forIn=function(e,t){return null==e?e:Vr(e,Ro(t,3),ou)},dr.forInRight=function(e,t){return null==e?e:zr(e,Ro(t,3),ou)},dr.forOwn=function(e,t){return e&&Kr(e,Ro(t,3))},dr.forOwnRight=function(e,t){return e&&Gr(e,Ro(t,3))},dr.get=Zs,dr.gt=hs,dr.gte=vs,dr.has=function(e,t){return null!=e&&Bo(e,t,ei)},dr.hasIn=eu,dr.head=_a,dr.identity=Iu,dr.includes=function(e,t,n,r){e=_s(e)?e:du(e),n=n&&!r?Ws(n):0;var i=e.length;return n<0&&(n=Vn(i+n,0)),js(e)?n<=i&&e.indexOf(t,n)>-1:!!i&&un(e,t,n)>-1},dr.indexOf=function(e,t,n){var r=null==e?0:e.length;if(!r)return-1;var i=null==n?0:Ws(n);return i<0&&(i=Vn(r+i,0)),un(e,t,i)},dr.inRange=function(e,t,n){return t=Fs(t),n===o?(n=t,t=0):n=Fs(n),function(e,t,n){return e>=zn(t,n)&&e<Vn(t,n)}(e=Bs(e),t,n)},dr.invoke=ru,dr.isArguments=gs,dr.isArray=ms,dr.isArrayBuffer=ys,dr.isArrayLike=_s,dr.isArrayLikeObject=bs,dr.isBoolean=function(e){return!0===e||!1===e||Os(e)&&Jr(e)==U},dr.isBuffer=ws,dr.isDate=Ts,dr.isElement=function(e){return Os(e)&&1===e.nodeType&&!ks(e)},dr.isEmpty=function(e){if(null==e)return!0;if(_s(e)&&(ms(e)||"string"==typeof e||"function"==typeof e.splice||ws(e)||Rs(e)||gs(e)))return!e.length;var t=qo(e);if(t==Q||t==ne)return!e.size;if(Yo(e))return!ci(e).length;for(var n in e)if(lt.call(e,n))return!1;return!0},dr.isEqual=function(e,t){return oi(e,t)},dr.isEqualWith=function(e,t,n){var r=(n="function"==typeof n?n:o)?n(e,t):o;return r===o?oi(e,t,o,n):!!r},dr.isError=Es,dr.isFinite=function(e){return"number"==typeof e&&qn(e)},dr.isFunction=xs,dr.isInteger=Cs,dr.isLength=As,dr.isMap=Ds,dr.isMatch=function(e,t){return e===t||ai(e,t,Ho(t))},dr.isMatchWith=function(e,t,n){return n="function"==typeof n?n:o,ai(e,t,Ho(t),n)},dr.isNaN=function(e){return Is(e)&&e!=+e},dr.isNative=function(e){if(Qo(e))throw new Je(s);return si(e)},dr.isNil=function(e){return null==e},dr.isNull=function(e){return null===e},dr.isNumber=Is,dr.isObject=Ss,dr.isObjectLike=Os,dr.isPlainObject=ks,dr.isRegExp=Ns,dr.isSafeInteger=function(e){return Cs(e)&&e>=-j&&e<=j},dr.isSet=Ls,dr.isString=js,dr.isSymbol=Ps,dr.isTypedArray=Rs,dr.isUndefined=function(e){return e===o},dr.isWeakMap=function(e){return Os(e)&&qo(e)==ae},dr.isWeakSet=function(e){return Os(e)&&Jr(e)==se},dr.join=function(e,t){return null==e?"":Bn.call(e,t)},dr.kebabCase=mu,dr.last=Ea,dr.lastIndexOf=function(e,t,n){var r=null==e?0:e.length;if(!r)return-1;var i=r;return n!==o&&(i=(i=Ws(n))<0?Vn(r+i,0):zn(i,r-1)),t==t?function(e,t,n){for(var r=n+1;r--;)if(e[r]===t)return r;return r}(e,t,i):sn(e,ln,i,!0)},dr.lowerCase=yu,dr.lowerFirst=_u,dr.lt=$s,dr.lte=Hs,dr.max=function(e){return e&&e.length?qr(e,Iu,Zr):o},dr.maxBy=function(e,t){return e&&e.length?qr(e,Ro(t,2),Zr):o},dr.mean=function(e){return fn(e,Iu)},dr.meanBy=function(e,t){return fn(e,Ro(t,2))},dr.min=function(e){return e&&e.length?qr(e,Iu,fi):o},dr.minBy=function(e,t){return e&&e.length?qr(e,Ro(t,2),fi):o},dr.stubArray=qu,dr.stubFalse=Bu,dr.stubObject=function(){return{}},dr.stubString=function(){return""},dr.stubTrue=function(){return!0},dr.multiply=Xu,dr.nth=function(e,t){return e&&e.length?gi(e,Ws(t)):o},dr.noConflict=function(){return Lt._===this&&(Lt._=vt),this},dr.noop=Pu,dr.now=Za,dr.pad=function(e,t,n){e=Vs(e);var r=(t=Ws(t))?kn(e):0;if(!t||r>=t)return e;var i=(t-r)/2;return yo(Mn(i),n)+e+yo(Hn(i),n)},dr.padEnd=function(e,t,n){e=Vs(e);var r=(t=Ws(t))?kn(e):0;return t&&r<t?e+yo(t-r,n):e},dr.padStart=function(e,t,n){e=Vs(e);var r=(t=Ws(t))?kn(e):0;return t&&r<t?yo(t-r,n)+e:e},dr.parseInt=function(e,t,n){return n||null==t?t=0:t&&(t=+t),Gn(Vs(e).replace(Pe,""),t||0)},dr.random=function(e,t,n){if(n&&"boolean"!=typeof n&&Ko(e,t,n)&&(t=n=o),n===o&&("boolean"==typeof t?(n=t,t=o):"boolean"==typeof e&&(n=e,e=o)),e===o&&t===o?(e=0,t=1):(e=Fs(e),t===o?(t=e,e=0):t=Fs(t)),e>t){var r=e;e=t,t=r}if(n||e%1||t%1){var i=Xn();return zn(e+i*(t-e+Dt("1e-"+((i+"").length-1))),t)}return wi(e,t)},dr.reduce=function(e,t,n){var r=ms(e)?tn:hn,i=arguments.length<3;return r(e,Ro(t,4),n,i,Mr)},dr.reduceRight=function(e,t,n){var r=ms(e)?nn:hn,i=arguments.length<3;return r(e,Ro(t,4),n,i,Fr)},dr.repeat=function(e,t,n){return t=(n?Ko(e,t,n):t===o)?1:Ws(t),Ti(Vs(e),t)},dr.replace=function(){var e=arguments,t=Vs(e[0]);return e.length<3?t:t.replace(e[1],e[2])},dr.result=function(e,t,n){var r=-1,i=(t=zi(t,e)).length;for(i||(i=1,e=o);++r<i;){var a=null==e?o:e[la(t[r])];a===o&&(r=i,a=n),e=xs(a)?a.call(e):a}return e},dr.round=Qu,dr.runInContext=e,dr.sample=function(e){return(ms(e)?xr:xi)(e)},dr.size=function(e){if(null==e)return 0;if(_s(e))return js(e)?kn(e):e.length;var t=qo(e);return t==Q||t==ne?e.size:ci(e).length},dr.snakeCase=bu,dr.some=function(e,t,n){var r=ms(e)?rn:ki;return n&&Ko(e,t,n)&&(t=o),r(e,Ro(t,3))},dr.sortedIndex=function(e,t){return Ni(e,t)},dr.sortedIndexBy=function(e,t,n){return Li(e,t,Ro(n,2))},dr.sortedIndexOf=function(e,t){var n=null==e?0:e.length;if(n){var r=Ni(e,t);if(r<n&&ds(e[r],t))return r}return-1},dr.sortedLastIndex=function(e,t){return Ni(e,t,!0)},dr.sortedLastIndexBy=function(e,t,n){return Li(e,t,Ro(n,2),!0)},dr.sortedLastIndexOf=function(e,t){if(null!=e&&e.length){var n=Ni(e,t,!0)-1;if(ds(e[n],t))return n}return-1},dr.startCase=wu,dr.startsWith=function(e,t,n){return e=Vs(e),n=null==n?0:jr(Ws(n),0,e.length),t=Ri(t),e.slice(n,n+t.length)==t},dr.subtract=Yu,dr.sum=function(e){return e&&e.length?vn(e,Iu):0},dr.sumBy=function(e,t){return e&&e.length?vn(e,Ro(t,2)):0},dr.template=function(e,t,n){var r=dr.templateSettings;n&&Ko(e,t,n)&&(t=o),e=Vs(e),t=Gs({},t,r,Ao);var i,a,s=Gs({},t.imports,r.imports,Ao),u=iu(s),c=yn(s,u),l=0,f=t.interpolate||Qe,p="__p += '",d=nt((t.escape||Qe).source+"|"+f.source+"|"+(f===Oe?qe:Qe).source+"|"+(t.evaluate||Qe).source+"|$","g"),h="//# sourceURL="+("sourceURL"in t?t.sourceURL:"lodash.templateSources["+ ++Ct+"]")+"\n";e.replace(d,function(t,n,r,o,s,u){return r||(r=o),p+=e.slice(l,u).replace(Ye,xn),n&&(i=!0,p+="' +\n__e("+n+") +\n'"),s&&(a=!0,p+="';\n"+s+";\n__p += '"),r&&(p+="' +\n((__t = ("+r+")) == null ? '' : __t) +\n'"),l=u+t.length,t}),p+="';\n";var v=t.variable;v||(p="with (obj) {\n"+p+"\n}\n"),p=(a?p.replace(_e,""):p).replace(be,"$1").replace(we,"$1;"),p="function("+(v||"obj")+") {\n"+(v?"":"obj || (obj = {});\n")+"var __t, __p = ''"+(i?", __e = _.escape":"")+(a?", __j = Array.prototype.join;\nfunction print() { __p += __j.call(arguments, '') }\n":";\n")+p+"return __p\n}";var g=Cu(function(){return Ze(u,h+"return "+p).apply(o,c)});if(g.source=p,Es(g))throw g;return g},dr.times=function(e,t){if((e=Ws(e))<1||e>j)return[];var n=$,r=zn(e,$);t=Ro(t),e-=$;for(var i=gn(r,t);++n<e;)t(n);return i},dr.toFinite=Fs,dr.toInteger=Ws,dr.toLength=qs,dr.toLower=function(e){return Vs(e).toLowerCase()},dr.toNumber=Bs,dr.toSafeInteger=function(e){return e?jr(Ws(e),-j,j):0===e?e:0},dr.toString=Vs,dr.toUpper=function(e){return Vs(e).toUpperCase()},dr.trim=function(e,t,n){if((e=Vs(e))&&(n||t===o))return e.replace(je,"");if(!e||!(t=Ri(t)))return e;var r=Nn(e),i=Nn(t);return Gi(r,bn(r,i),wn(r,i)+1).join("")},dr.trimEnd=function(e,t,n){if((e=Vs(e))&&(n||t===o))return e.replace(Re,"");if(!e||!(t=Ri(t)))return e;var r=Nn(e);return Gi(r,0,wn(r,Nn(t))+1).join("")},dr.trimStart=function(e,t,n){if((e=Vs(e))&&(n||t===o))return e.replace(Pe,"");if(!e||!(t=Ri(t)))return e;var r=Nn(e);return Gi(r,bn(r,Nn(t))).join("")},dr.truncate=function(e,t){var n=S,r=O;if(Ss(t)){var i="separator"in t?t.separator:i;n="length"in t?Ws(t.length):n,r="omission"in t?Ri(t.omission):r}var a=(e=Vs(e)).length;if(Cn(e)){var s=Nn(e);a=s.length}if(n>=a)return e;var u=n-kn(r);if(u<1)return r;var c=s?Gi(s,0,u).join(""):e.slice(0,u);if(i===o)return c+r;if(s&&(u+=c.length-u),Ns(i)){if(e.slice(u).search(i)){var l,f=c;for(i.global||(i=nt(i.source,Vs(Be.exec(i))+"g")),i.lastIndex=0;l=i.exec(f);)var p=l.index;c=c.slice(0,p===o?u:p)}}else if(e.indexOf(Ri(i),u)!=u){var d=c.lastIndexOf(i);d>-1&&(c=c.slice(0,d))}return c+r},dr.unescape=function(e){return(e=Vs(e))&&xe.test(e)?e.replace(Te,Ln):e},dr.uniqueId=function(e){var t=++ft;return Vs(e)+t},dr.upperCase=Tu,dr.upperFirst=Eu,dr.each=Va,dr.eachRight=za,dr.first=_a,ju(dr,(Gu={},Kr(dr,function(e,t){lt.call(dr.prototype,t)||(Gu[t]=e)}),Gu),{chain:!1}),dr.VERSION="4.17.11",Kt(["bind","bindKey","curry","curryRight","partial","partialRight"],function(e){dr[e].placeholder=dr}),Kt(["drop","take"],function(e,t){mr.prototype[e]=function(n){n=n===o?1:Vn(Ws(n),0);var r=this.__filtered__&&!t?new mr(this):this.clone();return r.__filtered__?r.__takeCount__=zn(n,r.__takeCount__):r.__views__.push({size:zn(n,$),type:e+(r.__dir__<0?"Right":"")}),r},mr.prototype[e+"Right"]=function(t){return this.reverse()[e](t).reverse()}}),Kt(["filter","map","takeWhile"],function(e,t){var n=t+1,r=n==k||3==n;mr.prototype[e]=function(e){var t=this.clone();return t.__iteratees__.push({iteratee:Ro(e,3),type:n}),t.__filtered__=t.__filtered__||r,t}}),Kt(["head","last"],function(e,t){var n="take"+(t?"Right":"");mr.prototype[e]=function(){return this[n](1).value()[0]}}),Kt(["initial","tail"],function(e,t){var n="drop"+(t?"":"Right");mr.prototype[e]=function(){return this.__filtered__?new mr(this):this[n](1)}}),mr.prototype.compact=function(){return this.filter(Iu)},mr.prototype.find=function(e){return this.filter(e).head()},mr.prototype.findLast=function(e){return this.reverse().find(e)},mr.prototype.invokeMap=Ei(function(e,t){return"function"==typeof e?new mr(this):this.map(function(n){return ri(n,e,t)})}),mr.prototype.reject=function(e){return this.filter(us(Ro(e)))},mr.prototype.slice=function(e,t){e=Ws(e);var n=this;return n.__filtered__&&(e>0||t<0)?new mr(n):(e<0?n=n.takeRight(-e):e&&(n=n.drop(e)),t!==o&&(n=(t=Ws(t))<0?n.dropRight(-t):n.take(t-e)),n)},mr.prototype.takeRightWhile=function(e){return this.reverse().takeWhile(e).reverse()},mr.prototype.toArray=function(){return this.take($)},Kr(mr.prototype,function(e,t){var n=/^(?:filter|find|map|reject)|While$/.test(t),r=/^(?:head|last)$/.test(t),i=dr[r?"take"+("last"==t?"Right":""):t],a=r||/^find/.test(t);i&&(dr.prototype[t]=function(){var t=this.__wrapped__,s=r?[1]:arguments,u=t instanceof mr,c=s[0],l=u||ms(t),f=function(e){var t=i.apply(dr,en([e],s));return r&&p?t[0]:t};l&&n&&"function"==typeof c&&1!=c.length&&(u=l=!1);var p=this.__chain__,d=!!this.__actions__.length,h=a&&!p,v=u&&!d;if(!a&&l){t=v?t:new mr(this);var g=e.apply(t,s);return g.__actions__.push({func:Fa,args:[f],thisArg:o}),new gr(g,p)}return h&&v?e.apply(this,s):(g=this.thru(f),h?r?g.value()[0]:g.value():g)})}),Kt(["pop","push","shift","sort","splice","unshift"],function(e){var t=ot[e],n=/^(?:push|sort|unshift)$/.test(e)?"tap":"thru",r=/^(?:pop|shift)$/.test(e);dr.prototype[e]=function(){var e=arguments;if(r&&!this.__chain__){var i=this.value();return t.apply(ms(i)?i:[],e)}return this[n](function(n){return t.apply(ms(n)?n:[],e)})}}),Kr(mr.prototype,function(e,t){var n=dr[t];if(n){var r=n.name+"";(ir[r]||(ir[r]=[])).push({name:t,func:n})}}),ir[ho(o,y).name]=[{name:"wrapper",func:o}],mr.prototype.clone=function(){var e=new mr(this.__wrapped__);return e.__actions__=no(this.__actions__),e.__dir__=this.__dir__,e.__filtered__=this.__filtered__,e.__iteratees__=no(this.__iteratees__),e.__takeCount__=this.__takeCount__,e.__views__=no(this.__views__),e},mr.prototype.reverse=function(){if(this.__filtered__){var e=new mr(this);e.__dir__=-1,e.__filtered__=!0}else(e=this.clone()).__dir__*=-1;return e},mr.prototype.value=function(){var e=this.__wrapped__.value(),t=this.__dir__,n=ms(e),r=t<0,i=n?e.length:0,o=function(e,t,n){for(var r=-1,i=n.length;++r<i;){var o=n[r],a=o.size;switch(o.type){case"drop":e+=a;break;case"dropRight":t-=a;break;case"take":t=zn(t,e+a);break;case"takeRight":e=Vn(e,t-a)}}return{start:e,end:t}}(0,i,this.__views__),a=o.start,s=o.end,u=s-a,c=r?s:a-1,l=this.__iteratees__,f=l.length,p=0,d=zn(u,this.__takeCount__);if(!n||!r&&i==u&&d==u)return Wi(e,this.__actions__);var h=[];e:for(;u--&&p<d;){for(var v=-1,g=e[c+=t];++v<f;){var m=l[v],y=m.iteratee,_=m.type,b=y(g);if(_==N)g=b;else if(!b){if(_==k)continue e;break e}}h[p++]=g}return h},dr.prototype.at=Wa,dr.prototype.chain=function(){return Ma(this)},dr.prototype.commit=function(){return new gr(this.value(),this.__chain__)},dr.prototype.next=function(){this.__values__===o&&(this.__values__=Ms(this.value()));var e=this.__index__>=this.__values__.length;return{done:e,value:e?o:this.__values__[this.__index__++]}},dr.prototype.plant=function(e){for(var t,n=this;n instanceof vr;){var r=pa(n);r.__index__=0,r.__values__=o,t?i.__wrapped__=r:t=r;var i=r;n=n.__wrapped__}return i.__wrapped__=e,t},dr.prototype.reverse=function(){var e=this.__wrapped__;if(e instanceof mr){var t=e;return this.__actions__.length&&(t=new mr(this)),(t=t.reverse()).__actions__.push({func:Fa,args:[Sa],thisArg:o}),new gr(t,this.__chain__)}return this.thru(Sa)},dr.prototype.toJSON=dr.prototype.valueOf=dr.prototype.value=function(){return Wi(this.__wrapped__,this.__actions__)},dr.prototype.first=dr.prototype.head,Ht&&(dr.prototype[Ht]=function(){return this}),dr}();Lt._=jn,(i=function(){return jn}.call(t,n,t,r))===o||(r.exports=i)}).call(this)}).call(this,n(1),n(15)(e))},function(e,t){e.exports=function(e){return e.webpackPolyfill||(e.deprecate=function(){},e.paths=[],e.children||(e.children=[]),Object.defineProperty(e,"loaded",{enumerable:!0,get:function(){return e.l}}),Object.defineProperty(e,"id",{enumerable:!0,get:function(){return e.i}}),e.webpackPolyfill=1),e}},function(e,t,n){!function(e,t,n){"use strict";function r(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}function i(e,t,n){return t&&r(e.prototype,t),n&&r(e,n),e}function o(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function a(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{},r=Object.keys(n);"function"==typeof Object.getOwnPropertySymbols&&(r=r.concat(Object.getOwnPropertySymbols(n).filter(function(e){return Object.getOwnPropertyDescriptor(n,e).enumerable}))),r.forEach(function(t){o(e,t,n[t])})}return e}t=t&&t.hasOwnProperty("default")?t.default:t,n=n&&n.hasOwnProperty("default")?n.default:n;var s=function(e){var t="transitionend";function n(t){var n=this,i=!1;return e(this).one(r.TRANSITION_END,function(){i=!0}),setTimeout(function(){i||r.triggerTransitionEnd(n)},t),this}var r={TRANSITION_END:"bsTransitionEnd",getUID:function(e){do{e+=~~(1e6*Math.random())}while(document.getElementById(e));return e},getSelectorFromElement:function(e){var t=e.getAttribute("data-target");t&&"#"!==t||(t=e.getAttribute("href")||"");try{return document.querySelector(t)?t:null}catch(e){return null}},getTransitionDurationFromElement:function(t){if(!t)return 0;var n=e(t).css("transition-duration"),r=parseFloat(n);return r?(n=n.split(",")[0],1e3*parseFloat(n)):0},reflow:function(e){return e.offsetHeight},triggerTransitionEnd:function(n){e(n).trigger(t)},supportsTransitionEnd:function(){return Boolean(t)},isElement:function(e){return(e[0]||e).nodeType},typeCheckConfig:function(e,t,n){for(var i in n)if(Object.prototype.hasOwnProperty.call(n,i)){var o=n[i],a=t[i],s=a&&r.isElement(a)?"element":(u=a,{}.toString.call(u).match(/\s([a-z]+)/i)[1].toLowerCase());if(!new RegExp(o).test(s))throw new Error(e.toUpperCase()+': Option "'+i+'" provided type "'+s+'" but expected type "'+o+'".')}var u}};return e.fn.emulateTransitionEnd=n,e.event.special[r.TRANSITION_END]={bindType:t,delegateType:t,handle:function(t){if(e(t.target).is(this))return t.handleObj.handler.apply(this,arguments)}},r}(t),u=function(e){var t=e.fn.alert,n={CLOSE:"close.bs.alert",CLOSED:"closed.bs.alert",CLICK_DATA_API:"click.bs.alert.data-api"},r={ALERT:"alert",FADE:"fade",SHOW:"show"},o=function(){function t(e){this._element=e}var o=t.prototype;return o.close=function(e){var t=this._element;e&&(t=this._getRootElement(e));var n=this._triggerCloseEvent(t);n.isDefaultPrevented()||this._removeElement(t)},o.dispose=function(){e.removeData(this._element,"bs.alert"),this._element=null},o._getRootElement=function(t){var n=s.getSelectorFromElement(t),i=!1;return n&&(i=document.querySelector(n)),i||(i=e(t).closest("."+r.ALERT)[0]),i},o._triggerCloseEvent=function(t){var r=e.Event(n.CLOSE);return e(t).trigger(r),r},o._removeElement=function(t){var n=this;if(e(t).removeClass(r.SHOW),e(t).hasClass(r.FADE)){var i=s.getTransitionDurationFromElement(t);e(t).one(s.TRANSITION_END,function(e){return n._destroyElement(t,e)}).emulateTransitionEnd(i)}else this._destroyElement(t)},o._destroyElement=function(t){e(t).detach().trigger(n.CLOSED).remove()},t._jQueryInterface=function(n){return this.each(function(){var r=e(this),i=r.data("bs.alert");i||(i=new t(this),r.data("bs.alert",i)),"close"===n&&i[n](this)})},t._handleDismiss=function(e){return function(t){t&&t.preventDefault(),e.close(this)}},i(t,null,[{key:"VERSION",get:function(){return"4.1.3"}}]),t}();return e(document).on(n.CLICK_DATA_API,'[data-dismiss="alert"]',o._handleDismiss(new o)),e.fn.alert=o._jQueryInterface,e.fn.alert.Constructor=o,e.fn.alert.noConflict=function(){return e.fn.alert=t,o._jQueryInterface},o}(t),c=function(e){var t="button",n=e.fn[t],r={ACTIVE:"active",BUTTON:"btn",FOCUS:"focus"},o={DATA_TOGGLE_CARROT:'[data-toggle^="button"]',DATA_TOGGLE:'[data-toggle="buttons"]',INPUT:"input",ACTIVE:".active",BUTTON:".btn"},a={CLICK_DATA_API:"click.bs.button.data-api",FOCUS_BLUR_DATA_API:"focus.bs.button.data-api blur.bs.button.data-api"},s=function(){function t(e){this._element=e}var n=t.prototype;return n.toggle=function(){var t=!0,n=!0,i=e(this._element).closest(o.DATA_TOGGLE)[0];if(i){var a=this._element.querySelector(o.INPUT);if(a){if("radio"===a.type)if(a.checked&&this._element.classList.contains(r.ACTIVE))t=!1;else{var s=i.querySelector(o.ACTIVE);s&&e(s).removeClass(r.ACTIVE)}if(t){if(a.hasAttribute("disabled")||i.hasAttribute("disabled")||a.classList.contains("disabled")||i.classList.contains("disabled"))return;a.checked=!this._element.classList.contains(r.ACTIVE),e(a).trigger("change")}a.focus(),n=!1}}n&&this._element.setAttribute("aria-pressed",!this._element.classList.contains(r.ACTIVE)),t&&e(this._element).toggleClass(r.ACTIVE)},n.dispose=function(){e.removeData(this._element,"bs.button"),this._element=null},t._jQueryInterface=function(n){return this.each(function(){var r=e(this).data("bs.button");r||(r=new t(this),e(this).data("bs.button",r)),"toggle"===n&&r[n]()})},i(t,null,[{key:"VERSION",get:function(){return"4.1.3"}}]),t}();return e(document).on(a.CLICK_DATA_API,o.DATA_TOGGLE_CARROT,function(t){t.preventDefault();var n=t.target;e(n).hasClass(r.BUTTON)||(n=e(n).closest(o.BUTTON)),s._jQueryInterface.call(e(n),"toggle")}).on(a.FOCUS_BLUR_DATA_API,o.DATA_TOGGLE_CARROT,function(t){var n=e(t.target).closest(o.BUTTON)[0];e(n).toggleClass(r.FOCUS,/^focus(in)?$/.test(t.type))}),e.fn[t]=s._jQueryInterface,e.fn[t].Constructor=s,e.fn[t].noConflict=function(){return e.fn[t]=n,s._jQueryInterface},s}(t),l=function(e){var t="carousel",n="bs.carousel",r="."+n,o=e.fn[t],u={interval:5e3,keyboard:!0,slide:!1,pause:"hover",wrap:!0},c={interval:"(number|boolean)",keyboard:"boolean",slide:"(boolean|string)",pause:"(string|boolean)",wrap:"boolean"},l={NEXT:"next",PREV:"prev",LEFT:"left",RIGHT:"right"},f={SLIDE:"slide"+r,SLID:"slid"+r,KEYDOWN:"keydown"+r,MOUSEENTER:"mouseenter"+r,MOUSELEAVE:"mouseleave"+r,TOUCHEND:"touchend"+r,LOAD_DATA_API:"load.bs.carousel.data-api",CLICK_DATA_API:"click.bs.carousel.data-api"},p={CAROUSEL:"carousel",ACTIVE:"active",SLIDE:"slide",RIGHT:"carousel-item-right",LEFT:"carousel-item-left",NEXT:"carousel-item-next",PREV:"carousel-item-prev",ITEM:"carousel-item"},d={ACTIVE:".active",ACTIVE_ITEM:".active.carousel-item",ITEM:".carousel-item",NEXT_PREV:".carousel-item-next, .carousel-item-prev",INDICATORS:".carousel-indicators",DATA_SLIDE:"[data-slide], [data-slide-to]",DATA_RIDE:'[data-ride="carousel"]'},h=function(){function o(t,n){this._items=null,this._interval=null,this._activeElement=null,this._isPaused=!1,this._isSliding=!1,this.touchTimeout=null,this._config=this._getConfig(n),this._element=e(t)[0],this._indicatorsElement=this._element.querySelector(d.INDICATORS),this._addEventListeners()}var h=o.prototype;return h.next=function(){this._isSliding||this._slide(l.NEXT)},h.nextWhenVisible=function(){!document.hidden&&e(this._element).is(":visible")&&"hidden"!==e(this._element).css("visibility")&&this.next()},h.prev=function(){this._isSliding||this._slide(l.PREV)},h.pause=function(e){e||(this._isPaused=!0),this._element.querySelector(d.NEXT_PREV)&&(s.triggerTransitionEnd(this._element),this.cycle(!0)),clearInterval(this._interval),this._interval=null},h.cycle=function(e){e||(this._isPaused=!1),this._interval&&(clearInterval(this._interval),this._interval=null),this._config.interval&&!this._isPaused&&(this._interval=setInterval((document.visibilityState?this.nextWhenVisible:this.next).bind(this),this._config.interval))},h.to=function(t){var n=this;this._activeElement=this._element.querySelector(d.ACTIVE_ITEM);var r=this._getItemIndex(this._activeElement);if(!(t>this._items.length-1||t<0))if(this._isSliding)e(this._element).one(f.SLID,function(){return n.to(t)});else{if(r===t)return this.pause(),void this.cycle();var i=t>r?l.NEXT:l.PREV;this._slide(i,this._items[t])}},h.dispose=function(){e(this._element).off(r),e.removeData(this._element,n),this._items=null,this._config=null,this._element=null,this._interval=null,this._isPaused=null,this._isSliding=null,this._activeElement=null,this._indicatorsElement=null},h._getConfig=function(e){return e=a({},u,e),s.typeCheckConfig(t,e,c),e},h._addEventListeners=function(){var t=this;this._config.keyboard&&e(this._element).on(f.KEYDOWN,function(e){return t._keydown(e)}),"hover"===this._config.pause&&(e(this._element).on(f.MOUSEENTER,function(e){return t.pause(e)}).on(f.MOUSELEAVE,function(e){return t.cycle(e)}),"ontouchstart"in document.documentElement&&e(this._element).on(f.TOUCHEND,function(){t.pause(),t.touchTimeout&&clearTimeout(t.touchTimeout),t.touchTimeout=setTimeout(function(e){return t.cycle(e)},500+t._config.interval)}))},h._keydown=function(e){if(!/input|textarea/i.test(e.target.tagName))switch(e.which){case 37:e.preventDefault(),this.prev();break;case 39:e.preventDefault(),this.next()}},h._getItemIndex=function(e){return this._items=e&&e.parentNode?[].slice.call(e.parentNode.querySelectorAll(d.ITEM)):[],this._items.indexOf(e)},h._getItemByDirection=function(e,t){var n=e===l.NEXT,r=e===l.PREV,i=this._getItemIndex(t),o=this._items.length-1,a=r&&0===i||n&&i===o;if(a&&!this._config.wrap)return t;var s=e===l.PREV?-1:1,u=(i+s)%this._items.length;return-1===u?this._items[this._items.length-1]:this._items[u]},h._triggerSlideEvent=function(t,n){var r=this._getItemIndex(t),i=this._getItemIndex(this._element.querySelector(d.ACTIVE_ITEM)),o=e.Event(f.SLIDE,{relatedTarget:t,direction:n,from:i,to:r});return e(this._element).trigger(o),o},h._setActiveIndicatorElement=function(t){if(this._indicatorsElement){var n=[].slice.call(this._indicatorsElement.querySelectorAll(d.ACTIVE));e(n).removeClass(p.ACTIVE);var r=this._indicatorsElement.children[this._getItemIndex(t)];r&&e(r).addClass(p.ACTIVE)}},h._slide=function(t,n){var r,i,o,a=this,u=this._element.querySelector(d.ACTIVE_ITEM),c=this._getItemIndex(u),h=n||u&&this._getItemByDirection(t,u),v=this._getItemIndex(h),g=Boolean(this._interval);if(t===l.NEXT?(r=p.LEFT,i=p.NEXT,o=l.LEFT):(r=p.RIGHT,i=p.PREV,o=l.RIGHT),h&&e(h).hasClass(p.ACTIVE))this._isSliding=!1;else{var m=this._triggerSlideEvent(h,o);if(!m.isDefaultPrevented()&&u&&h){this._isSliding=!0,g&&this.pause(),this._setActiveIndicatorElement(h);var y=e.Event(f.SLID,{relatedTarget:h,direction:o,from:c,to:v});if(e(this._element).hasClass(p.SLIDE)){e(h).addClass(i),s.reflow(h),e(u).addClass(r),e(h).addClass(r);var _=s.getTransitionDurationFromElement(u);e(u).one(s.TRANSITION_END,function(){e(h).removeClass(r+" "+i).addClass(p.ACTIVE),e(u).removeClass(p.ACTIVE+" "+i+" "+r),a._isSliding=!1,setTimeout(function(){return e(a._element).trigger(y)},0)}).emulateTransitionEnd(_)}else e(u).removeClass(p.ACTIVE),e(h).addClass(p.ACTIVE),this._isSliding=!1,e(this._element).trigger(y);g&&this.cycle()}}},o._jQueryInterface=function(t){return this.each(function(){var r=e(this).data(n),i=a({},u,e(this).data());"object"==typeof t&&(i=a({},i,t));var s="string"==typeof t?t:i.slide;if(r||(r=new o(this,i),e(this).data(n,r)),"number"==typeof t)r.to(t);else if("string"==typeof s){if(void 0===r[s])throw new TypeError('No method named "'+s+'"');r[s]()}else i.interval&&(r.pause(),r.cycle())})},o._dataApiClickHandler=function(t){var r=s.getSelectorFromElement(this);if(r){var i=e(r)[0];if(i&&e(i).hasClass(p.CAROUSEL)){var u=a({},e(i).data(),e(this).data()),c=this.getAttribute("data-slide-to");c&&(u.interval=!1),o._jQueryInterface.call(e(i),u),c&&e(i).data(n).to(c),t.preventDefault()}}},i(o,null,[{key:"VERSION",get:function(){return"4.1.3"}},{key:"Default",get:function(){return u}}]),o}();return e(document).on(f.CLICK_DATA_API,d.DATA_SLIDE,h._dataApiClickHandler),e(window).on(f.LOAD_DATA_API,function(){for(var t=[].slice.call(document.querySelectorAll(d.DATA_RIDE)),n=0,r=t.length;n<r;n++){var i=e(t[n]);h._jQueryInterface.call(i,i.data())}}),e.fn[t]=h._jQueryInterface,e.fn[t].Constructor=h,e.fn[t].noConflict=function(){return e.fn[t]=o,h._jQueryInterface},h}(t),f=function(e){var t="collapse",n="bs.collapse",r=e.fn[t],o={toggle:!0,parent:""},u={toggle:"boolean",parent:"(string|element)"},c={SHOW:"show.bs.collapse",SHOWN:"shown.bs.collapse",HIDE:"hide.bs.collapse",HIDDEN:"hidden.bs.collapse",CLICK_DATA_API:"click.bs.collapse.data-api"},l={SHOW:"show",COLLAPSE:"collapse",COLLAPSING:"collapsing",COLLAPSED:"collapsed"},f={WIDTH:"width",HEIGHT:"height"},p={ACTIVES:".show, .collapsing",DATA_TOGGLE:'[data-toggle="collapse"]'},d=function(){function r(t,n){this._isTransitioning=!1,this._element=t,this._config=this._getConfig(n),this._triggerArray=e.makeArray(document.querySelectorAll('[data-toggle="collapse"][href="#'+t.id+'"],[data-toggle="collapse"][data-target="#'+t.id+'"]'));for(var r=[].slice.call(document.querySelectorAll(p.DATA_TOGGLE)),i=0,o=r.length;i<o;i++){var a=r[i],u=s.getSelectorFromElement(a),c=[].slice.call(document.querySelectorAll(u)).filter(function(e){return e===t});null!==u&&c.length>0&&(this._selector=u,this._triggerArray.push(a))}this._parent=this._config.parent?this._getParent():null,this._config.parent||this._addAriaAndCollapsedClass(this._element,this._triggerArray),this._config.toggle&&this.toggle()}var d=r.prototype;return d.toggle=function(){e(this._element).hasClass(l.SHOW)?this.hide():this.show()},d.show=function(){var t,i,o=this;if(!(this._isTransitioning||e(this._element).hasClass(l.SHOW)||(this._parent&&0===(t=[].slice.call(this._parent.querySelectorAll(p.ACTIVES)).filter(function(e){return e.getAttribute("data-parent")===o._config.parent})).length&&(t=null),t&&(i=e(t).not(this._selector).data(n))&&i._isTransitioning))){var a=e.Event(c.SHOW);if(e(this._element).trigger(a),!a.isDefaultPrevented()){t&&(r._jQueryInterface.call(e(t).not(this._selector),"hide"),i||e(t).data(n,null));var u=this._getDimension();e(this._element).removeClass(l.COLLAPSE).addClass(l.COLLAPSING),this._element.style[u]=0,this._triggerArray.length&&e(this._triggerArray).removeClass(l.COLLAPSED).attr("aria-expanded",!0),this.setTransitioning(!0);var f=u[0].toUpperCase()+u.slice(1),d="scroll"+f,h=s.getTransitionDurationFromElement(this._element);e(this._element).one(s.TRANSITION_END,function(){e(o._element).removeClass(l.COLLAPSING).addClass(l.COLLAPSE).addClass(l.SHOW),o._element.style[u]="",o.setTransitioning(!1),e(o._element).trigger(c.SHOWN)}).emulateTransitionEnd(h),this._element.style[u]=this._element[d]+"px"}}},d.hide=function(){var t=this;if(!this._isTransitioning&&e(this._element).hasClass(l.SHOW)){var n=e.Event(c.HIDE);if(e(this._element).trigger(n),!n.isDefaultPrevented()){var r=this._getDimension();this._element.style[r]=this._element.getBoundingClientRect()[r]+"px",s.reflow(this._element),e(this._element).addClass(l.COLLAPSING).removeClass(l.COLLAPSE).removeClass(l.SHOW);var i=this._triggerArray.length;if(i>0)for(var o=0;o<i;o++){var a=this._triggerArray[o],u=s.getSelectorFromElement(a);if(null!==u){var f=e([].slice.call(document.querySelectorAll(u)));f.hasClass(l.SHOW)||e(a).addClass(l.COLLAPSED).attr("aria-expanded",!1)}}this.setTransitioning(!0),this._element.style[r]="";var p=s.getTransitionDurationFromElement(this._element);e(this._element).one(s.TRANSITION_END,function(){t.setTransitioning(!1),e(t._element).removeClass(l.COLLAPSING).addClass(l.COLLAPSE).trigger(c.HIDDEN)}).emulateTransitionEnd(p)}}},d.setTransitioning=function(e){this._isTransitioning=e},d.dispose=function(){e.removeData(this._element,n),this._config=null,this._parent=null,this._element=null,this._triggerArray=null,this._isTransitioning=null},d._getConfig=function(e){return(e=a({},o,e)).toggle=Boolean(e.toggle),s.typeCheckConfig(t,e,u),e},d._getDimension=function(){var t=e(this._element).hasClass(f.WIDTH);return t?f.WIDTH:f.HEIGHT},d._getParent=function(){var t=this,n=null;s.isElement(this._config.parent)?(n=this._config.parent,void 0!==this._config.parent.jquery&&(n=this._config.parent[0])):n=document.querySelector(this._config.parent);var i='[data-toggle="collapse"][data-parent="'+this._config.parent+'"]',o=[].slice.call(n.querySelectorAll(i));return e(o).each(function(e,n){t._addAriaAndCollapsedClass(r._getTargetFromElement(n),[n])}),n},d._addAriaAndCollapsedClass=function(t,n){if(t){var r=e(t).hasClass(l.SHOW);n.length&&e(n).toggleClass(l.COLLAPSED,!r).attr("aria-expanded",r)}},r._getTargetFromElement=function(e){var t=s.getSelectorFromElement(e);return t?document.querySelector(t):null},r._jQueryInterface=function(t){return this.each(function(){var i=e(this),s=i.data(n),u=a({},o,i.data(),"object"==typeof t&&t?t:{});if(!s&&u.toggle&&/show|hide/.test(t)&&(u.toggle=!1),s||(s=new r(this,u),i.data(n,s)),"string"==typeof t){if(void 0===s[t])throw new TypeError('No method named "'+t+'"');s[t]()}})},i(r,null,[{key:"VERSION",get:function(){return"4.1.3"}},{key:"Default",get:function(){return o}}]),r}();return e(document).on(c.CLICK_DATA_API,p.DATA_TOGGLE,function(t){"A"===t.currentTarget.tagName&&t.preventDefault();var r=e(this),i=s.getSelectorFromElement(this),o=[].slice.call(document.querySelectorAll(i));e(o).each(function(){var t=e(this),i=t.data(n),o=i?"toggle":r.data();d._jQueryInterface.call(t,o)})}),e.fn[t]=d._jQueryInterface,e.fn[t].Constructor=d,e.fn[t].noConflict=function(){return e.fn[t]=r,d._jQueryInterface},d}(t),p=function(e){var t="dropdown",r="bs.dropdown",o="."+r,u=e.fn[t],c=new RegExp("38|40|27"),l={HIDE:"hide"+o,HIDDEN:"hidden"+o,SHOW:"show"+o,SHOWN:"shown"+o,CLICK:"click"+o,CLICK_DATA_API:"click.bs.dropdown.data-api",KEYDOWN_DATA_API:"keydown.bs.dropdown.data-api",KEYUP_DATA_API:"keyup.bs.dropdown.data-api"},f={DISABLED:"disabled",SHOW:"show",DROPUP:"dropup",DROPRIGHT:"dropright",DROPLEFT:"dropleft",MENURIGHT:"dropdown-menu-right",MENULEFT:"dropdown-menu-left",POSITION_STATIC:"position-static"},p={DATA_TOGGLE:'[data-toggle="dropdown"]',FORM_CHILD:".dropdown form",MENU:".dropdown-menu",NAVBAR_NAV:".navbar-nav",VISIBLE_ITEMS:".dropdown-menu .dropdown-item:not(.disabled):not(:disabled)"},d={TOP:"top-start",TOPEND:"top-end",BOTTOM:"bottom-start",BOTTOMEND:"bottom-end",RIGHT:"right-start",RIGHTEND:"right-end",LEFT:"left-start",LEFTEND:"left-end"},h={offset:0,flip:!0,boundary:"scrollParent",reference:"toggle",display:"dynamic"},v={offset:"(number|string|function)",flip:"boolean",boundary:"(string|element)",reference:"(string|element)",display:"string"},g=function(){function u(e,t){this._element=e,this._popper=null,this._config=this._getConfig(t),this._menu=this._getMenuElement(),this._inNavbar=this._detectNavbar(),this._addEventListeners()}var g=u.prototype;return g.toggle=function(){if(!this._element.disabled&&!e(this._element).hasClass(f.DISABLED)){var t=u._getParentFromElement(this._element),r=e(this._menu).hasClass(f.SHOW);if(u._clearMenus(),!r){var i={relatedTarget:this._element},o=e.Event(l.SHOW,i);if(e(t).trigger(o),!o.isDefaultPrevented()){if(!this._inNavbar){if(void 0===n)throw new TypeError("Bootstrap dropdown require Popper.js (https://popper.js.org)");var a=this._element;"parent"===this._config.reference?a=t:s.isElement(this._config.reference)&&(a=this._config.reference,void 0!==this._config.reference.jquery&&(a=this._config.reference[0])),"scrollParent"!==this._config.boundary&&e(t).addClass(f.POSITION_STATIC),this._popper=new n(a,this._menu,this._getPopperConfig())}"ontouchstart"in document.documentElement&&0===e(t).closest(p.NAVBAR_NAV).length&&e(document.body).children().on("mouseover",null,e.noop),this._element.focus(),this._element.setAttribute("aria-expanded",!0),e(this._menu).toggleClass(f.SHOW),e(t).toggleClass(f.SHOW).trigger(e.Event(l.SHOWN,i))}}}},g.dispose=function(){e.removeData(this._element,r),e(this._element).off(o),this._element=null,this._menu=null,null!==this._popper&&(this._popper.destroy(),this._popper=null)},g.update=function(){this._inNavbar=this._detectNavbar(),null!==this._popper&&this._popper.scheduleUpdate()},g._addEventListeners=function(){var t=this;e(this._element).on(l.CLICK,function(e){e.preventDefault(),e.stopPropagation(),t.toggle()})},g._getConfig=function(n){return n=a({},this.constructor.Default,e(this._element).data(),n),s.typeCheckConfig(t,n,this.constructor.DefaultType),n},g._getMenuElement=function(){if(!this._menu){var e=u._getParentFromElement(this._element);e&&(this._menu=e.querySelector(p.MENU))}return this._menu},g._getPlacement=function(){var t=e(this._element.parentNode),n=d.BOTTOM;return t.hasClass(f.DROPUP)?(n=d.TOP,e(this._menu).hasClass(f.MENURIGHT)&&(n=d.TOPEND)):t.hasClass(f.DROPRIGHT)?n=d.RIGHT:t.hasClass(f.DROPLEFT)?n=d.LEFT:e(this._menu).hasClass(f.MENURIGHT)&&(n=d.BOTTOMEND),n},g._detectNavbar=function(){return e(this._element).closest(".navbar").length>0},g._getPopperConfig=function(){var e=this,t={};"function"==typeof this._config.offset?t.fn=function(t){return t.offsets=a({},t.offsets,e._config.offset(t.offsets)||{}),t}:t.offset=this._config.offset;var n={placement:this._getPlacement(),modifiers:{offset:t,flip:{enabled:this._config.flip},preventOverflow:{boundariesElement:this._config.boundary}}};return"static"===this._config.display&&(n.modifiers.applyStyle={enabled:!1}),n},u._jQueryInterface=function(t){return this.each(function(){var n=e(this).data(r),i="object"==typeof t?t:null;if(n||(n=new u(this,i),e(this).data(r,n)),"string"==typeof t){if(void 0===n[t])throw new TypeError('No method named "'+t+'"');n[t]()}})},u._clearMenus=function(t){if(!t||3!==t.which&&("keyup"!==t.type||9===t.which))for(var n=[].slice.call(document.querySelectorAll(p.DATA_TOGGLE)),i=0,o=n.length;i<o;i++){var a=u._getParentFromElement(n[i]),s=e(n[i]).data(r),c={relatedTarget:n[i]};if(t&&"click"===t.type&&(c.clickEvent=t),s){var d=s._menu;if(e(a).hasClass(f.SHOW)&&!(t&&("click"===t.type&&/input|textarea/i.test(t.target.tagName)||"keyup"===t.type&&9===t.which)&&e.contains(a,t.target))){var h=e.Event(l.HIDE,c);e(a).trigger(h),h.isDefaultPrevented()||("ontouchstart"in document.documentElement&&e(document.body).children().off("mouseover",null,e.noop),n[i].setAttribute("aria-expanded","false"),e(d).removeClass(f.SHOW),e(a).removeClass(f.SHOW).trigger(e.Event(l.HIDDEN,c)))}}}},u._getParentFromElement=function(e){var t,n=s.getSelectorFromElement(e);return n&&(t=document.querySelector(n)),t||e.parentNode},u._dataApiKeydownHandler=function(t){if((/input|textarea/i.test(t.target.tagName)?!(32===t.which||27!==t.which&&(40!==t.which&&38!==t.which||e(t.target).closest(p.MENU).length)):c.test(t.which))&&(t.preventDefault(),t.stopPropagation(),!this.disabled&&!e(this).hasClass(f.DISABLED))){var n=u._getParentFromElement(this),r=e(n).hasClass(f.SHOW);if((r||27===t.which&&32===t.which)&&(!r||27!==t.which&&32!==t.which)){var i=[].slice.call(n.querySelectorAll(p.VISIBLE_ITEMS));if(0!==i.length){var o=i.indexOf(t.target);38===t.which&&o>0&&o--,40===t.which&&o<i.length-1&&o++,o<0&&(o=0),i[o].focus()}}else{if(27===t.which){var a=n.querySelector(p.DATA_TOGGLE);e(a).trigger("focus")}e(this).trigger("click")}}},i(u,null,[{key:"VERSION",get:function(){return"4.1.3"}},{key:"Default",get:function(){return h}},{key:"DefaultType",get:function(){return v}}]),u}();return e(document).on(l.KEYDOWN_DATA_API,p.DATA_TOGGLE,g._dataApiKeydownHandler).on(l.KEYDOWN_DATA_API,p.MENU,g._dataApiKeydownHandler).on(l.CLICK_DATA_API+" "+l.KEYUP_DATA_API,g._clearMenus).on(l.CLICK_DATA_API,p.DATA_TOGGLE,function(t){t.preventDefault(),t.stopPropagation(),g._jQueryInterface.call(e(this),"toggle")}).on(l.CLICK_DATA_API,p.FORM_CHILD,function(e){e.stopPropagation()}),e.fn[t]=g._jQueryInterface,e.fn[t].Constructor=g,e.fn[t].noConflict=function(){return e.fn[t]=u,g._jQueryInterface},g}(t),d=function(e){var t="modal",n=".bs.modal",r=e.fn.modal,o={backdrop:!0,keyboard:!0,focus:!0,show:!0},u={backdrop:"(boolean|string)",keyboard:"boolean",focus:"boolean",show:"boolean"},c={HIDE:"hide.bs.modal",HIDDEN:"hidden.bs.modal",SHOW:"show.bs.modal",SHOWN:"shown.bs.modal",FOCUSIN:"focusin.bs.modal",RESIZE:"resize.bs.modal",CLICK_DISMISS:"click.dismiss.bs.modal",KEYDOWN_DISMISS:"keydown.dismiss.bs.modal",MOUSEUP_DISMISS:"mouseup.dismiss.bs.modal",MOUSEDOWN_DISMISS:"mousedown.dismiss.bs.modal",CLICK_DATA_API:"click.bs.modal.data-api"},l={SCROLLBAR_MEASURER:"modal-scrollbar-measure",BACKDROP:"modal-backdrop",OPEN:"modal-open",FADE:"fade",SHOW:"show"},f={DIALOG:".modal-dialog",DATA_TOGGLE:'[data-toggle="modal"]',DATA_DISMISS:'[data-dismiss="modal"]',FIXED_CONTENT:".fixed-top, .fixed-bottom, .is-fixed, .sticky-top",STICKY_CONTENT:".sticky-top"},p=function(){function r(e,t){this._config=this._getConfig(t),this._element=e,this._dialog=e.querySelector(f.DIALOG),this._backdrop=null,this._isShown=!1,this._isBodyOverflowing=!1,this._ignoreBackdropClick=!1,this._scrollbarWidth=0}var p=r.prototype;return p.toggle=function(e){return this._isShown?this.hide():this.show(e)},p.show=function(t){var n=this;if(!this._isTransitioning&&!this._isShown){e(this._element).hasClass(l.FADE)&&(this._isTransitioning=!0);var r=e.Event(c.SHOW,{relatedTarget:t});e(this._element).trigger(r),this._isShown||r.isDefaultPrevented()||(this._isShown=!0,this._checkScrollbar(),this._setScrollbar(),this._adjustDialog(),e(document.body).addClass(l.OPEN),this._setEscapeEvent(),this._setResizeEvent(),e(this._element).on(c.CLICK_DISMISS,f.DATA_DISMISS,function(e){return n.hide(e)}),e(this._dialog).on(c.MOUSEDOWN_DISMISS,function(){e(n._element).one(c.MOUSEUP_DISMISS,function(t){e(t.target).is(n._element)&&(n._ignoreBackdropClick=!0)})}),this._showBackdrop(function(){return n._showElement(t)}))}},p.hide=function(t){var n=this;if(t&&t.preventDefault(),!this._isTransitioning&&this._isShown){var r=e.Event(c.HIDE);if(e(this._element).trigger(r),this._isShown&&!r.isDefaultPrevented()){this._isShown=!1;var i=e(this._element).hasClass(l.FADE);if(i&&(this._isTransitioning=!0),this._setEscapeEvent(),this._setResizeEvent(),e(document).off(c.FOCUSIN),e(this._element).removeClass(l.SHOW),e(this._element).off(c.CLICK_DISMISS),e(this._dialog).off(c.MOUSEDOWN_DISMISS),i){var o=s.getTransitionDurationFromElement(this._element);e(this._element).one(s.TRANSITION_END,function(e){return n._hideModal(e)}).emulateTransitionEnd(o)}else this._hideModal()}}},p.dispose=function(){e.removeData(this._element,"bs.modal"),e(window,document,this._element,this._backdrop).off(n),this._config=null,this._element=null,this._dialog=null,this._backdrop=null,this._isShown=null,this._isBodyOverflowing=null,this._ignoreBackdropClick=null,this._scrollbarWidth=null},p.handleUpdate=function(){this._adjustDialog()},p._getConfig=function(e){return e=a({},o,e),s.typeCheckConfig(t,e,u),e},p._showElement=function(t){var n=this,r=e(this._element).hasClass(l.FADE);this._element.parentNode&&this._element.parentNode.nodeType===Node.ELEMENT_NODE||document.body.appendChild(this._element),this._element.style.display="block",this._element.removeAttribute("aria-hidden"),this._element.scrollTop=0,r&&s.reflow(this._element),e(this._element).addClass(l.SHOW),this._config.focus&&this._enforceFocus();var i=e.Event(c.SHOWN,{relatedTarget:t}),o=function(){n._config.focus&&n._element.focus(),n._isTransitioning=!1,e(n._element).trigger(i)};if(r){var a=s.getTransitionDurationFromElement(this._element);e(this._dialog).one(s.TRANSITION_END,o).emulateTransitionEnd(a)}else o()},p._enforceFocus=function(){var t=this;e(document).off(c.FOCUSIN).on(c.FOCUSIN,function(n){document!==n.target&&t._element!==n.target&&0===e(t._element).has(n.target).length&&t._element.focus()})},p._setEscapeEvent=function(){var t=this;this._isShown&&this._config.keyboard?e(this._element).on(c.KEYDOWN_DISMISS,function(e){27===e.which&&(e.preventDefault(),t.hide())}):this._isShown||e(this._element).off(c.KEYDOWN_DISMISS)},p._setResizeEvent=function(){var t=this;this._isShown?e(window).on(c.RESIZE,function(e){return t.handleUpdate(e)}):e(window).off(c.RESIZE)},p._hideModal=function(){var t=this;this._element.style.display="none",this._element.setAttribute("aria-hidden",!0),this._isTransitioning=!1,this._showBackdrop(function(){e(document.body).removeClass(l.OPEN),t._resetAdjustments(),t._resetScrollbar(),e(t._element).trigger(c.HIDDEN)})},p._removeBackdrop=function(){this._backdrop&&(e(this._backdrop).remove(),this._backdrop=null)},p._showBackdrop=function(t){var n=this,r=e(this._element).hasClass(l.FADE)?l.FADE:"";if(this._isShown&&this._config.backdrop){if(this._backdrop=document.createElement("div"),this._backdrop.className=l.BACKDROP,r&&this._backdrop.classList.add(r),e(this._backdrop).appendTo(document.body),e(this._element).on(c.CLICK_DISMISS,function(e){n._ignoreBackdropClick?n._ignoreBackdropClick=!1:e.target===e.currentTarget&&("static"===n._config.backdrop?n._element.focus():n.hide())}),r&&s.reflow(this._backdrop),e(this._backdrop).addClass(l.SHOW),!t)return;if(!r)return void t();var i=s.getTransitionDurationFromElement(this._backdrop);e(this._backdrop).one(s.TRANSITION_END,t).emulateTransitionEnd(i)}else if(!this._isShown&&this._backdrop){e(this._backdrop).removeClass(l.SHOW);var o=function(){n._removeBackdrop(),t&&t()};if(e(this._element).hasClass(l.FADE)){var a=s.getTransitionDurationFromElement(this._backdrop);e(this._backdrop).one(s.TRANSITION_END,o).emulateTransitionEnd(a)}else o()}else t&&t()},p._adjustDialog=function(){var e=this._element.scrollHeight>document.documentElement.clientHeight;!this._isBodyOverflowing&&e&&(this._element.style.paddingLeft=this._scrollbarWidth+"px"),this._isBodyOverflowing&&!e&&(this._element.style.paddingRight=this._scrollbarWidth+"px")},p._resetAdjustments=function(){this._element.style.paddingLeft="",this._element.style.paddingRight=""},p._checkScrollbar=function(){var e=document.body.getBoundingClientRect();this._isBodyOverflowing=e.left+e.right<window.innerWidth,this._scrollbarWidth=this._getScrollbarWidth()},p._setScrollbar=function(){var t=this;if(this._isBodyOverflowing){var n=[].slice.call(document.querySelectorAll(f.FIXED_CONTENT)),r=[].slice.call(document.querySelectorAll(f.STICKY_CONTENT));e(n).each(function(n,r){var i=r.style.paddingRight,o=e(r).css("padding-right");e(r).data("padding-right",i).css("padding-right",parseFloat(o)+t._scrollbarWidth+"px")}),e(r).each(function(n,r){var i=r.style.marginRight,o=e(r).css("margin-right");e(r).data("margin-right",i).css("margin-right",parseFloat(o)-t._scrollbarWidth+"px")});var i=document.body.style.paddingRight,o=e(document.body).css("padding-right");e(document.body).data("padding-right",i).css("padding-right",parseFloat(o)+this._scrollbarWidth+"px")}},p._resetScrollbar=function(){var t=[].slice.call(document.querySelectorAll(f.FIXED_CONTENT));e(t).each(function(t,n){var r=e(n).data("padding-right");e(n).removeData("padding-right"),n.style.paddingRight=r||""});var n=[].slice.call(document.querySelectorAll(""+f.STICKY_CONTENT));e(n).each(function(t,n){var r=e(n).data("margin-right");void 0!==r&&e(n).css("margin-right",r).removeData("margin-right")});var r=e(document.body).data("padding-right");e(document.body).removeData("padding-right"),document.body.style.paddingRight=r||""},p._getScrollbarWidth=function(){var e=document.createElement("div");e.className=l.SCROLLBAR_MEASURER,document.body.appendChild(e);var t=e.getBoundingClientRect().width-e.clientWidth;return document.body.removeChild(e),t},r._jQueryInterface=function(t,n){return this.each(function(){var i=e(this).data("bs.modal"),s=a({},o,e(this).data(),"object"==typeof t&&t?t:{});if(i||(i=new r(this,s),e(this).data("bs.modal",i)),"string"==typeof t){if(void 0===i[t])throw new TypeError('No method named "'+t+'"');i[t](n)}else s.show&&i.show(n)})},i(r,null,[{key:"VERSION",get:function(){return"4.1.3"}},{key:"Default",get:function(){return o}}]),r}();return e(document).on(c.CLICK_DATA_API,f.DATA_TOGGLE,function(t){var n,r=this,i=s.getSelectorFromElement(this);i&&(n=document.querySelector(i));var o=e(n).data("bs.modal")?"toggle":a({},e(n).data(),e(this).data());"A"!==this.tagName&&"AREA"!==this.tagName||t.preventDefault();var u=e(n).one(c.SHOW,function(t){t.isDefaultPrevented()||u.one(c.HIDDEN,function(){e(r).is(":visible")&&r.focus()})});p._jQueryInterface.call(e(n),o,this)}),e.fn.modal=p._jQueryInterface,e.fn.modal.Constructor=p,e.fn.modal.noConflict=function(){return e.fn.modal=r,p._jQueryInterface},p}(t),h=function(e){var t="tooltip",r=".bs.tooltip",o=e.fn[t],u=new RegExp("(^|\\s)bs-tooltip\\S+","g"),c={animation:"boolean",template:"string",title:"(string|element|function)",trigger:"string",delay:"(number|object)",html:"boolean",selector:"(string|boolean)",placement:"(string|function)",offset:"(number|string)",container:"(string|element|boolean)",fallbackPlacement:"(string|array)",boundary:"(string|element)"},l={AUTO:"auto",TOP:"top",RIGHT:"right",BOTTOM:"bottom",LEFT:"left"},f={animation:!0,template:'<div class="tooltip" role="tooltip"><div class="arrow"></div><div class="tooltip-inner"></div></div>',trigger:"hover focus",title:"",delay:0,html:!1,selector:!1,placement:"top",offset:0,container:!1,fallbackPlacement:"flip",boundary:"scrollParent"},p={SHOW:"show",OUT:"out"},d={HIDE:"hide"+r,HIDDEN:"hidden"+r,SHOW:"show"+r,SHOWN:"shown"+r,INSERTED:"inserted"+r,CLICK:"click"+r,FOCUSIN:"focusin"+r,FOCUSOUT:"focusout"+r,MOUSEENTER:"mouseenter"+r,MOUSELEAVE:"mouseleave"+r},h={FADE:"fade",SHOW:"show"},v={TOOLTIP:".tooltip",TOOLTIP_INNER:".tooltip-inner",ARROW:".arrow"},g={HOVER:"hover",FOCUS:"focus",CLICK:"click",MANUAL:"manual"},m=function(){function o(e,t){if(void 0===n)throw new TypeError("Bootstrap tooltips require Popper.js (https://popper.js.org)");this._isEnabled=!0,this._timeout=0,this._hoverState="",this._activeTrigger={},this._popper=null,this.element=e,this.config=this._getConfig(t),this.tip=null,this._setListeners()}var m=o.prototype;return m.enable=function(){this._isEnabled=!0},m.disable=function(){this._isEnabled=!1},m.toggleEnabled=function(){this._isEnabled=!this._isEnabled},m.toggle=function(t){if(this._isEnabled)if(t){var n=this.constructor.DATA_KEY,r=e(t.currentTarget).data(n);r||(r=new this.constructor(t.currentTarget,this._getDelegateConfig()),e(t.currentTarget).data(n,r)),r._activeTrigger.click=!r._activeTrigger.click,r._isWithActiveTrigger()?r._enter(null,r):r._leave(null,r)}else{if(e(this.getTipElement()).hasClass(h.SHOW))return void this._leave(null,this);this._enter(null,this)}},m.dispose=function(){clearTimeout(this._timeout),e.removeData(this.element,this.constructor.DATA_KEY),e(this.element).off(this.constructor.EVENT_KEY),e(this.element).closest(".modal").off("hide.bs.modal"),this.tip&&e(this.tip).remove(),this._isEnabled=null,this._timeout=null,this._hoverState=null,this._activeTrigger=null,null!==this._popper&&this._popper.destroy(),this._popper=null,this.element=null,this.config=null,this.tip=null},m.show=function(){var t=this;if("none"===e(this.element).css("display"))throw new Error("Please use show on visible elements");var r=e.Event(this.constructor.Event.SHOW);if(this.isWithContent()&&this._isEnabled){e(this.element).trigger(r);var i=e.contains(this.element.ownerDocument.documentElement,this.element);if(r.isDefaultPrevented()||!i)return;var o=this.getTipElement(),a=s.getUID(this.constructor.NAME);o.setAttribute("id",a),this.element.setAttribute("aria-describedby",a),this.setContent(),this.config.animation&&e(o).addClass(h.FADE);var u="function"==typeof this.config.placement?this.config.placement.call(this,o,this.element):this.config.placement,c=this._getAttachment(u);this.addAttachmentClass(c);var l=!1===this.config.container?document.body:e(document).find(this.config.container);e(o).data(this.constructor.DATA_KEY,this),e.contains(this.element.ownerDocument.documentElement,this.tip)||e(o).appendTo(l),e(this.element).trigger(this.constructor.Event.INSERTED),this._popper=new n(this.element,o,{placement:c,modifiers:{offset:{offset:this.config.offset},flip:{behavior:this.config.fallbackPlacement},arrow:{element:v.ARROW},preventOverflow:{boundariesElement:this.config.boundary}},onCreate:function(e){e.originalPlacement!==e.placement&&t._handlePopperPlacementChange(e)},onUpdate:function(e){t._handlePopperPlacementChange(e)}}),e(o).addClass(h.SHOW),"ontouchstart"in document.documentElement&&e(document.body).children().on("mouseover",null,e.noop);var f=function(){t.config.animation&&t._fixTransition();var n=t._hoverState;t._hoverState=null,e(t.element).trigger(t.constructor.Event.SHOWN),n===p.OUT&&t._leave(null,t)};if(e(this.tip).hasClass(h.FADE)){var d=s.getTransitionDurationFromElement(this.tip);e(this.tip).one(s.TRANSITION_END,f).emulateTransitionEnd(d)}else f()}},m.hide=function(t){var n=this,r=this.getTipElement(),i=e.Event(this.constructor.Event.HIDE),o=function(){n._hoverState!==p.SHOW&&r.parentNode&&r.parentNode.removeChild(r),n._cleanTipClass(),n.element.removeAttribute("aria-describedby"),e(n.element).trigger(n.constructor.Event.HIDDEN),null!==n._popper&&n._popper.destroy(),t&&t()};if(e(this.element).trigger(i),!i.isDefaultPrevented()){if(e(r).removeClass(h.SHOW),"ontouchstart"in document.documentElement&&e(document.body).children().off("mouseover",null,e.noop),this._activeTrigger[g.CLICK]=!1,this._activeTrigger[g.FOCUS]=!1,this._activeTrigger[g.HOVER]=!1,e(this.tip).hasClass(h.FADE)){var a=s.getTransitionDurationFromElement(r);e(r).one(s.TRANSITION_END,o).emulateTransitionEnd(a)}else o();this._hoverState=""}},m.update=function(){null!==this._popper&&this._popper.scheduleUpdate()},m.isWithContent=function(){return Boolean(this.getTitle())},m.addAttachmentClass=function(t){e(this.getTipElement()).addClass("bs-tooltip-"+t)},m.getTipElement=function(){return this.tip=this.tip||e(this.config.template)[0],this.tip},m.setContent=function(){var t=this.getTipElement();this.setElementContent(e(t.querySelectorAll(v.TOOLTIP_INNER)),this.getTitle()),e(t).removeClass(h.FADE+" "+h.SHOW)},m.setElementContent=function(t,n){var r=this.config.html;"object"==typeof n&&(n.nodeType||n.jquery)?r?e(n).parent().is(t)||t.empty().append(n):t.text(e(n).text()):t[r?"html":"text"](n)},m.getTitle=function(){var e=this.element.getAttribute("data-original-title");return e||(e="function"==typeof this.config.title?this.config.title.call(this.element):this.config.title),e},m._getAttachment=function(e){return l[e.toUpperCase()]},m._setListeners=function(){var t=this,n=this.config.trigger.split(" ");n.forEach(function(n){if("click"===n)e(t.element).on(t.constructor.Event.CLICK,t.config.selector,function(e){return t.toggle(e)});else if(n!==g.MANUAL){var r=n===g.HOVER?t.constructor.Event.MOUSEENTER:t.constructor.Event.FOCUSIN,i=n===g.HOVER?t.constructor.Event.MOUSELEAVE:t.constructor.Event.FOCUSOUT;e(t.element).on(r,t.config.selector,function(e){return t._enter(e)}).on(i,t.config.selector,function(e){return t._leave(e)})}e(t.element).closest(".modal").on("hide.bs.modal",function(){return t.hide()})}),this.config.selector?this.config=a({},this.config,{trigger:"manual",selector:""}):this._fixTitle()},m._fixTitle=function(){var e=typeof this.element.getAttribute("data-original-title");(this.element.getAttribute("title")||"string"!==e)&&(this.element.setAttribute("data-original-title",this.element.getAttribute("title")||""),this.element.setAttribute("title",""))},m._enter=function(t,n){var r=this.constructor.DATA_KEY;(n=n||e(t.currentTarget).data(r))||(n=new this.constructor(t.currentTarget,this._getDelegateConfig()),e(t.currentTarget).data(r,n)),t&&(n._activeTrigger["focusin"===t.type?g.FOCUS:g.HOVER]=!0),e(n.getTipElement()).hasClass(h.SHOW)||n._hoverState===p.SHOW?n._hoverState=p.SHOW:(clearTimeout(n._timeout),n._hoverState=p.SHOW,n.config.delay&&n.config.delay.show?n._timeout=setTimeout(function(){n._hoverState===p.SHOW&&n.show()},n.config.delay.show):n.show())},m._leave=function(t,n){var r=this.constructor.DATA_KEY;(n=n||e(t.currentTarget).data(r))||(n=new this.constructor(t.currentTarget,this._getDelegateConfig()),e(t.currentTarget).data(r,n)),t&&(n._activeTrigger["focusout"===t.type?g.FOCUS:g.HOVER]=!1),n._isWithActiveTrigger()||(clearTimeout(n._timeout),n._hoverState=p.OUT,n.config.delay&&n.config.delay.hide?n._timeout=setTimeout(function(){n._hoverState===p.OUT&&n.hide()},n.config.delay.hide):n.hide())},m._isWithActiveTrigger=function(){for(var e in this._activeTrigger)if(this._activeTrigger[e])return!0;return!1},m._getConfig=function(n){return"number"==typeof(n=a({},this.constructor.Default,e(this.element).data(),"object"==typeof n&&n?n:{})).delay&&(n.delay={show:n.delay,hide:n.delay}),"number"==typeof n.title&&(n.title=n.title.toString()),"number"==typeof n.content&&(n.content=n.content.toString()),s.typeCheckConfig(t,n,this.constructor.DefaultType),n},m._getDelegateConfig=function(){var e={};if(this.config)for(var t in this.config)this.constructor.Default[t]!==this.config[t]&&(e[t]=this.config[t]);return e},m._cleanTipClass=function(){var t=e(this.getTipElement()),n=t.attr("class").match(u);null!==n&&n.length&&t.removeClass(n.join(""))},m._handlePopperPlacementChange=function(e){var t=e.instance;this.tip=t.popper,this._cleanTipClass(),this.addAttachmentClass(this._getAttachment(e.placement))},m._fixTransition=function(){var t=this.getTipElement(),n=this.config.animation;null===t.getAttribute("x-placement")&&(e(t).removeClass(h.FADE),this.config.animation=!1,this.hide(),this.show(),this.config.animation=n)},o._jQueryInterface=function(t){return this.each(function(){var n=e(this).data("bs.tooltip"),r="object"==typeof t&&t;if((n||!/dispose|hide/.test(t))&&(n||(n=new o(this,r),e(this).data("bs.tooltip",n)),"string"==typeof t)){if(void 0===n[t])throw new TypeError('No method named "'+t+'"');n[t]()}})},i(o,null,[{key:"VERSION",get:function(){return"4.1.3"}},{key:"Default",get:function(){return f}},{key:"NAME",get:function(){return t}},{key:"DATA_KEY",get:function(){return"bs.tooltip"}},{key:"Event",get:function(){return d}},{key:"EVENT_KEY",get:function(){return r}},{key:"DefaultType",get:function(){return c}}]),o}();return e.fn[t]=m._jQueryInterface,e.fn[t].Constructor=m,e.fn[t].noConflict=function(){return e.fn[t]=o,m._jQueryInterface},m}(t),v=function(e){var t="popover",n=".bs.popover",r=e.fn[t],o=new RegExp("(^|\\s)bs-popover\\S+","g"),s=a({},h.Default,{placement:"right",trigger:"click",content:"",template:'<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>'}),u=a({},h.DefaultType,{content:"(string|element|function)"}),c={FADE:"fade",SHOW:"show"},l={TITLE:".popover-header",CONTENT:".popover-body"},f={HIDE:"hide"+n,HIDDEN:"hidden"+n,SHOW:"show"+n,SHOWN:"shown"+n,INSERTED:"inserted"+n,CLICK:"click"+n,FOCUSIN:"focusin"+n,FOCUSOUT:"focusout"+n,MOUSEENTER:"mouseenter"+n,MOUSELEAVE:"mouseleave"+n},p=function(r){var a,p;function d(){return r.apply(this,arguments)||this}p=r,(a=d).prototype=Object.create(p.prototype),a.prototype.constructor=a,a.__proto__=p;var h=d.prototype;return h.isWithContent=function(){return this.getTitle()||this._getContent()},h.addAttachmentClass=function(t){e(this.getTipElement()).addClass("bs-popover-"+t)},h.getTipElement=function(){return this.tip=this.tip||e(this.config.template)[0],this.tip},h.setContent=function(){var t=e(this.getTipElement());this.setElementContent(t.find(l.TITLE),this.getTitle());var n=this._getContent();"function"==typeof n&&(n=n.call(this.element)),this.setElementContent(t.find(l.CONTENT),n),t.removeClass(c.FADE+" "+c.SHOW)},h._getContent=function(){return this.element.getAttribute("data-content")||this.config.content},h._cleanTipClass=function(){var t=e(this.getTipElement()),n=t.attr("class").match(o);null!==n&&n.length>0&&t.removeClass(n.join(""))},d._jQueryInterface=function(t){return this.each(function(){var n=e(this).data("bs.popover"),r="object"==typeof t?t:null;if((n||!/destroy|hide/.test(t))&&(n||(n=new d(this,r),e(this).data("bs.popover",n)),"string"==typeof t)){if(void 0===n[t])throw new TypeError('No method named "'+t+'"');n[t]()}})},i(d,null,[{key:"VERSION",get:function(){return"4.1.3"}},{key:"Default",get:function(){return s}},{key:"NAME",get:function(){return t}},{key:"DATA_KEY",get:function(){return"bs.popover"}},{key:"Event",get:function(){return f}},{key:"EVENT_KEY",get:function(){return n}},{key:"DefaultType",get:function(){return u}}]),d}(h);return e.fn[t]=p._jQueryInterface,e.fn[t].Constructor=p,e.fn[t].noConflict=function(){return e.fn[t]=r,p._jQueryInterface},p}(t),g=function(e){var t="scrollspy",n=e.fn[t],r={offset:10,method:"auto",target:""},o={offset:"number",method:"string",target:"(string|element)"},u={ACTIVATE:"activate.bs.scrollspy",SCROLL:"scroll.bs.scrollspy",LOAD_DATA_API:"load.bs.scrollspy.data-api"},c={DROPDOWN_ITEM:"dropdown-item",DROPDOWN_MENU:"dropdown-menu",ACTIVE:"active"},l={DATA_SPY:'[data-spy="scroll"]',ACTIVE:".active",NAV_LIST_GROUP:".nav, .list-group",NAV_LINKS:".nav-link",NAV_ITEMS:".nav-item",LIST_ITEMS:".list-group-item",DROPDOWN:".dropdown",DROPDOWN_ITEMS:".dropdown-item",DROPDOWN_TOGGLE:".dropdown-toggle"},f={OFFSET:"offset",POSITION:"position"},p=function(){function n(t,n){var r=this;this._element=t,this._scrollElement="BODY"===t.tagName?window:t,this._config=this._getConfig(n),this._selector=this._config.target+" "+l.NAV_LINKS+","+this._config.target+" "+l.LIST_ITEMS+","+this._config.target+" "+l.DROPDOWN_ITEMS,this._offsets=[],this._targets=[],this._activeTarget=null,this._scrollHeight=0,e(this._scrollElement).on(u.SCROLL,function(e){return r._process(e)}),this.refresh(),this._process()}var p=n.prototype;return p.refresh=function(){var t=this,n=this._scrollElement===this._scrollElement.window?f.OFFSET:f.POSITION,r="auto"===this._config.method?n:this._config.method,i=r===f.POSITION?this._getScrollTop():0;this._offsets=[],this._targets=[],this._scrollHeight=this._getScrollHeight();var o=[].slice.call(document.querySelectorAll(this._selector));o.map(function(t){var n,o=s.getSelectorFromElement(t);if(o&&(n=document.querySelector(o)),n){var a=n.getBoundingClientRect();if(a.width||a.height)return[e(n)[r]().top+i,o]}return null}).filter(function(e){return e}).sort(function(e,t){return e[0]-t[0]}).forEach(function(e){t._offsets.push(e[0]),t._targets.push(e[1])})},p.dispose=function(){e.removeData(this._element,"bs.scrollspy"),e(this._scrollElement).off(".bs.scrollspy"),this._element=null,this._scrollElement=null,this._config=null,this._selector=null,this._offsets=null,this._targets=null,this._activeTarget=null,this._scrollHeight=null},p._getConfig=function(n){if("string"!=typeof(n=a({},r,"object"==typeof n&&n?n:{})).target){var i=e(n.target).attr("id");i||(i=s.getUID(t),e(n.target).attr("id",i)),n.target="#"+i}return s.typeCheckConfig(t,n,o),n},p._getScrollTop=function(){return this._scrollElement===window?this._scrollElement.pageYOffset:this._scrollElement.scrollTop},p._getScrollHeight=function(){return this._scrollElement.scrollHeight||Math.max(document.body.scrollHeight,document.documentElement.scrollHeight)},p._getOffsetHeight=function(){return this._scrollElement===window?window.innerHeight:this._scrollElement.getBoundingClientRect().height},p._process=function(){var e=this._getScrollTop()+this._config.offset,t=this._getScrollHeight(),n=this._config.offset+t-this._getOffsetHeight();if(this._scrollHeight!==t&&this.refresh(),e>=n){var r=this._targets[this._targets.length-1];this._activeTarget!==r&&this._activate(r)}else{if(this._activeTarget&&e<this._offsets[0]&&this._offsets[0]>0)return this._activeTarget=null,void this._clear();for(var i=this._offsets.length,o=i;o--;){var a=this._activeTarget!==this._targets[o]&&e>=this._offsets[o]&&(void 0===this._offsets[o+1]||e<this._offsets[o+1]);a&&this._activate(this._targets[o])}}},p._activate=function(t){this._activeTarget=t,this._clear();var n=this._selector.split(",");n=n.map(function(e){return e+'[data-target="'+t+'"],'+e+'[href="'+t+'"]'});var r=e([].slice.call(document.querySelectorAll(n.join(","))));r.hasClass(c.DROPDOWN_ITEM)?(r.closest(l.DROPDOWN).find(l.DROPDOWN_TOGGLE).addClass(c.ACTIVE),r.addClass(c.ACTIVE)):(r.addClass(c.ACTIVE),r.parents(l.NAV_LIST_GROUP).prev(l.NAV_LINKS+", "+l.LIST_ITEMS).addClass(c.ACTIVE),r.parents(l.NAV_LIST_GROUP).prev(l.NAV_ITEMS).children(l.NAV_LINKS).addClass(c.ACTIVE)),e(this._scrollElement).trigger(u.ACTIVATE,{relatedTarget:t})},p._clear=function(){var t=[].slice.call(document.querySelectorAll(this._selector));e(t).filter(l.ACTIVE).removeClass(c.ACTIVE)},n._jQueryInterface=function(t){return this.each(function(){var r=e(this).data("bs.scrollspy"),i="object"==typeof t&&t;if(r||(r=new n(this,i),e(this).data("bs.scrollspy",r)),"string"==typeof t){if(void 0===r[t])throw new TypeError('No method named "'+t+'"');r[t]()}})},i(n,null,[{key:"VERSION",get:function(){return"4.1.3"}},{key:"Default",get:function(){return r}}]),n}();return e(window).on(u.LOAD_DATA_API,function(){for(var t=[].slice.call(document.querySelectorAll(l.DATA_SPY)),n=t.length,r=n;r--;){var i=e(t[r]);p._jQueryInterface.call(i,i.data())}}),e.fn[t]=p._jQueryInterface,e.fn[t].Constructor=p,e.fn[t].noConflict=function(){return e.fn[t]=n,p._jQueryInterface},p}(t),m=function(e){var t=e.fn.tab,n={HIDE:"hide.bs.tab",HIDDEN:"hidden.bs.tab",SHOW:"show.bs.tab",SHOWN:"shown.bs.tab",CLICK_DATA_API:"click.bs.tab.data-api"},r={DROPDOWN_MENU:"dropdown-menu",ACTIVE:"active",DISABLED:"disabled",FADE:"fade",SHOW:"show"},o={DROPDOWN:".dropdown",NAV_LIST_GROUP:".nav, .list-group",ACTIVE:".active",ACTIVE_UL:"> li > .active",DATA_TOGGLE:'[data-toggle="tab"], [data-toggle="pill"], [data-toggle="list"]',DROPDOWN_TOGGLE:".dropdown-toggle",DROPDOWN_ACTIVE_CHILD:"> .dropdown-menu .active"},a=function(){function t(e){this._element=e}var a=t.prototype;return a.show=function(){var t=this;if(!(this._element.parentNode&&this._element.parentNode.nodeType===Node.ELEMENT_NODE&&e(this._element).hasClass(r.ACTIVE)||e(this._element).hasClass(r.DISABLED))){var i,a,u=e(this._element).closest(o.NAV_LIST_GROUP)[0],c=s.getSelectorFromElement(this._element);if(u){var l="UL"===u.nodeName?o.ACTIVE_UL:o.ACTIVE;a=(a=e.makeArray(e(u).find(l)))[a.length-1]}var f=e.Event(n.HIDE,{relatedTarget:this._element}),p=e.Event(n.SHOW,{relatedTarget:a});if(a&&e(a).trigger(f),e(this._element).trigger(p),!p.isDefaultPrevented()&&!f.isDefaultPrevented()){c&&(i=document.querySelector(c)),this._activate(this._element,u);var d=function(){var r=e.Event(n.HIDDEN,{relatedTarget:t._element}),i=e.Event(n.SHOWN,{relatedTarget:a});e(a).trigger(r),e(t._element).trigger(i)};i?this._activate(i,i.parentNode,d):d()}}},a.dispose=function(){e.removeData(this._element,"bs.tab"),this._element=null},a._activate=function(t,n,i){var a=this,u=("UL"===n.nodeName?e(n).find(o.ACTIVE_UL):e(n).children(o.ACTIVE))[0],c=i&&u&&e(u).hasClass(r.FADE),l=function(){return a._transitionComplete(t,u,i)};if(u&&c){var f=s.getTransitionDurationFromElement(u);e(u).one(s.TRANSITION_END,l).emulateTransitionEnd(f)}else l()},a._transitionComplete=function(t,n,i){if(n){e(n).removeClass(r.SHOW+" "+r.ACTIVE);var a=e(n.parentNode).find(o.DROPDOWN_ACTIVE_CHILD)[0];a&&e(a).removeClass(r.ACTIVE),"tab"===n.getAttribute("role")&&n.setAttribute("aria-selected",!1)}if(e(t).addClass(r.ACTIVE),"tab"===t.getAttribute("role")&&t.setAttribute("aria-selected",!0),s.reflow(t),e(t).addClass(r.SHOW),t.parentNode&&e(t.parentNode).hasClass(r.DROPDOWN_MENU)){var u=e(t).closest(o.DROPDOWN)[0];if(u){var c=[].slice.call(u.querySelectorAll(o.DROPDOWN_TOGGLE));e(c).addClass(r.ACTIVE)}t.setAttribute("aria-expanded",!0)}i&&i()},t._jQueryInterface=function(n){return this.each(function(){var r=e(this),i=r.data("bs.tab");if(i||(i=new t(this),r.data("bs.tab",i)),"string"==typeof n){if(void 0===i[n])throw new TypeError('No method named "'+n+'"');i[n]()}})},i(t,null,[{key:"VERSION",get:function(){return"4.1.3"}}]),t}();return e(document).on(n.CLICK_DATA_API,o.DATA_TOGGLE,function(t){t.preventDefault(),a._jQueryInterface.call(e(this),"show")}),e.fn.tab=a._jQueryInterface,e.fn.tab.Constructor=a,e.fn.tab.noConflict=function(){return e.fn.tab=t,a._jQueryInterface},a}(t);(function(e){if(void 0===e)throw new TypeError("Bootstrap's JavaScript requires jQuery. jQuery must be included before Bootstrap's JavaScript.");var t=e.fn.jquery.split(" ")[0].split(".");if(t[0]<2&&t[1]<9||1===t[0]&&9===t[1]&&t[2]<1||t[0]>=4)throw new Error("Bootstrap's JavaScript requires at least jQuery v1.9.1 but less than v4.0.0")})(t),e.Util=s,e.Alert=u,e.Button=c,e.Carousel=l,e.Collapse=f,e.Dropdown=p,e.Modal=d,e.Popover=v,e.Scrollspy=g,e.Tab=m,e.Tooltip=h,Object.defineProperty(e,"__esModule",{value:!0})}(t,n(4),n(3))},function(e,t,n){e.exports=n(18)},function(e,t,n){"use strict";var r=n(0),i=n(5),o=n(20),a=n(2);function s(e){var t=new o(e),n=i(o.prototype.request,t);return r.extend(n,o.prototype,t),r.extend(n,t),n}var u=s(a);u.Axios=o,u.create=function(e){return s(r.merge(a,e))},u.Cancel=n(10),u.CancelToken=n(34),u.isCancel=n(9),u.all=function(e){return Promise.all(e)},u.spread=n(35),e.exports=u,e.exports.default=u},function(e,t){function n(e){return!!e.constructor&&"function"==typeof e.constructor.isBuffer&&e.constructor.isBuffer(e)}e.exports=function(e){return null!=e&&(n(e)||function(e){return"function"==typeof e.readFloatLE&&"function"==typeof e.slice&&n(e.slice(0,0))}(e)||!!e._isBuffer)}},function(e,t,n){"use strict";var r=n(2),i=n(0),o=n(29),a=n(30);function s(e){this.defaults=e,this.interceptors={request:new o,response:new o}}s.prototype.request=function(e){"string"==typeof e&&(e=i.merge({url:arguments[0]},arguments[1])),(e=i.merge(r,{method:"get"},this.defaults,e)).method=e.method.toLowerCase();var t=[a,void 0],n=Promise.resolve(e);for(this.interceptors.request.forEach(function(e){t.unshift(e.fulfilled,e.rejected)}),this.interceptors.response.forEach(function(e){t.push(e.fulfilled,e.rejected)});t.length;)n=n.then(t.shift(),t.shift());return n},i.forEach(["delete","get","head","options"],function(e){s.prototype[e]=function(t,n){return this.request(i.merge(n||{},{method:e,url:t}))}}),i.forEach(["post","put","patch"],function(e){s.prototype[e]=function(t,n,r){return this.request(i.merge(r||{},{method:e,url:t,data:n}))}}),e.exports=s},function(e,t,n){"use strict";var r=n(0);e.exports=function(e,t){r.forEach(e,function(n,r){r!==t&&r.toUpperCase()===t.toUpperCase()&&(e[t]=n,delete e[r])})}},function(e,t,n){"use strict";var r=n(8);e.exports=function(e,t,n){var i=n.config.validateStatus;n.status&&i&&!i(n.status)?t(r("Request failed with status code "+n.status,n.config,null,n.request,n)):e(n)}},function(e,t,n){"use strict";e.exports=function(e,t,n,r,i){return e.config=t,n&&(e.code=n),e.request=r,e.response=i,e}},function(e,t,n){"use strict";var r=n(0);function i(e){return encodeURIComponent(e).replace(/%40/gi,"@").replace(/%3A/gi,":").replace(/%24/g,"$").replace(/%2C/gi,",").replace(/%20/g,"+").replace(/%5B/gi,"[").replace(/%5D/gi,"]")}e.exports=function(e,t,n){if(!t)return e;var o;if(n)o=n(t);else if(r.isURLSearchParams(t))o=t.toString();else{var a=[];r.forEach(t,function(e,t){null!=e&&(r.isArray(e)?t+="[]":e=[e],r.forEach(e,function(e){r.isDate(e)?e=e.toISOString():r.isObject(e)&&(e=JSON.stringify(e)),a.push(i(t)+"="+i(e))}))}),o=a.join("&")}return o&&(e+=(-1===e.indexOf("?")?"?":"&")+o),e}},function(e,t,n){"use strict";var r=n(0),i=["age","authorization","content-length","content-type","etag","expires","from","host","if-modified-since","if-unmodified-since","last-modified","location","max-forwards","proxy-authorization","referer","retry-after","user-agent"];e.exports=function(e){var t,n,o,a={};return e?(r.forEach(e.split("\n"),function(e){if(o=e.indexOf(":"),t=r.trim(e.substr(0,o)).toLowerCase(),n=r.trim(e.substr(o+1)),t){if(a[t]&&i.indexOf(t)>=0)return;a[t]="set-cookie"===t?(a[t]?a[t]:[]).concat([n]):a[t]?a[t]+", "+n:n}}),a):a}},function(e,t,n){"use strict";var r=n(0);e.exports=r.isStandardBrowserEnv()?function(){var e,t=/(msie|trident)/i.test(navigator.userAgent),n=document.createElement("a");function i(e){var r=e;return t&&(n.setAttribute("href",r),r=n.href),n.setAttribute("href",r),{href:n.href,protocol:n.protocol?n.protocol.replace(/:$/,""):"",host:n.host,search:n.search?n.search.replace(/^\?/,""):"",hash:n.hash?n.hash.replace(/^#/,""):"",hostname:n.hostname,port:n.port,pathname:"/"===n.pathname.charAt(0)?n.pathname:"/"+n.pathname}}return e=i(window.location.href),function(t){var n=r.isString(t)?i(t):t;return n.protocol===e.protocol&&n.host===e.host}}():function(){return!0}},function(e,t,n){"use strict";var r="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";function i(){this.message="String contains an invalid character"}i.prototype=new Error,i.prototype.code=5,i.prototype.name="InvalidCharacterError",e.exports=function(e){for(var t,n,o=String(e),a="",s=0,u=r;o.charAt(0|s)||(u="=",s%1);a+=u.charAt(63&t>>8-s%1*8)){if((n=o.charCodeAt(s+=.75))>255)throw new i;t=t<<8|n}return a}},function(e,t,n){"use strict";var r=n(0);e.exports=r.isStandardBrowserEnv()?{write:function(e,t,n,i,o,a){var s=[];s.push(e+"="+encodeURIComponent(t)),r.isNumber(n)&&s.push("expires="+new Date(n).toGMTString()),r.isString(i)&&s.push("path="+i),r.isString(o)&&s.push("domain="+o),!0===a&&s.push("secure"),document.cookie=s.join("; ")},read:function(e){var t=document.cookie.match(new RegExp("(^|;\\s*)("+e+")=([^;]*)"));return t?decodeURIComponent(t[3]):null},remove:function(e){this.write(e,"",Date.now()-864e5)}}:{write:function(){},read:function(){return null},remove:function(){}}},function(e,t,n){"use strict";var r=n(0);function i(){this.handlers=[]}i.prototype.use=function(e,t){return this.handlers.push({fulfilled:e,rejected:t}),this.handlers.length-1},i.prototype.eject=function(e){this.handlers[e]&&(this.handlers[e]=null)},i.prototype.forEach=function(e){r.forEach(this.handlers,function(t){null!==t&&e(t)})},e.exports=i},function(e,t,n){"use strict";var r=n(0),i=n(31),o=n(9),a=n(2),s=n(32),u=n(33);function c(e){e.cancelToken&&e.cancelToken.throwIfRequested()}e.exports=function(e){return c(e),e.baseURL&&!s(e.url)&&(e.url=u(e.baseURL,e.url)),e.headers=e.headers||{},e.data=i(e.data,e.headers,e.transformRequest),e.headers=r.merge(e.headers.common||{},e.headers[e.method]||{},e.headers||{}),r.forEach(["delete","get","head","post","put","patch","common"],function(t){delete e.headers[t]}),(e.adapter||a.adapter)(e).then(function(t){return c(e),t.data=i(t.data,t.headers,e.transformResponse),t},function(t){return o(t)||(c(e),t&&t.response&&(t.response.data=i(t.response.data,t.response.headers,e.transformResponse))),Promise.reject(t)})}},function(e,t,n){"use strict";var r=n(0);e.exports=function(e,t,n){return r.forEach(n,function(n){e=n(e,t)}),e}},function(e,t,n){"use strict";e.exports=function(e){return/^([a-z][a-z\d\+\-\.]*:)?\/\//i.test(e)}},function(e,t,n){"use strict";e.exports=function(e,t){return t?e.replace(/\/+$/,"")+"/"+t.replace(/^\/+/,""):e}},function(e,t,n){"use strict";var r=n(10);function i(e){if("function"!=typeof e)throw new TypeError("executor must be a function.");var t;this.promise=new Promise(function(e){t=e});var n=this;e(function(e){n.reason||(n.reason=new r(e),t(n.reason))})}i.prototype.throwIfRequested=function(){if(this.reason)throw this.reason},i.source=function(){var e;return{token:new i(function(t){e=t}),cancel:e}},e.exports=i},function(e,t,n){"use strict";e.exports=function(e){return function(t){return e.apply(null,t)}}},function(e,t,n){"use strict";(function(t,n){var r=Object.freeze({});function i(e){return null==e}function o(e){return null!=e}function a(e){return!0===e}function s(e){return"string"==typeof e||"number"==typeof e||"symbol"==typeof e||"boolean"==typeof e}function u(e){return null!==e&&"object"==typeof e}var c=Object.prototype.toString;function l(e){return"[object Object]"===c.call(e)}function f(e){return"[object RegExp]"===c.call(e)}function p(e){var t=parseFloat(String(e));return t>=0&&Math.floor(t)===t&&isFinite(e)}function d(e){return null==e?"":"object"==typeof e?JSON.stringify(e,null,2):String(e)}function h(e){var t=parseFloat(e);return isNaN(t)?e:t}function v(e,t){for(var n=Object.create(null),r=e.split(","),i=0;i<r.length;i++)n[r[i]]=!0;return t?function(e){return n[e.toLowerCase()]}:function(e){return n[e]}}var g=v("slot,component",!0),m=v("key,ref,slot,slot-scope,is");function y(e,t){if(e.length){var n=e.indexOf(t);if(n>-1)return e.splice(n,1)}}var _=Object.prototype.hasOwnProperty;function b(e,t){return _.call(e,t)}function w(e){var t=Object.create(null);return function(n){return t[n]||(t[n]=e(n))}}var T=/-(\w)/g,E=w(function(e){return e.replace(T,function(e,t){return t?t.toUpperCase():""})}),x=w(function(e){return e.charAt(0).toUpperCase()+e.slice(1)}),C=/\B([A-Z])/g,A=w(function(e){return e.replace(C,"-$1").toLowerCase()});var S=Function.prototype.bind?function(e,t){return e.bind(t)}:function(e,t){function n(n){var r=arguments.length;return r?r>1?e.apply(t,arguments):e.call(t,n):e.call(t)}return n._length=e.length,n};function O(e,t){t=t||0;for(var n=e.length-t,r=new Array(n);n--;)r[n]=e[n+t];return r}function D(e,t){for(var n in t)e[n]=t[n];return e}function I(e){for(var t={},n=0;n<e.length;n++)e[n]&&D(t,e[n]);return t}function k(e,t,n){}var N=function(e,t,n){return!1},L=function(e){return e};function j(e,t){if(e===t)return!0;var n=u(e),r=u(t);if(!n||!r)return!n&&!r&&String(e)===String(t);try{var i=Array.isArray(e),o=Array.isArray(t);if(i&&o)return e.length===t.length&&e.every(function(e,n){return j(e,t[n])});if(e instanceof Date&&t instanceof Date)return e.getTime()===t.getTime();if(i||o)return!1;var a=Object.keys(e),s=Object.keys(t);return a.length===s.length&&a.every(function(n){return j(e[n],t[n])})}catch(e){return!1}}function P(e,t){for(var n=0;n<e.length;n++)if(j(e[n],t))return n;return-1}function R(e){var t=!1;return function(){t||(t=!0,e.apply(this,arguments))}}var $="data-server-rendered",H=["component","directive","filter"],M=["beforeCreate","created","beforeMount","mounted","beforeUpdate","updated","beforeDestroy","destroyed","activated","deactivated","errorCaptured"],F={optionMergeStrategies:Object.create(null),silent:!1,productionTip:!1,devtools:!1,performance:!1,errorHandler:null,warnHandler:null,ignoredElements:[],keyCodes:Object.create(null),isReservedTag:N,isReservedAttr:N,isUnknownElement:N,getTagNamespace:k,parsePlatformTagName:L,mustUseProp:N,async:!0,_lifecycleHooks:M};function W(e,t,n,r){Object.defineProperty(e,t,{value:n,enumerable:!!r,writable:!0,configurable:!0})}var q=/[^\w.$]/;var B,U="__proto__"in{},V="undefined"!=typeof window,z="undefined"!=typeof WXEnvironment&&!!WXEnvironment.platform,K=z&&WXEnvironment.platform.toLowerCase(),G=V&&window.navigator.userAgent.toLowerCase(),X=G&&/msie|trident/.test(G),Q=G&&G.indexOf("msie 9.0")>0,Y=G&&G.indexOf("edge/")>0,J=(G&&G.indexOf("android"),G&&/iphone|ipad|ipod|ios/.test(G)||"ios"===K),Z=(G&&/chrome\/\d+/.test(G),{}.watch),ee=!1;if(V)try{var te={};Object.defineProperty(te,"passive",{get:function(){ee=!0}}),window.addEventListener("test-passive",null,te)}catch(e){}var ne=function(){return void 0===B&&(B=!V&&!z&&void 0!==t&&(t.process&&"server"===t.process.env.VUE_ENV)),B},re=V&&window.__VUE_DEVTOOLS_GLOBAL_HOOK__;function ie(e){return"function"==typeof e&&/native code/.test(e.toString())}var oe,ae="undefined"!=typeof Symbol&&ie(Symbol)&&"undefined"!=typeof Reflect&&ie(Reflect.ownKeys);oe="undefined"!=typeof Set&&ie(Set)?Set:function(){function e(){this.set=Object.create(null)}return e.prototype.has=function(e){return!0===this.set[e]},e.prototype.add=function(e){this.set[e]=!0},e.prototype.clear=function(){this.set=Object.create(null)},e}();var se=k,ue=0,ce=function(){this.id=ue++,this.subs=[]};ce.prototype.addSub=function(e){this.subs.push(e)},ce.prototype.removeSub=function(e){y(this.subs,e)},ce.prototype.depend=function(){ce.target&&ce.target.addDep(this)},ce.prototype.notify=function(){var e=this.subs.slice();for(var t=0,n=e.length;t<n;t++)e[t].update()},ce.target=null;var le=[];function fe(e){le.push(e),ce.target=e}function pe(){le.pop(),ce.target=le[le.length-1]}var de=function(e,t,n,r,i,o,a,s){this.tag=e,this.data=t,this.children=n,this.text=r,this.elm=i,this.ns=void 0,this.context=o,this.fnContext=void 0,this.fnOptions=void 0,this.fnScopeId=void 0,this.key=t&&t.key,this.componentOptions=a,this.componentInstance=void 0,this.parent=void 0,this.raw=!1,this.isStatic=!1,this.isRootInsert=!0,this.isComment=!1,this.isCloned=!1,this.isOnce=!1,this.asyncFactory=s,this.asyncMeta=void 0,this.isAsyncPlaceholder=!1},he={child:{configurable:!0}};he.child.get=function(){return this.componentInstance},Object.defineProperties(de.prototype,he);var ve=function(e){void 0===e&&(e="");var t=new de;return t.text=e,t.isComment=!0,t};function ge(e){return new de(void 0,void 0,void 0,String(e))}function me(e){var t=new de(e.tag,e.data,e.children&&e.children.slice(),e.text,e.elm,e.context,e.componentOptions,e.asyncFactory);return t.ns=e.ns,t.isStatic=e.isStatic,t.key=e.key,t.isComment=e.isComment,t.fnContext=e.fnContext,t.fnOptions=e.fnOptions,t.fnScopeId=e.fnScopeId,t.asyncMeta=e.asyncMeta,t.isCloned=!0,t}var ye=Array.prototype,_e=Object.create(ye);["push","pop","shift","unshift","splice","sort","reverse"].forEach(function(e){var t=ye[e];W(_e,e,function(){for(var n=[],r=arguments.length;r--;)n[r]=arguments[r];var i,o=t.apply(this,n),a=this.__ob__;switch(e){case"push":case"unshift":i=n;break;case"splice":i=n.slice(2)}return i&&a.observeArray(i),a.dep.notify(),o})});var be=Object.getOwnPropertyNames(_e),we=!0;function Te(e){we=e}var Ee=function(e){var t;this.value=e,this.dep=new ce,this.vmCount=0,W(e,"__ob__",this),Array.isArray(e)?(U?(t=_e,e.__proto__=t):function(e,t,n){for(var r=0,i=n.length;r<i;r++){var o=n[r];W(e,o,t[o])}}(e,_e,be),this.observeArray(e)):this.walk(e)};function xe(e,t){var n;if(u(e)&&!(e instanceof de))return b(e,"__ob__")&&e.__ob__ instanceof Ee?n=e.__ob__:we&&!ne()&&(Array.isArray(e)||l(e))&&Object.isExtensible(e)&&!e._isVue&&(n=new Ee(e)),t&&n&&n.vmCount++,n}function Ce(e,t,n,r,i){var o=new ce,a=Object.getOwnPropertyDescriptor(e,t);if(!a||!1!==a.configurable){var s=a&&a.get,u=a&&a.set;s&&!u||2!==arguments.length||(n=e[t]);var c=!i&&xe(n);Object.defineProperty(e,t,{enumerable:!0,configurable:!0,get:function(){var t=s?s.call(e):n;return ce.target&&(o.depend(),c&&(c.dep.depend(),Array.isArray(t)&&function e(t){for(var n=void 0,r=0,i=t.length;r<i;r++)(n=t[r])&&n.__ob__&&n.__ob__.dep.depend(),Array.isArray(n)&&e(n)}(t))),t},set:function(t){var r=s?s.call(e):n;t===r||t!=t&&r!=r||s&&!u||(u?u.call(e,t):n=t,c=!i&&xe(t),o.notify())}})}}function Ae(e,t,n){if(Array.isArray(e)&&p(t))return e.length=Math.max(e.length,t),e.splice(t,1,n),n;if(t in e&&!(t in Object.prototype))return e[t]=n,n;var r=e.__ob__;return e._isVue||r&&r.vmCount?n:r?(Ce(r.value,t,n),r.dep.notify(),n):(e[t]=n,n)}function Se(e,t){if(Array.isArray(e)&&p(t))e.splice(t,1);else{var n=e.__ob__;e._isVue||n&&n.vmCount||b(e,t)&&(delete e[t],n&&n.dep.notify())}}Ee.prototype.walk=function(e){for(var t=Object.keys(e),n=0;n<t.length;n++)Ce(e,t[n])},Ee.prototype.observeArray=function(e){for(var t=0,n=e.length;t<n;t++)xe(e[t])};var Oe=F.optionMergeStrategies;function De(e,t){if(!t)return e;for(var n,r,i,o=Object.keys(t),a=0;a<o.length;a++)r=e[n=o[a]],i=t[n],b(e,n)?r!==i&&l(r)&&l(i)&&De(r,i):Ae(e,n,i);return e}function Ie(e,t,n){return n?function(){var r="function"==typeof t?t.call(n,n):t,i="function"==typeof e?e.call(n,n):e;return r?De(r,i):i}:t?e?function(){return De("function"==typeof t?t.call(this,this):t,"function"==typeof e?e.call(this,this):e)}:t:e}function ke(e,t){return t?e?e.concat(t):Array.isArray(t)?t:[t]:e}function Ne(e,t,n,r){var i=Object.create(e||null);return t?D(i,t):i}Oe.data=function(e,t,n){return n?Ie(e,t,n):t&&"function"!=typeof t?e:Ie(e,t)},M.forEach(function(e){Oe[e]=ke}),H.forEach(function(e){Oe[e+"s"]=Ne}),Oe.watch=function(e,t,n,r){if(e===Z&&(e=void 0),t===Z&&(t=void 0),!t)return Object.create(e||null);if(!e)return t;var i={};for(var o in D(i,e),t){var a=i[o],s=t[o];a&&!Array.isArray(a)&&(a=[a]),i[o]=a?a.concat(s):Array.isArray(s)?s:[s]}return i},Oe.props=Oe.methods=Oe.inject=Oe.computed=function(e,t,n,r){if(!e)return t;var i=Object.create(null);return D(i,e),t&&D(i,t),i},Oe.provide=Ie;var Le=function(e,t){return void 0===t?e:t};function je(e,t,n){if("function"==typeof t&&(t=t.options),function(e,t){var n=e.props;if(n){var r,i,o={};if(Array.isArray(n))for(r=n.length;r--;)"string"==typeof(i=n[r])&&(o[E(i)]={type:null});else if(l(n))for(var a in n)i=n[a],o[E(a)]=l(i)?i:{type:i};e.props=o}}(t),function(e,t){var n=e.inject;if(n){var r=e.inject={};if(Array.isArray(n))for(var i=0;i<n.length;i++)r[n[i]]={from:n[i]};else if(l(n))for(var o in n){var a=n[o];r[o]=l(a)?D({from:o},a):{from:a}}}}(t),function(e){var t=e.directives;if(t)for(var n in t){var r=t[n];"function"==typeof r&&(t[n]={bind:r,update:r})}}(t),!t._base&&(t.extends&&(e=je(e,t.extends,n)),t.mixins))for(var r=0,i=t.mixins.length;r<i;r++)e=je(e,t.mixins[r],n);var o,a={};for(o in e)s(o);for(o in t)b(e,o)||s(o);function s(r){var i=Oe[r]||Le;a[r]=i(e[r],t[r],n,r)}return a}function Pe(e,t,n,r){if("string"==typeof n){var i=e[t];if(b(i,n))return i[n];var o=E(n);if(b(i,o))return i[o];var a=x(o);return b(i,a)?i[a]:i[n]||i[o]||i[a]}}function Re(e,t,n,r){var i=t[e],o=!b(n,e),a=n[e],s=Me(Boolean,i.type);if(s>-1)if(o&&!b(i,"default"))a=!1;else if(""===a||a===A(e)){var u=Me(String,i.type);(u<0||s<u)&&(a=!0)}if(void 0===a){a=function(e,t,n){if(!b(t,"default"))return;var r=t.default;0;if(e&&e.$options.propsData&&void 0===e.$options.propsData[n]&&void 0!==e._props[n])return e._props[n];return"function"==typeof r&&"Function"!==$e(t.type)?r.call(e):r}(r,i,e);var c=we;Te(!0),xe(a),Te(c)}return a}function $e(e){var t=e&&e.toString().match(/^\s*function (\w+)/);return t?t[1]:""}function He(e,t){return $e(e)===$e(t)}function Me(e,t){if(!Array.isArray(t))return He(t,e)?0:-1;for(var n=0,r=t.length;n<r;n++)if(He(t[n],e))return n;return-1}function Fe(e,t,n){if(t)for(var r=t;r=r.$parent;){var i=r.$options.errorCaptured;if(i)for(var o=0;o<i.length;o++)try{if(!1===i[o].call(r,e,t,n))return}catch(e){We(e,r,"errorCaptured hook")}}We(e,t,n)}function We(e,t,n){if(F.errorHandler)try{return F.errorHandler.call(null,e,t,n)}catch(e){qe(e,null,"config.errorHandler")}qe(e,t,n)}function qe(e,t,n){if(!V&&!z||"undefined"==typeof console)throw e;console.error(e)}var Be,Ue,Ve=[],ze=!1;function Ke(){ze=!1;var e=Ve.slice(0);Ve.length=0;for(var t=0;t<e.length;t++)e[t]()}var Ge=!1;if(void 0!==n&&ie(n))Ue=function(){n(Ke)};else if("undefined"==typeof MessageChannel||!ie(MessageChannel)&&"[object MessageChannelConstructor]"!==MessageChannel.toString())Ue=function(){setTimeout(Ke,0)};else{var Xe=new MessageChannel,Qe=Xe.port2;Xe.port1.onmessage=Ke,Ue=function(){Qe.postMessage(1)}}if("undefined"!=typeof Promise&&ie(Promise)){var Ye=Promise.resolve();Be=function(){Ye.then(Ke),J&&setTimeout(k)}}else Be=Ue;function Je(e,t){var n;if(Ve.push(function(){if(e)try{e.call(t)}catch(e){Fe(e,t,"nextTick")}else n&&n(t)}),ze||(ze=!0,Ge?Ue():Be()),!e&&"undefined"!=typeof Promise)return new Promise(function(e){n=e})}var Ze=new oe;function et(e){!function e(t,n){var r,i;var o=Array.isArray(t);if(!o&&!u(t)||Object.isFrozen(t)||t instanceof de)return;if(t.__ob__){var a=t.__ob__.dep.id;if(n.has(a))return;n.add(a)}if(o)for(r=t.length;r--;)e(t[r],n);else for(i=Object.keys(t),r=i.length;r--;)e(t[i[r]],n)}(e,Ze),Ze.clear()}var tt,nt=w(function(e){var t="&"===e.charAt(0),n="~"===(e=t?e.slice(1):e).charAt(0),r="!"===(e=n?e.slice(1):e).charAt(0);return{name:e=r?e.slice(1):e,once:n,capture:r,passive:t}});function rt(e){function t(){var e=arguments,n=t.fns;if(!Array.isArray(n))return n.apply(null,arguments);for(var r=n.slice(),i=0;i<r.length;i++)r[i].apply(null,e)}return t.fns=e,t}function it(e,t,n,r,o,s){var u,c,l,f;for(u in e)c=e[u],l=t[u],f=nt(u),i(c)||(i(l)?(i(c.fns)&&(c=e[u]=rt(c)),a(f.once)&&(c=e[u]=o(f.name,c,f.capture)),n(f.name,c,f.capture,f.passive,f.params)):c!==l&&(l.fns=c,e[u]=l));for(u in t)i(e[u])&&r((f=nt(u)).name,t[u],f.capture)}function ot(e,t,n){var r;e instanceof de&&(e=e.data.hook||(e.data.hook={}));var s=e[t];function u(){n.apply(this,arguments),y(r.fns,u)}i(s)?r=rt([u]):o(s.fns)&&a(s.merged)?(r=s).fns.push(u):r=rt([s,u]),r.merged=!0,e[t]=r}function at(e,t,n,r,i){if(o(t)){if(b(t,n))return e[n]=t[n],i||delete t[n],!0;if(b(t,r))return e[n]=t[r],i||delete t[r],!0}return!1}function st(e){return s(e)?[ge(e)]:Array.isArray(e)?function e(t,n){var r=[];var u,c,l,f;for(u=0;u<t.length;u++)i(c=t[u])||"boolean"==typeof c||(l=r.length-1,f=r[l],Array.isArray(c)?c.length>0&&(ut((c=e(c,(n||"")+"_"+u))[0])&&ut(f)&&(r[l]=ge(f.text+c[0].text),c.shift()),r.push.apply(r,c)):s(c)?ut(f)?r[l]=ge(f.text+c):""!==c&&r.push(ge(c)):ut(c)&&ut(f)?r[l]=ge(f.text+c.text):(a(t._isVList)&&o(c.tag)&&i(c.key)&&o(n)&&(c.key="__vlist"+n+"_"+u+"__"),r.push(c)));return r}(e):void 0}function ut(e){return o(e)&&o(e.text)&&!1===e.isComment}function ct(e,t){return(e.__esModule||ae&&"Module"===e[Symbol.toStringTag])&&(e=e.default),u(e)?t.extend(e):e}function lt(e){return e.isComment&&e.asyncFactory}function ft(e){if(Array.isArray(e))for(var t=0;t<e.length;t++){var n=e[t];if(o(n)&&(o(n.componentOptions)||lt(n)))return n}}function pt(e,t){tt.$on(e,t)}function dt(e,t){tt.$off(e,t)}function ht(e,t){var n=tt;return function r(){null!==t.apply(null,arguments)&&n.$off(e,r)}}function vt(e,t,n){tt=e,it(t,n||{},pt,dt,ht),tt=void 0}function gt(e,t){var n={};if(!e)return n;for(var r=0,i=e.length;r<i;r++){var o=e[r],a=o.data;if(a&&a.attrs&&a.attrs.slot&&delete a.attrs.slot,o.context!==t&&o.fnContext!==t||!a||null==a.slot)(n.default||(n.default=[])).push(o);else{var s=a.slot,u=n[s]||(n[s]=[]);"template"===o.tag?u.push.apply(u,o.children||[]):u.push(o)}}for(var c in n)n[c].every(mt)&&delete n[c];return n}function mt(e){return e.isComment&&!e.asyncFactory||" "===e.text}function yt(e,t){t=t||{};for(var n=0;n<e.length;n++)Array.isArray(e[n])?yt(e[n],t):t[e[n].key]=e[n].fn;return t}var _t=null;function bt(e){var t=_t;return _t=e,function(){_t=t}}function wt(e){for(;e&&(e=e.$parent);)if(e._inactive)return!0;return!1}function Tt(e,t){if(t){if(e._directInactive=!1,wt(e))return}else if(e._directInactive)return;if(e._inactive||null===e._inactive){e._inactive=!1;for(var n=0;n<e.$children.length;n++)Tt(e.$children[n]);Et(e,"activated")}}function Et(e,t){fe();var n=e.$options[t];if(n)for(var r=0,i=n.length;r<i;r++)try{n[r].call(e)}catch(n){Fe(n,e,t+" hook")}e._hasHookEvent&&e.$emit("hook:"+t),pe()}var xt=[],Ct=[],At={},St=!1,Ot=!1,Dt=0;function It(){var e,t;for(Ot=!0,xt.sort(function(e,t){return e.id-t.id}),Dt=0;Dt<xt.length;Dt++)(e=xt[Dt]).before&&e.before(),t=e.id,At[t]=null,e.run();var n=Ct.slice(),r=xt.slice();Dt=xt.length=Ct.length=0,At={},St=Ot=!1,function(e){for(var t=0;t<e.length;t++)e[t]._inactive=!0,Tt(e[t],!0)}(n),function(e){var t=e.length;for(;t--;){var n=e[t],r=n.vm;r._watcher===n&&r._isMounted&&!r._isDestroyed&&Et(r,"updated")}}(r),re&&F.devtools&&re.emit("flush")}var kt=0,Nt=function(e,t,n,r,i){this.vm=e,i&&(e._watcher=this),e._watchers.push(this),r?(this.deep=!!r.deep,this.user=!!r.user,this.lazy=!!r.lazy,this.sync=!!r.sync,this.before=r.before):this.deep=this.user=this.lazy=this.sync=!1,this.cb=n,this.id=++kt,this.active=!0,this.dirty=this.lazy,this.deps=[],this.newDeps=[],this.depIds=new oe,this.newDepIds=new oe,this.expression="","function"==typeof t?this.getter=t:(this.getter=function(e){if(!q.test(e)){var t=e.split(".");return function(e){for(var n=0;n<t.length;n++){if(!e)return;e=e[t[n]]}return e}}}(t),this.getter||(this.getter=k)),this.value=this.lazy?void 0:this.get()};Nt.prototype.get=function(){var e;fe(this);var t=this.vm;try{e=this.getter.call(t,t)}catch(e){if(!this.user)throw e;Fe(e,t,'getter for watcher "'+this.expression+'"')}finally{this.deep&&et(e),pe(),this.cleanupDeps()}return e},Nt.prototype.addDep=function(e){var t=e.id;this.newDepIds.has(t)||(this.newDepIds.add(t),this.newDeps.push(e),this.depIds.has(t)||e.addSub(this))},Nt.prototype.cleanupDeps=function(){for(var e=this.deps.length;e--;){var t=this.deps[e];this.newDepIds.has(t.id)||t.removeSub(this)}var n=this.depIds;this.depIds=this.newDepIds,this.newDepIds=n,this.newDepIds.clear(),n=this.deps,this.deps=this.newDeps,this.newDeps=n,this.newDeps.length=0},Nt.prototype.update=function(){this.lazy?this.dirty=!0:this.sync?this.run():function(e){var t=e.id;if(null==At[t]){if(At[t]=!0,Ot){for(var n=xt.length-1;n>Dt&&xt[n].id>e.id;)n--;xt.splice(n+1,0,e)}else xt.push(e);St||(St=!0,Je(It))}}(this)},Nt.prototype.run=function(){if(this.active){var e=this.get();if(e!==this.value||u(e)||this.deep){var t=this.value;if(this.value=e,this.user)try{this.cb.call(this.vm,e,t)}catch(e){Fe(e,this.vm,'callback for watcher "'+this.expression+'"')}else this.cb.call(this.vm,e,t)}}},Nt.prototype.evaluate=function(){this.value=this.get(),this.dirty=!1},Nt.prototype.depend=function(){for(var e=this.deps.length;e--;)this.deps[e].depend()},Nt.prototype.teardown=function(){if(this.active){this.vm._isBeingDestroyed||y(this.vm._watchers,this);for(var e=this.deps.length;e--;)this.deps[e].removeSub(this);this.active=!1}};var Lt={enumerable:!0,configurable:!0,get:k,set:k};function jt(e,t,n){Lt.get=function(){return this[t][n]},Lt.set=function(e){this[t][n]=e},Object.defineProperty(e,n,Lt)}function Pt(e){e._watchers=[];var t=e.$options;t.props&&function(e,t){var n=e.$options.propsData||{},r=e._props={},i=e.$options._propKeys=[];e.$parent&&Te(!1);var o=function(o){i.push(o);var a=Re(o,t,n,e);Ce(r,o,a),o in e||jt(e,"_props",o)};for(var a in t)o(a);Te(!0)}(e,t.props),t.methods&&function(e,t){e.$options.props;for(var n in t)e[n]="function"!=typeof t[n]?k:S(t[n],e)}(e,t.methods),t.data?function(e){var t=e.$options.data;l(t=e._data="function"==typeof t?function(e,t){fe();try{return e.call(t,t)}catch(e){return Fe(e,t,"data()"),{}}finally{pe()}}(t,e):t||{})||(t={});var n=Object.keys(t),r=e.$options.props,i=(e.$options.methods,n.length);for(;i--;){var o=n[i];0,r&&b(r,o)||(a=void 0,36!==(a=(o+"").charCodeAt(0))&&95!==a&&jt(e,"_data",o))}var a;xe(t,!0)}(e):xe(e._data={},!0),t.computed&&function(e,t){var n=e._computedWatchers=Object.create(null),r=ne();for(var i in t){var o=t[i],a="function"==typeof o?o:o.get;0,r||(n[i]=new Nt(e,a||k,k,Rt)),i in e||$t(e,i,o)}}(e,t.computed),t.watch&&t.watch!==Z&&function(e,t){for(var n in t){var r=t[n];if(Array.isArray(r))for(var i=0;i<r.length;i++)Ft(e,n,r[i]);else Ft(e,n,r)}}(e,t.watch)}var Rt={lazy:!0};function $t(e,t,n){var r=!ne();"function"==typeof n?(Lt.get=r?Ht(t):Mt(n),Lt.set=k):(Lt.get=n.get?r&&!1!==n.cache?Ht(t):Mt(n.get):k,Lt.set=n.set||k),Object.defineProperty(e,t,Lt)}function Ht(e){return function(){var t=this._computedWatchers&&this._computedWatchers[e];if(t)return t.dirty&&t.evaluate(),ce.target&&t.depend(),t.value}}function Mt(e){return function(){return e.call(this,this)}}function Ft(e,t,n,r){return l(n)&&(r=n,n=n.handler),"string"==typeof n&&(n=e[n]),e.$watch(t,n,r)}function Wt(e,t){if(e){for(var n=Object.create(null),r=ae?Reflect.ownKeys(e).filter(function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}):Object.keys(e),i=0;i<r.length;i++){for(var o=r[i],a=e[o].from,s=t;s;){if(s._provided&&b(s._provided,a)){n[o]=s._provided[a];break}s=s.$parent}if(!s)if("default"in e[o]){var u=e[o].default;n[o]="function"==typeof u?u.call(t):u}else 0}return n}}function qt(e,t){var n,r,i,a,s;if(Array.isArray(e)||"string"==typeof e)for(n=new Array(e.length),r=0,i=e.length;r<i;r++)n[r]=t(e[r],r);else if("number"==typeof e)for(n=new Array(e),r=0;r<e;r++)n[r]=t(r+1,r);else if(u(e))for(a=Object.keys(e),n=new Array(a.length),r=0,i=a.length;r<i;r++)s=a[r],n[r]=t(e[s],s,r);return o(n)||(n=[]),n._isVList=!0,n}function Bt(e,t,n,r){var i,o=this.$scopedSlots[e];o?(n=n||{},r&&(n=D(D({},r),n)),i=o(n)||t):i=this.$slots[e]||t;var a=n&&n.slot;return a?this.$createElement("template",{slot:a},i):i}function Ut(e){return Pe(this.$options,"filters",e)||L}function Vt(e,t){return Array.isArray(e)?-1===e.indexOf(t):e!==t}function zt(e,t,n,r,i){var o=F.keyCodes[t]||n;return i&&r&&!F.keyCodes[t]?Vt(i,r):o?Vt(o,e):r?A(r)!==t:void 0}function Kt(e,t,n,r,i){if(n)if(u(n)){var o;Array.isArray(n)&&(n=I(n));var a=function(a){if("class"===a||"style"===a||m(a))o=e;else{var s=e.attrs&&e.attrs.type;o=r||F.mustUseProp(t,s,a)?e.domProps||(e.domProps={}):e.attrs||(e.attrs={})}var u=E(a);a in o||u in o||(o[a]=n[a],i&&((e.on||(e.on={}))["update:"+u]=function(e){n[a]=e}))};for(var s in n)a(s)}else;return e}function Gt(e,t){var n=this._staticTrees||(this._staticTrees=[]),r=n[e];return r&&!t?r:(Qt(r=n[e]=this.$options.staticRenderFns[e].call(this._renderProxy,null,this),"__static__"+e,!1),r)}function Xt(e,t,n){return Qt(e,"__once__"+t+(n?"_"+n:""),!0),e}function Qt(e,t,n){if(Array.isArray(e))for(var r=0;r<e.length;r++)e[r]&&"string"!=typeof e[r]&&Yt(e[r],t+"_"+r,n);else Yt(e,t,n)}function Yt(e,t,n){e.isStatic=!0,e.key=t,e.isOnce=n}function Jt(e,t){if(t)if(l(t)){var n=e.on=e.on?D({},e.on):{};for(var r in t){var i=n[r],o=t[r];n[r]=i?[].concat(i,o):o}}else;return e}function Zt(e){e._o=Xt,e._n=h,e._s=d,e._l=qt,e._t=Bt,e._q=j,e._i=P,e._m=Gt,e._f=Ut,e._k=zt,e._b=Kt,e._v=ge,e._e=ve,e._u=yt,e._g=Jt}function en(e,t,n,i,o){var s,u=o.options;b(i,"_uid")?(s=Object.create(i))._original=i:(s=i,i=i._original);var c=a(u._compiled),l=!c;this.data=e,this.props=t,this.children=n,this.parent=i,this.listeners=e.on||r,this.injections=Wt(u.inject,i),this.slots=function(){return gt(n,i)},c&&(this.$options=u,this.$slots=this.slots(),this.$scopedSlots=e.scopedSlots||r),u._scopeId?this._c=function(e,t,n,r){var o=ln(s,e,t,n,r,l);return o&&!Array.isArray(o)&&(o.fnScopeId=u._scopeId,o.fnContext=i),o}:this._c=function(e,t,n,r){return ln(s,e,t,n,r,l)}}function tn(e,t,n,r,i){var o=me(e);return o.fnContext=n,o.fnOptions=r,t.slot&&((o.data||(o.data={})).slot=t.slot),o}function nn(e,t){for(var n in t)e[E(n)]=t[n]}Zt(en.prototype);var rn={init:function(e,t){if(e.componentInstance&&!e.componentInstance._isDestroyed&&e.data.keepAlive){var n=e;rn.prepatch(n,n)}else{(e.componentInstance=function(e,t){var n={_isComponent:!0,_parentVnode:e,parent:t},r=e.data.inlineTemplate;o(r)&&(n.render=r.render,n.staticRenderFns=r.staticRenderFns);return new e.componentOptions.Ctor(n)}(e,_t)).$mount(t?e.elm:void 0,t)}},prepatch:function(e,t){var n=t.componentOptions;!function(e,t,n,i,o){var a=!!(o||e.$options._renderChildren||i.data.scopedSlots||e.$scopedSlots!==r);if(e.$options._parentVnode=i,e.$vnode=i,e._vnode&&(e._vnode.parent=i),e.$options._renderChildren=o,e.$attrs=i.data.attrs||r,e.$listeners=n||r,t&&e.$options.props){Te(!1);for(var s=e._props,u=e.$options._propKeys||[],c=0;c<u.length;c++){var l=u[c],f=e.$options.props;s[l]=Re(l,f,t,e)}Te(!0),e.$options.propsData=t}n=n||r;var p=e.$options._parentListeners;e.$options._parentListeners=n,vt(e,n,p),a&&(e.$slots=gt(o,i.context),e.$forceUpdate())}(t.componentInstance=e.componentInstance,n.propsData,n.listeners,t,n.children)},insert:function(e){var t,n=e.context,r=e.componentInstance;r._isMounted||(r._isMounted=!0,Et(r,"mounted")),e.data.keepAlive&&(n._isMounted?((t=r)._inactive=!1,Ct.push(t)):Tt(r,!0))},destroy:function(e){var t=e.componentInstance;t._isDestroyed||(e.data.keepAlive?function e(t,n){if(!(n&&(t._directInactive=!0,wt(t))||t._inactive)){t._inactive=!0;for(var r=0;r<t.$children.length;r++)e(t.$children[r]);Et(t,"deactivated")}}(t,!0):t.$destroy())}},on=Object.keys(rn);function an(e,t,n,s,c){if(!i(e)){var l=n.$options._base;if(u(e)&&(e=l.extend(e)),"function"==typeof e){var f;if(i(e.cid)&&void 0===(e=function(e,t,n){if(a(e.error)&&o(e.errorComp))return e.errorComp;if(o(e.resolved))return e.resolved;if(a(e.loading)&&o(e.loadingComp))return e.loadingComp;if(!o(e.contexts)){var r=e.contexts=[n],s=!0,c=function(e){for(var t=0,n=r.length;t<n;t++)r[t].$forceUpdate();e&&(r.length=0)},l=R(function(n){e.resolved=ct(n,t),s||c(!0)}),f=R(function(t){o(e.errorComp)&&(e.error=!0,c(!0))}),p=e(l,f);return u(p)&&("function"==typeof p.then?i(e.resolved)&&p.then(l,f):o(p.component)&&"function"==typeof p.component.then&&(p.component.then(l,f),o(p.error)&&(e.errorComp=ct(p.error,t)),o(p.loading)&&(e.loadingComp=ct(p.loading,t),0===p.delay?e.loading=!0:setTimeout(function(){i(e.resolved)&&i(e.error)&&(e.loading=!0,c(!1))},p.delay||200)),o(p.timeout)&&setTimeout(function(){i(e.resolved)&&f(null)},p.timeout))),s=!1,e.loading?e.loadingComp:e.resolved}e.contexts.push(n)}(f=e,l,n)))return function(e,t,n,r,i){var o=ve();return o.asyncFactory=e,o.asyncMeta={data:t,context:n,children:r,tag:i},o}(f,t,n,s,c);t=t||{},pn(e),o(t.model)&&function(e,t){var n=e.model&&e.model.prop||"value",r=e.model&&e.model.event||"input";(t.props||(t.props={}))[n]=t.model.value;var i=t.on||(t.on={}),a=i[r],s=t.model.callback;o(a)?(Array.isArray(a)?-1===a.indexOf(s):a!==s)&&(i[r]=[s].concat(a)):i[r]=s}(e.options,t);var p=function(e,t,n){var r=t.options.props;if(!i(r)){var a={},s=e.attrs,u=e.props;if(o(s)||o(u))for(var c in r){var l=A(c);at(a,u,c,l,!0)||at(a,s,c,l,!1)}return a}}(t,e);if(a(e.options.functional))return function(e,t,n,i,a){var s=e.options,u={},c=s.props;if(o(c))for(var l in c)u[l]=Re(l,c,t||r);else o(n.attrs)&&nn(u,n.attrs),o(n.props)&&nn(u,n.props);var f=new en(n,u,a,i,e),p=s.render.call(null,f._c,f);if(p instanceof de)return tn(p,n,f.parent,s);if(Array.isArray(p)){for(var d=st(p)||[],h=new Array(d.length),v=0;v<d.length;v++)h[v]=tn(d[v],n,f.parent,s);return h}}(e,p,t,n,s);var d=t.on;if(t.on=t.nativeOn,a(e.options.abstract)){var h=t.slot;t={},h&&(t.slot=h)}!function(e){for(var t=e.hook||(e.hook={}),n=0;n<on.length;n++){var r=on[n],i=t[r],o=rn[r];i===o||i&&i._merged||(t[r]=i?sn(o,i):o)}}(t);var v=e.options.name||c;return new de("vue-component-"+e.cid+(v?"-"+v:""),t,void 0,void 0,void 0,n,{Ctor:e,propsData:p,listeners:d,tag:c,children:s},f)}}}function sn(e,t){var n=function(n,r){e(n,r),t(n,r)};return n._merged=!0,n}var un=1,cn=2;function ln(e,t,n,r,c,l){return(Array.isArray(n)||s(n))&&(c=r,r=n,n=void 0),a(l)&&(c=cn),function(e,t,n,r,s){if(o(n)&&o(n.__ob__))return ve();o(n)&&o(n.is)&&(t=n.is);if(!t)return ve();0;Array.isArray(r)&&"function"==typeof r[0]&&((n=n||{}).scopedSlots={default:r[0]},r.length=0);s===cn?r=st(r):s===un&&(r=function(e){for(var t=0;t<e.length;t++)if(Array.isArray(e[t]))return Array.prototype.concat.apply([],e);return e}(r));var c,l;if("string"==typeof t){var f;l=e.$vnode&&e.$vnode.ns||F.getTagNamespace(t),c=F.isReservedTag(t)?new de(F.parsePlatformTagName(t),n,r,void 0,void 0,e):n&&n.pre||!o(f=Pe(e.$options,"components",t))?new de(t,n,r,void 0,void 0,e):an(f,n,e,r,t)}else c=an(t,n,e,r);return Array.isArray(c)?c:o(c)?(o(l)&&function e(t,n,r){t.ns=n;"foreignObject"===t.tag&&(n=void 0,r=!0);if(o(t.children))for(var s=0,u=t.children.length;s<u;s++){var c=t.children[s];o(c.tag)&&(i(c.ns)||a(r)&&"svg"!==c.tag)&&e(c,n,r)}}(c,l),o(n)&&function(e){u(e.style)&&et(e.style);u(e.class)&&et(e.class)}(n),c):ve()}(e,t,n,r,c)}var fn=0;function pn(e){var t=e.options;if(e.super){var n=pn(e.super);if(n!==e.superOptions){e.superOptions=n;var r=function(e){var t,n=e.options,r=e.extendOptions,i=e.sealedOptions;for(var o in n)n[o]!==i[o]&&(t||(t={}),t[o]=dn(n[o],r[o],i[o]));return t}(e);r&&D(e.extendOptions,r),(t=e.options=je(n,e.extendOptions)).name&&(t.components[t.name]=e)}}return t}function dn(e,t,n){if(Array.isArray(e)){var r=[];n=Array.isArray(n)?n:[n],t=Array.isArray(t)?t:[t];for(var i=0;i<e.length;i++)(t.indexOf(e[i])>=0||n.indexOf(e[i])<0)&&r.push(e[i]);return r}return e}function hn(e){this._init(e)}function vn(e){e.cid=0;var t=1;e.extend=function(e){e=e||{};var n=this,r=n.cid,i=e._Ctor||(e._Ctor={});if(i[r])return i[r];var o=e.name||n.options.name;var a=function(e){this._init(e)};return(a.prototype=Object.create(n.prototype)).constructor=a,a.cid=t++,a.options=je(n.options,e),a.super=n,a.options.props&&function(e){var t=e.options.props;for(var n in t)jt(e.prototype,"_props",n)}(a),a.options.computed&&function(e){var t=e.options.computed;for(var n in t)$t(e.prototype,n,t[n])}(a),a.extend=n.extend,a.mixin=n.mixin,a.use=n.use,H.forEach(function(e){a[e]=n[e]}),o&&(a.options.components[o]=a),a.superOptions=n.options,a.extendOptions=e,a.sealedOptions=D({},a.options),i[r]=a,a}}function gn(e){return e&&(e.Ctor.options.name||e.tag)}function mn(e,t){return Array.isArray(e)?e.indexOf(t)>-1:"string"==typeof e?e.split(",").indexOf(t)>-1:!!f(e)&&e.test(t)}function yn(e,t){var n=e.cache,r=e.keys,i=e._vnode;for(var o in n){var a=n[o];if(a){var s=gn(a.componentOptions);s&&!t(s)&&_n(n,o,r,i)}}}function _n(e,t,n,r){var i=e[t];!i||r&&i.tag===r.tag||i.componentInstance.$destroy(),e[t]=null,y(n,t)}!function(e){e.prototype._init=function(e){var t=this;t._uid=fn++,t._isVue=!0,e&&e._isComponent?function(e,t){var n=e.$options=Object.create(e.constructor.options),r=t._parentVnode;n.parent=t.parent,n._parentVnode=r;var i=r.componentOptions;n.propsData=i.propsData,n._parentListeners=i.listeners,n._renderChildren=i.children,n._componentTag=i.tag,t.render&&(n.render=t.render,n.staticRenderFns=t.staticRenderFns)}(t,e):t.$options=je(pn(t.constructor),e||{},t),t._renderProxy=t,t._self=t,function(e){var t=e.$options,n=t.parent;if(n&&!t.abstract){for(;n.$options.abstract&&n.$parent;)n=n.$parent;n.$children.push(e)}e.$parent=n,e.$root=n?n.$root:e,e.$children=[],e.$refs={},e._watcher=null,e._inactive=null,e._directInactive=!1,e._isMounted=!1,e._isDestroyed=!1,e._isBeingDestroyed=!1}(t),function(e){e._events=Object.create(null),e._hasHookEvent=!1;var t=e.$options._parentListeners;t&&vt(e,t)}(t),function(e){e._vnode=null,e._staticTrees=null;var t=e.$options,n=e.$vnode=t._parentVnode,i=n&&n.context;e.$slots=gt(t._renderChildren,i),e.$scopedSlots=r,e._c=function(t,n,r,i){return ln(e,t,n,r,i,!1)},e.$createElement=function(t,n,r,i){return ln(e,t,n,r,i,!0)};var o=n&&n.data;Ce(e,"$attrs",o&&o.attrs||r,null,!0),Ce(e,"$listeners",t._parentListeners||r,null,!0)}(t),Et(t,"beforeCreate"),function(e){var t=Wt(e.$options.inject,e);t&&(Te(!1),Object.keys(t).forEach(function(n){Ce(e,n,t[n])}),Te(!0))}(t),Pt(t),function(e){var t=e.$options.provide;t&&(e._provided="function"==typeof t?t.call(e):t)}(t),Et(t,"created"),t.$options.el&&t.$mount(t.$options.el)}}(hn),function(e){var t={get:function(){return this._data}},n={get:function(){return this._props}};Object.defineProperty(e.prototype,"$data",t),Object.defineProperty(e.prototype,"$props",n),e.prototype.$set=Ae,e.prototype.$delete=Se,e.prototype.$watch=function(e,t,n){if(l(t))return Ft(this,e,t,n);(n=n||{}).user=!0;var r=new Nt(this,e,t,n);if(n.immediate)try{t.call(this,r.value)}catch(e){Fe(e,this,'callback for immediate watcher "'+r.expression+'"')}return function(){r.teardown()}}}(hn),function(e){var t=/^hook:/;e.prototype.$on=function(e,n){var r=this;if(Array.isArray(e))for(var i=0,o=e.length;i<o;i++)r.$on(e[i],n);else(r._events[e]||(r._events[e]=[])).push(n),t.test(e)&&(r._hasHookEvent=!0);return r},e.prototype.$once=function(e,t){var n=this;function r(){n.$off(e,r),t.apply(n,arguments)}return r.fn=t,n.$on(e,r),n},e.prototype.$off=function(e,t){var n=this;if(!arguments.length)return n._events=Object.create(null),n;if(Array.isArray(e)){for(var r=0,i=e.length;r<i;r++)n.$off(e[r],t);return n}var o=n._events[e];if(!o)return n;if(!t)return n._events[e]=null,n;if(t)for(var a,s=o.length;s--;)if((a=o[s])===t||a.fn===t){o.splice(s,1);break}return n},e.prototype.$emit=function(e){var t=this._events[e];if(t){t=t.length>1?O(t):t;for(var n=O(arguments,1),r=0,i=t.length;r<i;r++)try{t[r].apply(this,n)}catch(t){Fe(t,this,'event handler for "'+e+'"')}}return this}}(hn),function(e){e.prototype._update=function(e,t){var n=this,r=n.$el,i=n._vnode,o=bt(n);n._vnode=e,n.$el=i?n.__patch__(i,e):n.__patch__(n.$el,e,t,!1),o(),r&&(r.__vue__=null),n.$el&&(n.$el.__vue__=n),n.$vnode&&n.$parent&&n.$vnode===n.$parent._vnode&&(n.$parent.$el=n.$el)},e.prototype.$forceUpdate=function(){this._watcher&&this._watcher.update()},e.prototype.$destroy=function(){var e=this;if(!e._isBeingDestroyed){Et(e,"beforeDestroy"),e._isBeingDestroyed=!0;var t=e.$parent;!t||t._isBeingDestroyed||e.$options.abstract||y(t.$children,e),e._watcher&&e._watcher.teardown();for(var n=e._watchers.length;n--;)e._watchers[n].teardown();e._data.__ob__&&e._data.__ob__.vmCount--,e._isDestroyed=!0,e.__patch__(e._vnode,null),Et(e,"destroyed"),e.$off(),e.$el&&(e.$el.__vue__=null),e.$vnode&&(e.$vnode.parent=null)}}}(hn),function(e){Zt(e.prototype),e.prototype.$nextTick=function(e){return Je(e,this)},e.prototype._render=function(){var e,t=this,n=t.$options,i=n.render,o=n._parentVnode;o&&(t.$scopedSlots=o.data.scopedSlots||r),t.$vnode=o;try{e=i.call(t._renderProxy,t.$createElement)}catch(n){Fe(n,t,"render"),e=t._vnode}return e instanceof de||(e=ve()),e.parent=o,e}}(hn);var bn=[String,RegExp,Array],wn={KeepAlive:{name:"keep-alive",abstract:!0,props:{include:bn,exclude:bn,max:[String,Number]},created:function(){this.cache=Object.create(null),this.keys=[]},destroyed:function(){for(var e in this.cache)_n(this.cache,e,this.keys)},mounted:function(){var e=this;this.$watch("include",function(t){yn(e,function(e){return mn(t,e)})}),this.$watch("exclude",function(t){yn(e,function(e){return!mn(t,e)})})},render:function(){var e=this.$slots.default,t=ft(e),n=t&&t.componentOptions;if(n){var r=gn(n),i=this.include,o=this.exclude;if(i&&(!r||!mn(i,r))||o&&r&&mn(o,r))return t;var a=this.cache,s=this.keys,u=null==t.key?n.Ctor.cid+(n.tag?"::"+n.tag:""):t.key;a[u]?(t.componentInstance=a[u].componentInstance,y(s,u),s.push(u)):(a[u]=t,s.push(u),this.max&&s.length>parseInt(this.max)&&_n(a,s[0],s,this._vnode)),t.data.keepAlive=!0}return t||e&&e[0]}}};!function(e){var t={get:function(){return F}};Object.defineProperty(e,"config",t),e.util={warn:se,extend:D,mergeOptions:je,defineReactive:Ce},e.set=Ae,e.delete=Se,e.nextTick=Je,e.options=Object.create(null),H.forEach(function(t){e.options[t+"s"]=Object.create(null)}),e.options._base=e,D(e.options.components,wn),function(e){e.use=function(e){var t=this._installedPlugins||(this._installedPlugins=[]);if(t.indexOf(e)>-1)return this;var n=O(arguments,1);return n.unshift(this),"function"==typeof e.install?e.install.apply(e,n):"function"==typeof e&&e.apply(null,n),t.push(e),this}}(e),function(e){e.mixin=function(e){return this.options=je(this.options,e),this}}(e),vn(e),function(e){H.forEach(function(t){e[t]=function(e,n){return n?("component"===t&&l(n)&&(n.name=n.name||e,n=this.options._base.extend(n)),"directive"===t&&"function"==typeof n&&(n={bind:n,update:n}),this.options[t+"s"][e]=n,n):this.options[t+"s"][e]}})}(e)}(hn),Object.defineProperty(hn.prototype,"$isServer",{get:ne}),Object.defineProperty(hn.prototype,"$ssrContext",{get:function(){return this.$vnode&&this.$vnode.ssrContext}}),Object.defineProperty(hn,"FunctionalRenderContext",{value:en}),hn.version="2.5.21";var Tn=v("style,class"),En=v("input,textarea,option,select,progress"),xn=function(e,t,n){return"value"===n&&En(e)&&"button"!==t||"selected"===n&&"option"===e||"checked"===n&&"input"===e||"muted"===n&&"video"===e},Cn=v("contenteditable,draggable,spellcheck"),An=v("allowfullscreen,async,autofocus,autoplay,checked,compact,controls,declare,default,defaultchecked,defaultmuted,defaultselected,defer,disabled,enabled,formnovalidate,hidden,indeterminate,inert,ismap,itemscope,loop,multiple,muted,nohref,noresize,noshade,novalidate,nowrap,open,pauseonexit,readonly,required,reversed,scoped,seamless,selected,sortable,translate,truespeed,typemustmatch,visible"),Sn="http://www.w3.org/1999/xlink",On=function(e){return":"===e.charAt(5)&&"xlink"===e.slice(0,5)},Dn=function(e){return On(e)?e.slice(6,e.length):""},In=function(e){return null==e||!1===e};function kn(e){for(var t=e.data,n=e,r=e;o(r.componentInstance);)(r=r.componentInstance._vnode)&&r.data&&(t=Nn(r.data,t));for(;o(n=n.parent);)n&&n.data&&(t=Nn(t,n.data));return function(e,t){if(o(e)||o(t))return Ln(e,jn(t));return""}(t.staticClass,t.class)}function Nn(e,t){return{staticClass:Ln(e.staticClass,t.staticClass),class:o(e.class)?[e.class,t.class]:t.class}}function Ln(e,t){return e?t?e+" "+t:e:t||""}function jn(e){return Array.isArray(e)?function(e){for(var t,n="",r=0,i=e.length;r<i;r++)o(t=jn(e[r]))&&""!==t&&(n&&(n+=" "),n+=t);return n}(e):u(e)?function(e){var t="";for(var n in e)e[n]&&(t&&(t+=" "),t+=n);return t}(e):"string"==typeof e?e:""}var Pn={svg:"http://www.w3.org/2000/svg",math:"http://www.w3.org/1998/Math/MathML"},Rn=v("html,body,base,head,link,meta,style,title,address,article,aside,footer,header,h1,h2,h3,h4,h5,h6,hgroup,nav,section,div,dd,dl,dt,figcaption,figure,picture,hr,img,li,main,ol,p,pre,ul,a,b,abbr,bdi,bdo,br,cite,code,data,dfn,em,i,kbd,mark,q,rp,rt,rtc,ruby,s,samp,small,span,strong,sub,sup,time,u,var,wbr,area,audio,map,track,video,embed,object,param,source,canvas,script,noscript,del,ins,caption,col,colgroup,table,thead,tbody,td,th,tr,button,datalist,fieldset,form,input,label,legend,meter,optgroup,option,output,progress,select,textarea,details,dialog,menu,menuitem,summary,content,element,shadow,template,blockquote,iframe,tfoot"),$n=v("svg,animate,circle,clippath,cursor,defs,desc,ellipse,filter,font-face,foreignObject,g,glyph,image,line,marker,mask,missing-glyph,path,pattern,polygon,polyline,rect,switch,symbol,text,textpath,tspan,use,view",!0),Hn=function(e){return Rn(e)||$n(e)};function Mn(e){return $n(e)?"svg":"math"===e?"math":void 0}var Fn=Object.create(null);var Wn=v("text,number,password,search,email,tel,url");function qn(e){if("string"==typeof e){var t=document.querySelector(e);return t||document.createElement("div")}return e}var Bn=Object.freeze({createElement:function(e,t){var n=document.createElement(e);return"select"!==e?n:(t.data&&t.data.attrs&&void 0!==t.data.attrs.multiple&&n.setAttribute("multiple","multiple"),n)},createElementNS:function(e,t){return document.createElementNS(Pn[e],t)},createTextNode:function(e){return document.createTextNode(e)},createComment:function(e){return document.createComment(e)},insertBefore:function(e,t,n){e.insertBefore(t,n)},removeChild:function(e,t){e.removeChild(t)},appendChild:function(e,t){e.appendChild(t)},parentNode:function(e){return e.parentNode},nextSibling:function(e){return e.nextSibling},tagName:function(e){return e.tagName},setTextContent:function(e,t){e.textContent=t},setStyleScope:function(e,t){e.setAttribute(t,"")}}),Un={create:function(e,t){Vn(t)},update:function(e,t){e.data.ref!==t.data.ref&&(Vn(e,!0),Vn(t))},destroy:function(e){Vn(e,!0)}};function Vn(e,t){var n=e.data.ref;if(o(n)){var r=e.context,i=e.componentInstance||e.elm,a=r.$refs;t?Array.isArray(a[n])?y(a[n],i):a[n]===i&&(a[n]=void 0):e.data.refInFor?Array.isArray(a[n])?a[n].indexOf(i)<0&&a[n].push(i):a[n]=[i]:a[n]=i}}var zn=new de("",{},[]),Kn=["create","activate","update","remove","destroy"];function Gn(e,t){return e.key===t.key&&(e.tag===t.tag&&e.isComment===t.isComment&&o(e.data)===o(t.data)&&function(e,t){if("input"!==e.tag)return!0;var n,r=o(n=e.data)&&o(n=n.attrs)&&n.type,i=o(n=t.data)&&o(n=n.attrs)&&n.type;return r===i||Wn(r)&&Wn(i)}(e,t)||a(e.isAsyncPlaceholder)&&e.asyncFactory===t.asyncFactory&&i(t.asyncFactory.error))}function Xn(e,t,n){var r,i,a={};for(r=t;r<=n;++r)o(i=e[r].key)&&(a[i]=r);return a}var Qn={create:Yn,update:Yn,destroy:function(e){Yn(e,zn)}};function Yn(e,t){(e.data.directives||t.data.directives)&&function(e,t){var n,r,i,o=e===zn,a=t===zn,s=Zn(e.data.directives,e.context),u=Zn(t.data.directives,t.context),c=[],l=[];for(n in u)r=s[n],i=u[n],r?(i.oldValue=r.value,tr(i,"update",t,e),i.def&&i.def.componentUpdated&&l.push(i)):(tr(i,"bind",t,e),i.def&&i.def.inserted&&c.push(i));if(c.length){var f=function(){for(var n=0;n<c.length;n++)tr(c[n],"inserted",t,e)};o?ot(t,"insert",f):f()}l.length&&ot(t,"postpatch",function(){for(var n=0;n<l.length;n++)tr(l[n],"componentUpdated",t,e)});if(!o)for(n in s)u[n]||tr(s[n],"unbind",e,e,a)}(e,t)}var Jn=Object.create(null);function Zn(e,t){var n,r,i=Object.create(null);if(!e)return i;for(n=0;n<e.length;n++)(r=e[n]).modifiers||(r.modifiers=Jn),i[er(r)]=r,r.def=Pe(t.$options,"directives",r.name);return i}function er(e){return e.rawName||e.name+"."+Object.keys(e.modifiers||{}).join(".")}function tr(e,t,n,r,i){var o=e.def&&e.def[t];if(o)try{o(n.elm,e,n,r,i)}catch(r){Fe(r,n.context,"directive "+e.name+" "+t+" hook")}}var nr=[Un,Qn];function rr(e,t){var n=t.componentOptions;if(!(o(n)&&!1===n.Ctor.options.inheritAttrs||i(e.data.attrs)&&i(t.data.attrs))){var r,a,s=t.elm,u=e.data.attrs||{},c=t.data.attrs||{};for(r in o(c.__ob__)&&(c=t.data.attrs=D({},c)),c)a=c[r],u[r]!==a&&ir(s,r,a);for(r in(X||Y)&&c.value!==u.value&&ir(s,"value",c.value),u)i(c[r])&&(On(r)?s.removeAttributeNS(Sn,Dn(r)):Cn(r)||s.removeAttribute(r))}}function ir(e,t,n){e.tagName.indexOf("-")>-1?or(e,t,n):An(t)?In(n)?e.removeAttribute(t):(n="allowfullscreen"===t&&"EMBED"===e.tagName?"true":t,e.setAttribute(t,n)):Cn(t)?e.setAttribute(t,In(n)||"false"===n?"false":"true"):On(t)?In(n)?e.removeAttributeNS(Sn,Dn(t)):e.setAttributeNS(Sn,t,n):or(e,t,n)}function or(e,t,n){if(In(n))e.removeAttribute(t);else{if(X&&!Q&&("TEXTAREA"===e.tagName||"INPUT"===e.tagName)&&"placeholder"===t&&!e.__ieph){var r=function(t){t.stopImmediatePropagation(),e.removeEventListener("input",r)};e.addEventListener("input",r),e.__ieph=!0}e.setAttribute(t,n)}}var ar={create:rr,update:rr};function sr(e,t){var n=t.elm,r=t.data,a=e.data;if(!(i(r.staticClass)&&i(r.class)&&(i(a)||i(a.staticClass)&&i(a.class)))){var s=kn(t),u=n._transitionClasses;o(u)&&(s=Ln(s,jn(u))),s!==n._prevClass&&(n.setAttribute("class",s),n._prevClass=s)}}var ur,cr,lr,fr,pr,dr,hr={create:sr,update:sr},vr=/[\w).+\-_$\]]/;function gr(e){var t,n,r,i,o,a=!1,s=!1,u=!1,c=!1,l=0,f=0,p=0,d=0;for(r=0;r<e.length;r++)if(n=t,t=e.charCodeAt(r),a)39===t&&92!==n&&(a=!1);else if(s)34===t&&92!==n&&(s=!1);else if(u)96===t&&92!==n&&(u=!1);else if(c)47===t&&92!==n&&(c=!1);else if(124!==t||124===e.charCodeAt(r+1)||124===e.charCodeAt(r-1)||l||f||p){switch(t){case 34:s=!0;break;case 39:a=!0;break;case 96:u=!0;break;case 40:p++;break;case 41:p--;break;case 91:f++;break;case 93:f--;break;case 123:l++;break;case 125:l--}if(47===t){for(var h=r-1,v=void 0;h>=0&&" "===(v=e.charAt(h));h--);v&&vr.test(v)||(c=!0)}}else void 0===i?(d=r+1,i=e.slice(0,r).trim()):g();function g(){(o||(o=[])).push(e.slice(d,r).trim()),d=r+1}if(void 0===i?i=e.slice(0,r).trim():0!==d&&g(),o)for(r=0;r<o.length;r++)i=mr(i,o[r]);return i}function mr(e,t){var n=t.indexOf("(");if(n<0)return'_f("'+t+'")('+e+")";var r=t.slice(0,n),i=t.slice(n+1);return'_f("'+r+'")('+e+(")"!==i?","+i:i)}function yr(e){console.error("[Vue compiler]: "+e)}function _r(e,t){return e?e.map(function(e){return e[t]}).filter(function(e){return e}):[]}function br(e,t,n){(e.props||(e.props=[])).push({name:t,value:n}),e.plain=!1}function wr(e,t,n){(e.attrs||(e.attrs=[])).push({name:t,value:n}),e.plain=!1}function Tr(e,t,n){e.attrsMap[t]=n,e.attrsList.push({name:t,value:n})}function Er(e,t,n,r,i,o){(e.directives||(e.directives=[])).push({name:t,rawName:n,value:r,arg:i,modifiers:o}),e.plain=!1}function xr(e,t,n,i,o,a){var s;i=i||r,"click"===t&&(i.right?(t="contextmenu",delete i.right):i.middle&&(t="mouseup")),i.capture&&(delete i.capture,t="!"+t),i.once&&(delete i.once,t="~"+t),i.passive&&(delete i.passive,t="&"+t),i.native?(delete i.native,s=e.nativeEvents||(e.nativeEvents={})):s=e.events||(e.events={});var u={value:n.trim()};i!==r&&(u.modifiers=i);var c=s[t];Array.isArray(c)?o?c.unshift(u):c.push(u):s[t]=c?o?[u,c]:[c,u]:u,e.plain=!1}function Cr(e,t,n){var r=Ar(e,":"+t)||Ar(e,"v-bind:"+t);if(null!=r)return gr(r);if(!1!==n){var i=Ar(e,t);if(null!=i)return JSON.stringify(i)}}function Ar(e,t,n){var r;if(null!=(r=e.attrsMap[t]))for(var i=e.attrsList,o=0,a=i.length;o<a;o++)if(i[o].name===t){i.splice(o,1);break}return n&&delete e.attrsMap[t],r}function Sr(e,t,n){var r=n||{},i=r.number,o="$$v";r.trim&&(o="(typeof $$v === 'string'? $$v.trim(): $$v)"),i&&(o="_n("+o+")");var a=Or(t,o);e.model={value:"("+t+")",expression:JSON.stringify(t),callback:"function ($$v) {"+a+"}"}}function Or(e,t){var n=function(e){if(e=e.trim(),ur=e.length,e.indexOf("[")<0||e.lastIndexOf("]")<ur-1)return(fr=e.lastIndexOf("."))>-1?{exp:e.slice(0,fr),key:'"'+e.slice(fr+1)+'"'}:{exp:e,key:null};cr=e,fr=pr=dr=0;for(;!Ir();)kr(lr=Dr())?Lr(lr):91===lr&&Nr(lr);return{exp:e.slice(0,pr),key:e.slice(pr+1,dr)}}(e);return null===n.key?e+"="+t:"$set("+n.exp+", "+n.key+", "+t+")"}function Dr(){return cr.charCodeAt(++fr)}function Ir(){return fr>=ur}function kr(e){return 34===e||39===e}function Nr(e){var t=1;for(pr=fr;!Ir();)if(kr(e=Dr()))Lr(e);else if(91===e&&t++,93===e&&t--,0===t){dr=fr;break}}function Lr(e){for(var t=e;!Ir()&&(e=Dr())!==t;);}var jr,Pr="__r",Rr="__c";function $r(e,t,n){var r=jr;return function i(){null!==t.apply(null,arguments)&&Mr(e,i,n,r)}}function Hr(e,t,n,r){var i;t=(i=t)._withTask||(i._withTask=function(){Ge=!0;try{return i.apply(null,arguments)}finally{Ge=!1}}),jr.addEventListener(e,t,ee?{capture:n,passive:r}:n)}function Mr(e,t,n,r){(r||jr).removeEventListener(e,t._withTask||t,n)}function Fr(e,t){if(!i(e.data.on)||!i(t.data.on)){var n=t.data.on||{},r=e.data.on||{};jr=t.elm,function(e){if(o(e[Pr])){var t=X?"change":"input";e[t]=[].concat(e[Pr],e[t]||[]),delete e[Pr]}o(e[Rr])&&(e.change=[].concat(e[Rr],e.change||[]),delete e[Rr])}(n),it(n,r,Hr,Mr,$r,t.context),jr=void 0}}var Wr={create:Fr,update:Fr};function qr(e,t){if(!i(e.data.domProps)||!i(t.data.domProps)){var n,r,a=t.elm,s=e.data.domProps||{},u=t.data.domProps||{};for(n in o(u.__ob__)&&(u=t.data.domProps=D({},u)),s)i(u[n])&&(a[n]="");for(n in u){if(r=u[n],"textContent"===n||"innerHTML"===n){if(t.children&&(t.children.length=0),r===s[n])continue;1===a.childNodes.length&&a.removeChild(a.childNodes[0])}if("value"===n){a._value=r;var c=i(r)?"":String(r);Br(a,c)&&(a.value=c)}else a[n]=r}}}function Br(e,t){return!e.composing&&("OPTION"===e.tagName||function(e,t){var n=!0;try{n=document.activeElement!==e}catch(e){}return n&&e.value!==t}(e,t)||function(e,t){var n=e.value,r=e._vModifiers;if(o(r)){if(r.lazy)return!1;if(r.number)return h(n)!==h(t);if(r.trim)return n.trim()!==t.trim()}return n!==t}(e,t))}var Ur={create:qr,update:qr},Vr=w(function(e){var t={},n=/:(.+)/;return e.split(/;(?![^(]*\))/g).forEach(function(e){if(e){var r=e.split(n);r.length>1&&(t[r[0].trim()]=r[1].trim())}}),t});function zr(e){var t=Kr(e.style);return e.staticStyle?D(e.staticStyle,t):t}function Kr(e){return Array.isArray(e)?I(e):"string"==typeof e?Vr(e):e}var Gr,Xr=/^--/,Qr=/\s*!important$/,Yr=function(e,t,n){if(Xr.test(t))e.style.setProperty(t,n);else if(Qr.test(n))e.style.setProperty(t,n.replace(Qr,""),"important");else{var r=Zr(t);if(Array.isArray(n))for(var i=0,o=n.length;i<o;i++)e.style[r]=n[i];else e.style[r]=n}},Jr=["Webkit","Moz","ms"],Zr=w(function(e){if(Gr=Gr||document.createElement("div").style,"filter"!==(e=E(e))&&e in Gr)return e;for(var t=e.charAt(0).toUpperCase()+e.slice(1),n=0;n<Jr.length;n++){var r=Jr[n]+t;if(r in Gr)return r}});function ei(e,t){var n=t.data,r=e.data;if(!(i(n.staticStyle)&&i(n.style)&&i(r.staticStyle)&&i(r.style))){var a,s,u=t.elm,c=r.staticStyle,l=r.normalizedStyle||r.style||{},f=c||l,p=Kr(t.data.style)||{};t.data.normalizedStyle=o(p.__ob__)?D({},p):p;var d=function(e,t){var n,r={};if(t)for(var i=e;i.componentInstance;)(i=i.componentInstance._vnode)&&i.data&&(n=zr(i.data))&&D(r,n);(n=zr(e.data))&&D(r,n);for(var o=e;o=o.parent;)o.data&&(n=zr(o.data))&&D(r,n);return r}(t,!0);for(s in f)i(d[s])&&Yr(u,s,"");for(s in d)(a=d[s])!==f[s]&&Yr(u,s,null==a?"":a)}}var ti={create:ei,update:ei},ni=/\s+/;function ri(e,t){if(t&&(t=t.trim()))if(e.classList)t.indexOf(" ")>-1?t.split(ni).forEach(function(t){return e.classList.add(t)}):e.classList.add(t);else{var n=" "+(e.getAttribute("class")||"")+" ";n.indexOf(" "+t+" ")<0&&e.setAttribute("class",(n+t).trim())}}function ii(e,t){if(t&&(t=t.trim()))if(e.classList)t.indexOf(" ")>-1?t.split(ni).forEach(function(t){return e.classList.remove(t)}):e.classList.remove(t),e.classList.length||e.removeAttribute("class");else{for(var n=" "+(e.getAttribute("class")||"")+" ",r=" "+t+" ";n.indexOf(r)>=0;)n=n.replace(r," ");(n=n.trim())?e.setAttribute("class",n):e.removeAttribute("class")}}function oi(e){if(e){if("object"==typeof e){var t={};return!1!==e.css&&D(t,ai(e.name||"v")),D(t,e),t}return"string"==typeof e?ai(e):void 0}}var ai=w(function(e){return{enterClass:e+"-enter",enterToClass:e+"-enter-to",enterActiveClass:e+"-enter-active",leaveClass:e+"-leave",leaveToClass:e+"-leave-to",leaveActiveClass:e+"-leave-active"}}),si=V&&!Q,ui="transition",ci="animation",li="transition",fi="transitionend",pi="animation",di="animationend";si&&(void 0===window.ontransitionend&&void 0!==window.onwebkittransitionend&&(li="WebkitTransition",fi="webkitTransitionEnd"),void 0===window.onanimationend&&void 0!==window.onwebkitanimationend&&(pi="WebkitAnimation",di="webkitAnimationEnd"));var hi=V?window.requestAnimationFrame?window.requestAnimationFrame.bind(window):setTimeout:function(e){return e()};function vi(e){hi(function(){hi(e)})}function gi(e,t){var n=e._transitionClasses||(e._transitionClasses=[]);n.indexOf(t)<0&&(n.push(t),ri(e,t))}function mi(e,t){e._transitionClasses&&y(e._transitionClasses,t),ii(e,t)}function yi(e,t,n){var r=bi(e,t),i=r.type,o=r.timeout,a=r.propCount;if(!i)return n();var s=i===ui?fi:di,u=0,c=function(){e.removeEventListener(s,l),n()},l=function(t){t.target===e&&++u>=a&&c()};setTimeout(function(){u<a&&c()},o+1),e.addEventListener(s,l)}var _i=/\b(transform|all)(,|$)/;function bi(e,t){var n,r=window.getComputedStyle(e),i=(r[li+"Delay"]||"").split(", "),o=(r[li+"Duration"]||"").split(", "),a=wi(i,o),s=(r[pi+"Delay"]||"").split(", "),u=(r[pi+"Duration"]||"").split(", "),c=wi(s,u),l=0,f=0;return t===ui?a>0&&(n=ui,l=a,f=o.length):t===ci?c>0&&(n=ci,l=c,f=u.length):f=(n=(l=Math.max(a,c))>0?a>c?ui:ci:null)?n===ui?o.length:u.length:0,{type:n,timeout:l,propCount:f,hasTransform:n===ui&&_i.test(r[li+"Property"])}}function wi(e,t){for(;e.length<t.length;)e=e.concat(e);return Math.max.apply(null,t.map(function(t,n){return Ti(t)+Ti(e[n])}))}function Ti(e){return 1e3*Number(e.slice(0,-1).replace(",","."))}function Ei(e,t){var n=e.elm;o(n._leaveCb)&&(n._leaveCb.cancelled=!0,n._leaveCb());var r=oi(e.data.transition);if(!i(r)&&!o(n._enterCb)&&1===n.nodeType){for(var a=r.css,s=r.type,c=r.enterClass,l=r.enterToClass,f=r.enterActiveClass,p=r.appearClass,d=r.appearToClass,v=r.appearActiveClass,g=r.beforeEnter,m=r.enter,y=r.afterEnter,_=r.enterCancelled,b=r.beforeAppear,w=r.appear,T=r.afterAppear,E=r.appearCancelled,x=r.duration,C=_t,A=_t.$vnode;A&&A.parent;)C=(A=A.parent).context;var S=!C._isMounted||!e.isRootInsert;if(!S||w||""===w){var O=S&&p?p:c,D=S&&v?v:f,I=S&&d?d:l,k=S&&b||g,N=S&&"function"==typeof w?w:m,L=S&&T||y,j=S&&E||_,P=h(u(x)?x.enter:x);0;var $=!1!==a&&!Q,H=Ai(N),M=n._enterCb=R(function(){$&&(mi(n,I),mi(n,D)),M.cancelled?($&&mi(n,O),j&&j(n)):L&&L(n),n._enterCb=null});e.data.show||ot(e,"insert",function(){var t=n.parentNode,r=t&&t._pending&&t._pending[e.key];r&&r.tag===e.tag&&r.elm._leaveCb&&r.elm._leaveCb(),N&&N(n,M)}),k&&k(n),$&&(gi(n,O),gi(n,D),vi(function(){mi(n,O),M.cancelled||(gi(n,I),H||(Ci(P)?setTimeout(M,P):yi(n,s,M)))})),e.data.show&&(t&&t(),N&&N(n,M)),$||H||M()}}}function xi(e,t){var n=e.elm;o(n._enterCb)&&(n._enterCb.cancelled=!0,n._enterCb());var r=oi(e.data.transition);if(i(r)||1!==n.nodeType)return t();if(!o(n._leaveCb)){var a=r.css,s=r.type,c=r.leaveClass,l=r.leaveToClass,f=r.leaveActiveClass,p=r.beforeLeave,d=r.leave,v=r.afterLeave,g=r.leaveCancelled,m=r.delayLeave,y=r.duration,_=!1!==a&&!Q,b=Ai(d),w=h(u(y)?y.leave:y);0;var T=n._leaveCb=R(function(){n.parentNode&&n.parentNode._pending&&(n.parentNode._pending[e.key]=null),_&&(mi(n,l),mi(n,f)),T.cancelled?(_&&mi(n,c),g&&g(n)):(t(),v&&v(n)),n._leaveCb=null});m?m(E):E()}function E(){T.cancelled||(!e.data.show&&n.parentNode&&((n.parentNode._pending||(n.parentNode._pending={}))[e.key]=e),p&&p(n),_&&(gi(n,c),gi(n,f),vi(function(){mi(n,c),T.cancelled||(gi(n,l),b||(Ci(w)?setTimeout(T,w):yi(n,s,T)))})),d&&d(n,T),_||b||T())}}function Ci(e){return"number"==typeof e&&!isNaN(e)}function Ai(e){if(i(e))return!1;var t=e.fns;return o(t)?Ai(Array.isArray(t)?t[0]:t):(e._length||e.length)>1}function Si(e,t){!0!==t.data.show&&Ei(t)}var Oi=function(e){var t,n,r={},u=e.modules,c=e.nodeOps;for(t=0;t<Kn.length;++t)for(r[Kn[t]]=[],n=0;n<u.length;++n)o(u[n][Kn[t]])&&r[Kn[t]].push(u[n][Kn[t]]);function l(e){var t=c.parentNode(e);o(t)&&c.removeChild(t,e)}function f(e,t,n,i,s,u,l){if(o(e.elm)&&o(u)&&(e=u[l]=me(e)),e.isRootInsert=!s,!function(e,t,n,i){var s=e.data;if(o(s)){var u=o(e.componentInstance)&&s.keepAlive;if(o(s=s.hook)&&o(s=s.init)&&s(e,!1),o(e.componentInstance))return p(e,t),d(n,e.elm,i),a(u)&&function(e,t,n,i){for(var a,s=e;s.componentInstance;)if(s=s.componentInstance._vnode,o(a=s.data)&&o(a=a.transition)){for(a=0;a<r.activate.length;++a)r.activate[a](zn,s);t.push(s);break}d(n,e.elm,i)}(e,t,n,i),!0}}(e,t,n,i)){var f=e.data,v=e.children,g=e.tag;o(g)?(e.elm=e.ns?c.createElementNS(e.ns,g):c.createElement(g,e),y(e),h(e,v,t),o(f)&&m(e,t),d(n,e.elm,i)):a(e.isComment)?(e.elm=c.createComment(e.text),d(n,e.elm,i)):(e.elm=c.createTextNode(e.text),d(n,e.elm,i))}}function p(e,t){o(e.data.pendingInsert)&&(t.push.apply(t,e.data.pendingInsert),e.data.pendingInsert=null),e.elm=e.componentInstance.$el,g(e)?(m(e,t),y(e)):(Vn(e),t.push(e))}function d(e,t,n){o(e)&&(o(n)?c.parentNode(n)===e&&c.insertBefore(e,t,n):c.appendChild(e,t))}function h(e,t,n){if(Array.isArray(t))for(var r=0;r<t.length;++r)f(t[r],n,e.elm,null,!0,t,r);else s(e.text)&&c.appendChild(e.elm,c.createTextNode(String(e.text)))}function g(e){for(;e.componentInstance;)e=e.componentInstance._vnode;return o(e.tag)}function m(e,n){for(var i=0;i<r.create.length;++i)r.create[i](zn,e);o(t=e.data.hook)&&(o(t.create)&&t.create(zn,e),o(t.insert)&&n.push(e))}function y(e){var t;if(o(t=e.fnScopeId))c.setStyleScope(e.elm,t);else for(var n=e;n;)o(t=n.context)&&o(t=t.$options._scopeId)&&c.setStyleScope(e.elm,t),n=n.parent;o(t=_t)&&t!==e.context&&t!==e.fnContext&&o(t=t.$options._scopeId)&&c.setStyleScope(e.elm,t)}function _(e,t,n,r,i,o){for(;r<=i;++r)f(n[r],o,e,t,!1,n,r)}function b(e){var t,n,i=e.data;if(o(i))for(o(t=i.hook)&&o(t=t.destroy)&&t(e),t=0;t<r.destroy.length;++t)r.destroy[t](e);if(o(t=e.children))for(n=0;n<e.children.length;++n)b(e.children[n])}function w(e,t,n,r){for(;n<=r;++n){var i=t[n];o(i)&&(o(i.tag)?(T(i),b(i)):l(i.elm))}}function T(e,t){if(o(t)||o(e.data)){var n,i=r.remove.length+1;for(o(t)?t.listeners+=i:t=function(e,t){function n(){0==--n.listeners&&l(e)}return n.listeners=t,n}(e.elm,i),o(n=e.componentInstance)&&o(n=n._vnode)&&o(n.data)&&T(n,t),n=0;n<r.remove.length;++n)r.remove[n](e,t);o(n=e.data.hook)&&o(n=n.remove)?n(e,t):t()}else l(e.elm)}function E(e,t,n,r){for(var i=n;i<r;i++){var a=t[i];if(o(a)&&Gn(e,a))return i}}function x(e,t,n,s,u,l){if(e!==t){o(t.elm)&&o(s)&&(t=s[u]=me(t));var p=t.elm=e.elm;if(a(e.isAsyncPlaceholder))o(t.asyncFactory.resolved)?S(e.elm,t,n):t.isAsyncPlaceholder=!0;else if(a(t.isStatic)&&a(e.isStatic)&&t.key===e.key&&(a(t.isCloned)||a(t.isOnce)))t.componentInstance=e.componentInstance;else{var d,h=t.data;o(h)&&o(d=h.hook)&&o(d=d.prepatch)&&d(e,t);var v=e.children,m=t.children;if(o(h)&&g(t)){for(d=0;d<r.update.length;++d)r.update[d](e,t);o(d=h.hook)&&o(d=d.update)&&d(e,t)}i(t.text)?o(v)&&o(m)?v!==m&&function(e,t,n,r,a){for(var s,u,l,p=0,d=0,h=t.length-1,v=t[0],g=t[h],m=n.length-1,y=n[0],b=n[m],T=!a;p<=h&&d<=m;)i(v)?v=t[++p]:i(g)?g=t[--h]:Gn(v,y)?(x(v,y,r,n,d),v=t[++p],y=n[++d]):Gn(g,b)?(x(g,b,r,n,m),g=t[--h],b=n[--m]):Gn(v,b)?(x(v,b,r,n,m),T&&c.insertBefore(e,v.elm,c.nextSibling(g.elm)),v=t[++p],b=n[--m]):Gn(g,y)?(x(g,y,r,n,d),T&&c.insertBefore(e,g.elm,v.elm),g=t[--h],y=n[++d]):(i(s)&&(s=Xn(t,p,h)),i(u=o(y.key)?s[y.key]:E(y,t,p,h))?f(y,r,e,v.elm,!1,n,d):Gn(l=t[u],y)?(x(l,y,r,n,d),t[u]=void 0,T&&c.insertBefore(e,l.elm,v.elm)):f(y,r,e,v.elm,!1,n,d),y=n[++d]);p>h?_(e,i(n[m+1])?null:n[m+1].elm,n,d,m,r):d>m&&w(0,t,p,h)}(p,v,m,n,l):o(m)?(o(e.text)&&c.setTextContent(p,""),_(p,null,m,0,m.length-1,n)):o(v)?w(0,v,0,v.length-1):o(e.text)&&c.setTextContent(p,""):e.text!==t.text&&c.setTextContent(p,t.text),o(h)&&o(d=h.hook)&&o(d=d.postpatch)&&d(e,t)}}}function C(e,t,n){if(a(n)&&o(e.parent))e.parent.data.pendingInsert=t;else for(var r=0;r<t.length;++r)t[r].data.hook.insert(t[r])}var A=v("attrs,class,staticClass,staticStyle,key");function S(e,t,n,r){var i,s=t.tag,u=t.data,c=t.children;if(r=r||u&&u.pre,t.elm=e,a(t.isComment)&&o(t.asyncFactory))return t.isAsyncPlaceholder=!0,!0;if(o(u)&&(o(i=u.hook)&&o(i=i.init)&&i(t,!0),o(i=t.componentInstance)))return p(t,n),!0;if(o(s)){if(o(c))if(e.hasChildNodes())if(o(i=u)&&o(i=i.domProps)&&o(i=i.innerHTML)){if(i!==e.innerHTML)return!1}else{for(var l=!0,f=e.firstChild,d=0;d<c.length;d++){if(!f||!S(f,c[d],n,r)){l=!1;break}f=f.nextSibling}if(!l||f)return!1}else h(t,c,n);if(o(u)){var v=!1;for(var g in u)if(!A(g)){v=!0,m(t,n);break}!v&&u.class&&et(u.class)}}else e.data!==t.text&&(e.data=t.text);return!0}return function(e,t,n,s){if(!i(t)){var u,l=!1,p=[];if(i(e))l=!0,f(t,p);else{var d=o(e.nodeType);if(!d&&Gn(e,t))x(e,t,p,null,null,s);else{if(d){if(1===e.nodeType&&e.hasAttribute($)&&(e.removeAttribute($),n=!0),a(n)&&S(e,t,p))return C(t,p,!0),e;u=e,e=new de(c.tagName(u).toLowerCase(),{},[],void 0,u)}var h=e.elm,v=c.parentNode(h);if(f(t,p,h._leaveCb?null:v,c.nextSibling(h)),o(t.parent))for(var m=t.parent,y=g(t);m;){for(var _=0;_<r.destroy.length;++_)r.destroy[_](m);if(m.elm=t.elm,y){for(var T=0;T<r.create.length;++T)r.create[T](zn,m);var E=m.data.hook.insert;if(E.merged)for(var A=1;A<E.fns.length;A++)E.fns[A]()}else Vn(m);m=m.parent}o(v)?w(0,[e],0,0):o(e.tag)&&b(e)}}return C(t,p,l),t.elm}o(e)&&b(e)}}({nodeOps:Bn,modules:[ar,hr,Wr,Ur,ti,V?{create:Si,activate:Si,remove:function(e,t){!0!==e.data.show?xi(e,t):t()}}:{}].concat(nr)});Q&&document.addEventListener("selectionchange",function(){var e=document.activeElement;e&&e.vmodel&&Ri(e,"input")});var Di={inserted:function(e,t,n,r){"select"===n.tag?(r.elm&&!r.elm._vOptions?ot(n,"postpatch",function(){Di.componentUpdated(e,t,n)}):Ii(e,t,n.context),e._vOptions=[].map.call(e.options,Li)):("textarea"===n.tag||Wn(e.type))&&(e._vModifiers=t.modifiers,t.modifiers.lazy||(e.addEventListener("compositionstart",ji),e.addEventListener("compositionend",Pi),e.addEventListener("change",Pi),Q&&(e.vmodel=!0)))},componentUpdated:function(e,t,n){if("select"===n.tag){Ii(e,t,n.context);var r=e._vOptions,i=e._vOptions=[].map.call(e.options,Li);if(i.some(function(e,t){return!j(e,r[t])}))(e.multiple?t.value.some(function(e){return Ni(e,i)}):t.value!==t.oldValue&&Ni(t.value,i))&&Ri(e,"change")}}};function Ii(e,t,n){ki(e,t,n),(X||Y)&&setTimeout(function(){ki(e,t,n)},0)}function ki(e,t,n){var r=t.value,i=e.multiple;if(!i||Array.isArray(r)){for(var o,a,s=0,u=e.options.length;s<u;s++)if(a=e.options[s],i)o=P(r,Li(a))>-1,a.selected!==o&&(a.selected=o);else if(j(Li(a),r))return void(e.selectedIndex!==s&&(e.selectedIndex=s));i||(e.selectedIndex=-1)}}function Ni(e,t){return t.every(function(t){return!j(t,e)})}function Li(e){return"_value"in e?e._value:e.value}function ji(e){e.target.composing=!0}function Pi(e){e.target.composing&&(e.target.composing=!1,Ri(e.target,"input"))}function Ri(e,t){var n=document.createEvent("HTMLEvents");n.initEvent(t,!0,!0),e.dispatchEvent(n)}function $i(e){return!e.componentInstance||e.data&&e.data.transition?e:$i(e.componentInstance._vnode)}var Hi={model:Di,show:{bind:function(e,t,n){var r=t.value,i=(n=$i(n)).data&&n.data.transition,o=e.__vOriginalDisplay="none"===e.style.display?"":e.style.display;r&&i?(n.data.show=!0,Ei(n,function(){e.style.display=o})):e.style.display=r?o:"none"},update:function(e,t,n){var r=t.value;!r!=!t.oldValue&&((n=$i(n)).data&&n.data.transition?(n.data.show=!0,r?Ei(n,function(){e.style.display=e.__vOriginalDisplay}):xi(n,function(){e.style.display="none"})):e.style.display=r?e.__vOriginalDisplay:"none")},unbind:function(e,t,n,r,i){i||(e.style.display=e.__vOriginalDisplay)}}},Mi={name:String,appear:Boolean,css:Boolean,mode:String,type:String,enterClass:String,leaveClass:String,enterToClass:String,leaveToClass:String,enterActiveClass:String,leaveActiveClass:String,appearClass:String,appearActiveClass:String,appearToClass:String,duration:[Number,String,Object]};function Fi(e){var t=e&&e.componentOptions;return t&&t.Ctor.options.abstract?Fi(ft(t.children)):e}function Wi(e){var t={},n=e.$options;for(var r in n.propsData)t[r]=e[r];var i=n._parentListeners;for(var o in i)t[E(o)]=i[o];return t}function qi(e,t){if(/\d-keep-alive$/.test(t.tag))return e("keep-alive",{props:t.componentOptions.propsData})}var Bi=function(e){return e.tag||lt(e)},Ui=function(e){return"show"===e.name},Vi={name:"transition",props:Mi,abstract:!0,render:function(e){var t=this,n=this.$slots.default;if(n&&(n=n.filter(Bi)).length){0;var r=this.mode;0;var i=n[0];if(function(e){for(;e=e.parent;)if(e.data.transition)return!0}(this.$vnode))return i;var o=Fi(i);if(!o)return i;if(this._leaving)return qi(e,i);var a="__transition-"+this._uid+"-";o.key=null==o.key?o.isComment?a+"comment":a+o.tag:s(o.key)?0===String(o.key).indexOf(a)?o.key:a+o.key:o.key;var u=(o.data||(o.data={})).transition=Wi(this),c=this._vnode,l=Fi(c);if(o.data.directives&&o.data.directives.some(Ui)&&(o.data.show=!0),l&&l.data&&!function(e,t){return t.key===e.key&&t.tag===e.tag}(o,l)&&!lt(l)&&(!l.componentInstance||!l.componentInstance._vnode.isComment)){var f=l.data.transition=D({},u);if("out-in"===r)return this._leaving=!0,ot(f,"afterLeave",function(){t._leaving=!1,t.$forceUpdate()}),qi(e,i);if("in-out"===r){if(lt(o))return c;var p,d=function(){p()};ot(u,"afterEnter",d),ot(u,"enterCancelled",d),ot(f,"delayLeave",function(e){p=e})}}return i}}},zi=D({tag:String,moveClass:String},Mi);function Ki(e){e.elm._moveCb&&e.elm._moveCb(),e.elm._enterCb&&e.elm._enterCb()}function Gi(e){e.data.newPos=e.elm.getBoundingClientRect()}function Xi(e){var t=e.data.pos,n=e.data.newPos,r=t.left-n.left,i=t.top-n.top;if(r||i){e.data.moved=!0;var o=e.elm.style;o.transform=o.WebkitTransform="translate("+r+"px,"+i+"px)",o.transitionDuration="0s"}}delete zi.mode;var Qi={Transition:Vi,TransitionGroup:{props:zi,beforeMount:function(){var e=this,t=this._update;this._update=function(n,r){var i=bt(e);e.__patch__(e._vnode,e.kept,!1,!0),e._vnode=e.kept,i(),t.call(e,n,r)}},render:function(e){for(var t=this.tag||this.$vnode.data.tag||"span",n=Object.create(null),r=this.prevChildren=this.children,i=this.$slots.default||[],o=this.children=[],a=Wi(this),s=0;s<i.length;s++){var u=i[s];if(u.tag)if(null!=u.key&&0!==String(u.key).indexOf("__vlist"))o.push(u),n[u.key]=u,(u.data||(u.data={})).transition=a;else;}if(r){for(var c=[],l=[],f=0;f<r.length;f++){var p=r[f];p.data.transition=a,p.data.pos=p.elm.getBoundingClientRect(),n[p.key]?c.push(p):l.push(p)}this.kept=e(t,null,c),this.removed=l}return e(t,null,o)},updated:function(){var e=this.prevChildren,t=this.moveClass||(this.name||"v")+"-move";e.length&&this.hasMove(e[0].elm,t)&&(e.forEach(Ki),e.forEach(Gi),e.forEach(Xi),this._reflow=document.body.offsetHeight,e.forEach(function(e){if(e.data.moved){var n=e.elm,r=n.style;gi(n,t),r.transform=r.WebkitTransform=r.transitionDuration="",n.addEventListener(fi,n._moveCb=function e(r){r&&r.target!==n||r&&!/transform$/.test(r.propertyName)||(n.removeEventListener(fi,e),n._moveCb=null,mi(n,t))})}}))},methods:{hasMove:function(e,t){if(!si)return!1;if(this._hasMove)return this._hasMove;var n=e.cloneNode();e._transitionClasses&&e._transitionClasses.forEach(function(e){ii(n,e)}),ri(n,t),n.style.display="none",this.$el.appendChild(n);var r=bi(n);return this.$el.removeChild(n),this._hasMove=r.hasTransform}}}};hn.config.mustUseProp=xn,hn.config.isReservedTag=Hn,hn.config.isReservedAttr=Tn,hn.config.getTagNamespace=Mn,hn.config.isUnknownElement=function(e){if(!V)return!0;if(Hn(e))return!1;if(e=e.toLowerCase(),null!=Fn[e])return Fn[e];var t=document.createElement(e);return e.indexOf("-")>-1?Fn[e]=t.constructor===window.HTMLUnknownElement||t.constructor===window.HTMLElement:Fn[e]=/HTMLUnknownElement/.test(t.toString())},D(hn.options.directives,Hi),D(hn.options.components,Qi),hn.prototype.__patch__=V?Oi:k,hn.prototype.$mount=function(e,t){return function(e,t,n){var r;return e.$el=t,e.$options.render||(e.$options.render=ve),Et(e,"beforeMount"),r=function(){e._update(e._render(),n)},new Nt(e,r,k,{before:function(){e._isMounted&&!e._isDestroyed&&Et(e,"beforeUpdate")}},!0),n=!1,null==e.$vnode&&(e._isMounted=!0,Et(e,"mounted")),e}(this,e=e&&V?qn(e):void 0,t)},V&&setTimeout(function(){F.devtools&&re&&re.emit("init",hn)},0);var Yi=/\{\{((?:.|\r?\n)+?)\}\}/g,Ji=/[-.*+?^${}()|[\]\/\\]/g,Zi=w(function(e){var t=e[0].replace(Ji,"\\$&"),n=e[1].replace(Ji,"\\$&");return new RegExp(t+"((?:.|\\n)+?)"+n,"g")});var eo={staticKeys:["staticClass"],transformNode:function(e,t){t.warn;var n=Ar(e,"class");n&&(e.staticClass=JSON.stringify(n));var r=Cr(e,"class",!1);r&&(e.classBinding=r)},genData:function(e){var t="";return e.staticClass&&(t+="staticClass:"+e.staticClass+","),e.classBinding&&(t+="class:"+e.classBinding+","),t}};var to,no={staticKeys:["staticStyle"],transformNode:function(e,t){t.warn;var n=Ar(e,"style");n&&(e.staticStyle=JSON.stringify(Vr(n)));var r=Cr(e,"style",!1);r&&(e.styleBinding=r)},genData:function(e){var t="";return e.staticStyle&&(t+="staticStyle:"+e.staticStyle+","),e.styleBinding&&(t+="style:("+e.styleBinding+"),"),t}},ro=function(e){return(to=to||document.createElement("div")).innerHTML=e,to.textContent},io=v("area,base,br,col,embed,frame,hr,img,input,isindex,keygen,link,meta,param,source,track,wbr"),oo=v("colgroup,dd,dt,li,options,p,td,tfoot,th,thead,tr,source"),ao=v("address,article,aside,base,blockquote,body,caption,col,colgroup,dd,details,dialog,div,dl,dt,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,head,header,hgroup,hr,html,legend,li,menuitem,meta,optgroup,option,param,rp,rt,source,style,summary,tbody,td,tfoot,th,thead,title,tr,track"),so=/^\s*([^\s"'<>\/=]+)(?:\s*(=)\s*(?:"([^"]*)"+|'([^']*)'+|([^\s"'=<>`]+)))?/,uo="[a-zA-Z_][\\w\\-\\.]*",co="((?:"+uo+"\\:)?"+uo+")",lo=new RegExp("^<"+co),fo=/^\s*(\/?)>/,po=new RegExp("^<\\/"+co+"[^>]*>"),ho=/^<!DOCTYPE [^>]+>/i,vo=/^<!\--/,go=/^<!\[/,mo=v("script,style,textarea",!0),yo={},_o={"&lt;":"<","&gt;":">","&quot;":'"',"&amp;":"&","&#10;":"\n","&#9;":"\t"},bo=/&(?:lt|gt|quot|amp);/g,wo=/&(?:lt|gt|quot|amp|#10|#9);/g,To=v("pre,textarea",!0),Eo=function(e,t){return e&&To(e)&&"\n"===t[0]};function xo(e,t){var n=t?wo:bo;return e.replace(n,function(e){return _o[e]})}var Co,Ao,So,Oo,Do,Io,ko,No,Lo=/^@|^v-on:/,jo=/^v-|^@|^:/,Po=/([\s\S]*?)\s+(?:in|of)\s+([\s\S]*)/,Ro=/,([^,\}\]]*)(?:,([^,\}\]]*))?$/,$o=/^\(|\)$/g,Ho=/:(.*)$/,Mo=/^:|^v-bind:/,Fo=/\.[^.]+/g,Wo=w(ro);function qo(e,t,n){return{type:1,tag:e,attrsList:t,attrsMap:Go(t),parent:n,children:[]}}function Bo(e,t){Co=t.warn||yr,Io=t.isPreTag||N,ko=t.mustUseProp||N,No=t.getTagNamespace||N,So=_r(t.modules,"transformNode"),Oo=_r(t.modules,"preTransformNode"),Do=_r(t.modules,"postTransformNode"),Ao=t.delimiters;var n,r,i=[],o=!1!==t.preserveWhitespace,a=!1,s=!1;function u(e){e.pre&&(a=!1),Io(e.tag)&&(s=!1);for(var n=0;n<Do.length;n++)Do[n](e,t)}return function(e,t){for(var n,r,i=[],o=t.expectHTML,a=t.isUnaryTag||N,s=t.canBeLeftOpenTag||N,u=0;e;){if(n=e,r&&mo(r)){var c=0,l=r.toLowerCase(),f=yo[l]||(yo[l]=new RegExp("([\\s\\S]*?)(</"+l+"[^>]*>)","i")),p=e.replace(f,function(e,n,r){return c=r.length,mo(l)||"noscript"===l||(n=n.replace(/<!\--([\s\S]*?)-->/g,"$1").replace(/<!\[CDATA\[([\s\S]*?)]]>/g,"$1")),Eo(l,n)&&(n=n.slice(1)),t.chars&&t.chars(n),""});u+=e.length-p.length,e=p,A(l,u-c,u)}else{var d=e.indexOf("<");if(0===d){if(vo.test(e)){var h=e.indexOf("--\x3e");if(h>=0){t.shouldKeepComment&&t.comment(e.substring(4,h)),E(h+3);continue}}if(go.test(e)){var v=e.indexOf("]>");if(v>=0){E(v+2);continue}}var g=e.match(ho);if(g){E(g[0].length);continue}var m=e.match(po);if(m){var y=u;E(m[0].length),A(m[1],y,u);continue}var _=x();if(_){C(_),Eo(_.tagName,e)&&E(1);continue}}var b=void 0,w=void 0,T=void 0;if(d>=0){for(w=e.slice(d);!(po.test(w)||lo.test(w)||vo.test(w)||go.test(w)||(T=w.indexOf("<",1))<0);)d+=T,w=e.slice(d);b=e.substring(0,d),E(d)}d<0&&(b=e,e=""),t.chars&&b&&t.chars(b)}if(e===n){t.chars&&t.chars(e);break}}function E(t){u+=t,e=e.substring(t)}function x(){var t=e.match(lo);if(t){var n,r,i={tagName:t[1],attrs:[],start:u};for(E(t[0].length);!(n=e.match(fo))&&(r=e.match(so));)E(r[0].length),i.attrs.push(r);if(n)return i.unarySlash=n[1],E(n[0].length),i.end=u,i}}function C(e){var n=e.tagName,u=e.unarySlash;o&&("p"===r&&ao(n)&&A(r),s(n)&&r===n&&A(n));for(var c=a(n)||!!u,l=e.attrs.length,f=new Array(l),p=0;p<l;p++){var d=e.attrs[p],h=d[3]||d[4]||d[5]||"",v="a"===n&&"href"===d[1]?t.shouldDecodeNewlinesForHref:t.shouldDecodeNewlines;f[p]={name:d[1],value:xo(h,v)}}c||(i.push({tag:n,lowerCasedTag:n.toLowerCase(),attrs:f}),r=n),t.start&&t.start(n,f,c,e.start,e.end)}function A(e,n,o){var a,s;if(null==n&&(n=u),null==o&&(o=u),e)for(s=e.toLowerCase(),a=i.length-1;a>=0&&i[a].lowerCasedTag!==s;a--);else a=0;if(a>=0){for(var c=i.length-1;c>=a;c--)t.end&&t.end(i[c].tag,n,o);i.length=a,r=a&&i[a-1].tag}else"br"===s?t.start&&t.start(e,[],!0,n,o):"p"===s&&(t.start&&t.start(e,[],!1,n,o),t.end&&t.end(e,n,o))}A()}(e,{warn:Co,expectHTML:t.expectHTML,isUnaryTag:t.isUnaryTag,canBeLeftOpenTag:t.canBeLeftOpenTag,shouldDecodeNewlines:t.shouldDecodeNewlines,shouldDecodeNewlinesForHref:t.shouldDecodeNewlinesForHref,shouldKeepComment:t.comments,start:function(e,o,c){var l=r&&r.ns||No(e);X&&"svg"===l&&(o=function(e){for(var t=[],n=0;n<e.length;n++){var r=e[n];Xo.test(r.name)||(r.name=r.name.replace(Qo,""),t.push(r))}return t}(o));var f,p=qo(e,o,r);l&&(p.ns=l),"style"!==(f=p).tag&&("script"!==f.tag||f.attrsMap.type&&"text/javascript"!==f.attrsMap.type)||ne()||(p.forbidden=!0);for(var d=0;d<Oo.length;d++)p=Oo[d](p,t)||p;function h(e){0}if(a||(!function(e){null!=Ar(e,"v-pre")&&(e.pre=!0)}(p),p.pre&&(a=!0)),Io(p.tag)&&(s=!0),a?function(e){var t=e.attrsList.length;if(t)for(var n=e.attrs=new Array(t),r=0;r<t;r++)n[r]={name:e.attrsList[r].name,value:JSON.stringify(e.attrsList[r].value)};else e.pre||(e.plain=!0)}(p):p.processed||(Vo(p),function(e){var t=Ar(e,"v-if");if(t)e.if=t,zo(e,{exp:t,block:e});else{null!=Ar(e,"v-else")&&(e.else=!0);var n=Ar(e,"v-else-if");n&&(e.elseif=n)}}(p),function(e){null!=Ar(e,"v-once")&&(e.once=!0)}(p),Uo(p,t)),n?i.length||n.if&&(p.elseif||p.else)&&(h(),zo(n,{exp:p.elseif,block:p})):(n=p,h()),r&&!p.forbidden)if(p.elseif||p.else)!function(e,t){var n=function(e){var t=e.length;for(;t--;){if(1===e[t].type)return e[t];e.pop()}}(t.children);n&&n.if&&zo(n,{exp:e.elseif,block:e})}(p,r);else if(p.slotScope){r.plain=!1;var v=p.slotTarget||'"default"';(r.scopedSlots||(r.scopedSlots={}))[v]=p}else r.children.push(p),p.parent=r;c?u(p):(r=p,i.push(p))},end:function(){var e=i[i.length-1],t=e.children[e.children.length-1];t&&3===t.type&&" "===t.text&&!s&&e.children.pop(),i.length-=1,r=i[i.length-1],u(e)},chars:function(e){if(r&&(!X||"textarea"!==r.tag||r.attrsMap.placeholder!==e)){var t,n,i=r.children;if(e=s||e.trim()?"script"===(t=r).tag||"style"===t.tag?e:Wo(e):o&&i.length?" ":"")!a&&" "!==e&&(n=function(e,t){var n=t?Zi(t):Yi;if(n.test(e)){for(var r,i,o,a=[],s=[],u=n.lastIndex=0;r=n.exec(e);){(i=r.index)>u&&(s.push(o=e.slice(u,i)),a.push(JSON.stringify(o)));var c=gr(r[1].trim());a.push("_s("+c+")"),s.push({"@binding":c}),u=i+r[0].length}return u<e.length&&(s.push(o=e.slice(u)),a.push(JSON.stringify(o))),{expression:a.join("+"),tokens:s}}}(e,Ao))?i.push({type:2,expression:n.expression,tokens:n.tokens,text:e}):" "===e&&i.length&&" "===i[i.length-1].text||i.push({type:3,text:e})}},comment:function(e){r.children.push({type:3,text:e,isComment:!0})}}),n}function Uo(e,t){var n,r;!function(e){var t=Cr(e,"key");if(t){e.key=t}}(e),e.plain=!e.key&&!e.attrsList.length,(r=Cr(n=e,"ref"))&&(n.ref=r,n.refInFor=function(e){for(var t=e;t;){if(void 0!==t.for)return!0;t=t.parent}return!1}(n)),function(e){if("slot"===e.tag)e.slotName=Cr(e,"name");else{var t;"template"===e.tag?(t=Ar(e,"scope"),e.slotScope=t||Ar(e,"slot-scope")):(t=Ar(e,"slot-scope"))&&(e.slotScope=t);var n=Cr(e,"slot");n&&(e.slotTarget='""'===n?'"default"':n,"template"===e.tag||e.slotScope||wr(e,"slot",n))}}(e),function(e){var t;(t=Cr(e,"is"))&&(e.component=t);null!=Ar(e,"inline-template")&&(e.inlineTemplate=!0)}(e);for(var i=0;i<So.length;i++)e=So[i](e,t)||e;!function(e){var t,n,r,i,o,a,s,u=e.attrsList;for(t=0,n=u.length;t<n;t++){if(r=i=u[t].name,o=u[t].value,jo.test(r))if(e.hasBindings=!0,(a=Ko(r))&&(r=r.replace(Fo,"")),Mo.test(r))r=r.replace(Mo,""),o=gr(o),s=!1,a&&(a.prop&&(s=!0,"innerHtml"===(r=E(r))&&(r="innerHTML")),a.camel&&(r=E(r)),a.sync&&xr(e,"update:"+E(r),Or(o,"$event"))),s||!e.component&&ko(e.tag,e.attrsMap.type,r)?br(e,r,o):wr(e,r,o);else if(Lo.test(r))r=r.replace(Lo,""),xr(e,r,o,a,!1);else{var c=(r=r.replace(jo,"")).match(Ho),l=c&&c[1];l&&(r=r.slice(0,-(l.length+1))),Er(e,r,i,o,l,a)}else wr(e,r,JSON.stringify(o)),!e.component&&"muted"===r&&ko(e.tag,e.attrsMap.type,r)&&br(e,r,"true")}}(e)}function Vo(e){var t;if(t=Ar(e,"v-for")){var n=function(e){var t=e.match(Po);if(!t)return;var n={};n.for=t[2].trim();var r=t[1].trim().replace($o,""),i=r.match(Ro);i?(n.alias=r.replace(Ro,"").trim(),n.iterator1=i[1].trim(),i[2]&&(n.iterator2=i[2].trim())):n.alias=r;return n}(t);n&&D(e,n)}}function zo(e,t){e.ifConditions||(e.ifConditions=[]),e.ifConditions.push(t)}function Ko(e){var t=e.match(Fo);if(t){var n={};return t.forEach(function(e){n[e.slice(1)]=!0}),n}}function Go(e){for(var t={},n=0,r=e.length;n<r;n++)t[e[n].name]=e[n].value;return t}var Xo=/^xmlns:NS\d+/,Qo=/^NS\d+:/;function Yo(e){return qo(e.tag,e.attrsList.slice(),e.parent)}var Jo=[eo,no,{preTransformNode:function(e,t){if("input"===e.tag){var n,r=e.attrsMap;if(!r["v-model"])return;if((r[":type"]||r["v-bind:type"])&&(n=Cr(e,"type")),r.type||n||!r["v-bind"]||(n="("+r["v-bind"]+").type"),n){var i=Ar(e,"v-if",!0),o=i?"&&("+i+")":"",a=null!=Ar(e,"v-else",!0),s=Ar(e,"v-else-if",!0),u=Yo(e);Vo(u),Tr(u,"type","checkbox"),Uo(u,t),u.processed=!0,u.if="("+n+")==='checkbox'"+o,zo(u,{exp:u.if,block:u});var c=Yo(e);Ar(c,"v-for",!0),Tr(c,"type","radio"),Uo(c,t),zo(u,{exp:"("+n+")==='radio'"+o,block:c});var l=Yo(e);return Ar(l,"v-for",!0),Tr(l,":type",n),Uo(l,t),zo(u,{exp:i,block:l}),a?u.else=!0:s&&(u.elseif=s),u}}}}];var Zo,ea,ta={expectHTML:!0,modules:Jo,directives:{model:function(e,t,n){n;var r=t.value,i=t.modifiers,o=e.tag,a=e.attrsMap.type;if(e.component)return Sr(e,r,i),!1;if("select"===o)!function(e,t,n){var r='var $$selectedVal = Array.prototype.filter.call($event.target.options,function(o){return o.selected}).map(function(o){var val = "_value" in o ? o._value : o.value;return '+(n&&n.number?"_n(val)":"val")+"});";r=r+" "+Or(t,"$event.target.multiple ? $$selectedVal : $$selectedVal[0]"),xr(e,"change",r,null,!0)}(e,r,i);else if("input"===o&&"checkbox"===a)!function(e,t,n){var r=n&&n.number,i=Cr(e,"value")||"null",o=Cr(e,"true-value")||"true",a=Cr(e,"false-value")||"false";br(e,"checked","Array.isArray("+t+")?_i("+t+","+i+")>-1"+("true"===o?":("+t+")":":_q("+t+","+o+")")),xr(e,"change","var $$a="+t+",$$el=$event.target,$$c=$$el.checked?("+o+"):("+a+");if(Array.isArray($$a)){var $$v="+(r?"_n("+i+")":i)+",$$i=_i($$a,$$v);if($$el.checked){$$i<0&&("+Or(t,"$$a.concat([$$v])")+")}else{$$i>-1&&("+Or(t,"$$a.slice(0,$$i).concat($$a.slice($$i+1))")+")}}else{"+Or(t,"$$c")+"}",null,!0)}(e,r,i);else if("input"===o&&"radio"===a)!function(e,t,n){var r=n&&n.number,i=Cr(e,"value")||"null";br(e,"checked","_q("+t+","+(i=r?"_n("+i+")":i)+")"),xr(e,"change",Or(t,i),null,!0)}(e,r,i);else if("input"===o||"textarea"===o)!function(e,t,n){var r=e.attrsMap.type,i=n||{},o=i.lazy,a=i.number,s=i.trim,u=!o&&"range"!==r,c=o?"change":"range"===r?Pr:"input",l="$event.target.value";s&&(l="$event.target.value.trim()"),a&&(l="_n("+l+")");var f=Or(t,l);u&&(f="if($event.target.composing)return;"+f),br(e,"value","("+t+")"),xr(e,c,f,null,!0),(s||a)&&xr(e,"blur","$forceUpdate()")}(e,r,i);else if(!F.isReservedTag(o))return Sr(e,r,i),!1;return!0},text:function(e,t){t.value&&br(e,"textContent","_s("+t.value+")")},html:function(e,t){t.value&&br(e,"innerHTML","_s("+t.value+")")}},isPreTag:function(e){return"pre"===e},isUnaryTag:io,mustUseProp:xn,canBeLeftOpenTag:oo,isReservedTag:Hn,getTagNamespace:Mn,staticKeys:function(e){return e.reduce(function(e,t){return e.concat(t.staticKeys||[])},[]).join(",")}(Jo)},na=w(function(e){return v("type,tag,attrsList,attrsMap,plain,parent,children,attrs"+(e?","+e:""))});function ra(e,t){e&&(Zo=na(t.staticKeys||""),ea=t.isReservedTag||N,function e(t){t.static=function(e){if(2===e.type)return!1;if(3===e.type)return!0;return!(!e.pre&&(e.hasBindings||e.if||e.for||g(e.tag)||!ea(e.tag)||function(e){for(;e.parent;){if("template"!==(e=e.parent).tag)return!1;if(e.for)return!0}return!1}(e)||!Object.keys(e).every(Zo)))}(t);if(1===t.type){if(!ea(t.tag)&&"slot"!==t.tag&&null==t.attrsMap["inline-template"])return;for(var n=0,r=t.children.length;n<r;n++){var i=t.children[n];e(i),i.static||(t.static=!1)}if(t.ifConditions)for(var o=1,a=t.ifConditions.length;o<a;o++){var s=t.ifConditions[o].block;e(s),s.static||(t.static=!1)}}}(e),function e(t,n){if(1===t.type){if((t.static||t.once)&&(t.staticInFor=n),t.static&&t.children.length&&(1!==t.children.length||3!==t.children[0].type))return void(t.staticRoot=!0);if(t.staticRoot=!1,t.children)for(var r=0,i=t.children.length;r<i;r++)e(t.children[r],n||!!t.for);if(t.ifConditions)for(var o=1,a=t.ifConditions.length;o<a;o++)e(t.ifConditions[o].block,n)}}(e,!1))}var ia=/^([\w$_]+|\([^)]*?\))\s*=>|^function\s*\(/,oa=/^[A-Za-z_$][\w$]*(?:\.[A-Za-z_$][\w$]*|\['[^']*?']|\["[^"]*?"]|\[\d+]|\[[A-Za-z_$][\w$]*])*$/,aa={esc:27,tab:9,enter:13,space:32,up:38,left:37,right:39,down:40,delete:[8,46]},sa={esc:["Esc","Escape"],tab:"Tab",enter:"Enter",space:[" ","Spacebar"],up:["Up","ArrowUp"],left:["Left","ArrowLeft"],right:["Right","ArrowRight"],down:["Down","ArrowDown"],delete:["Backspace","Delete","Del"]},ua=function(e){return"if("+e+")return null;"},ca={stop:"$event.stopPropagation();",prevent:"$event.preventDefault();",self:ua("$event.target !== $event.currentTarget"),ctrl:ua("!$event.ctrlKey"),shift:ua("!$event.shiftKey"),alt:ua("!$event.altKey"),meta:ua("!$event.metaKey"),left:ua("'button' in $event && $event.button !== 0"),middle:ua("'button' in $event && $event.button !== 1"),right:ua("'button' in $event && $event.button !== 2")};function la(e,t){var n=t?"nativeOn:{":"on:{";for(var r in e)n+='"'+r+'":'+fa(r,e[r])+",";return n.slice(0,-1)+"}"}function fa(e,t){if(!t)return"function(){}";if(Array.isArray(t))return"["+t.map(function(t){return fa(e,t)}).join(",")+"]";var n=oa.test(t.value),r=ia.test(t.value);if(t.modifiers){var i="",o="",a=[];for(var s in t.modifiers)if(ca[s])o+=ca[s],aa[s]&&a.push(s);else if("exact"===s){var u=t.modifiers;o+=ua(["ctrl","shift","alt","meta"].filter(function(e){return!u[e]}).map(function(e){return"$event."+e+"Key"}).join("||"))}else a.push(s);return a.length&&(i+=function(e){return"if(!('button' in $event)&&"+e.map(pa).join("&&")+")return null;"}(a)),o&&(i+=o),"function($event){"+i+(n?"return "+t.value+"($event)":r?"return ("+t.value+")($event)":t.value)+"}"}return n||r?t.value:"function($event){"+t.value+"}"}function pa(e){var t=parseInt(e,10);if(t)return"$event.keyCode!=="+t;var n=aa[e],r=sa[e];return"_k($event.keyCode,"+JSON.stringify(e)+","+JSON.stringify(n)+",$event.key,"+JSON.stringify(r)+")"}var da={on:function(e,t){e.wrapListeners=function(e){return"_g("+e+","+t.value+")"}},bind:function(e,t){e.wrapData=function(n){return"_b("+n+",'"+e.tag+"',"+t.value+","+(t.modifiers&&t.modifiers.prop?"true":"false")+(t.modifiers&&t.modifiers.sync?",true":"")+")"}},cloak:k},ha=function(e){this.options=e,this.warn=e.warn||yr,this.transforms=_r(e.modules,"transformCode"),this.dataGenFns=_r(e.modules,"genData"),this.directives=D(D({},da),e.directives);var t=e.isReservedTag||N;this.maybeComponent=function(e){return!(t(e.tag)&&!e.component)},this.onceId=0,this.staticRenderFns=[],this.pre=!1};function va(e,t){var n=new ha(t);return{render:"with(this){return "+(e?ga(e,n):'_c("div")')+"}",staticRenderFns:n.staticRenderFns}}function ga(e,t){if(e.parent&&(e.pre=e.pre||e.parent.pre),e.staticRoot&&!e.staticProcessed)return ma(e,t);if(e.once&&!e.onceProcessed)return ya(e,t);if(e.for&&!e.forProcessed)return function(e,t,n,r){var i=e.for,o=e.alias,a=e.iterator1?","+e.iterator1:"",s=e.iterator2?","+e.iterator2:"";0;return e.forProcessed=!0,(r||"_l")+"(("+i+"),function("+o+a+s+"){return "+(n||ga)(e,t)+"})"}(e,t);if(e.if&&!e.ifProcessed)return _a(e,t);if("template"!==e.tag||e.slotTarget||t.pre){if("slot"===e.tag)return function(e,t){var n=e.slotName||'"default"',r=Ta(e,t),i="_t("+n+(r?","+r:""),o=e.attrs&&"{"+e.attrs.map(function(e){return E(e.name)+":"+e.value}).join(",")+"}",a=e.attrsMap["v-bind"];!o&&!a||r||(i+=",null");o&&(i+=","+o);a&&(i+=(o?"":",null")+","+a);return i+")"}(e,t);var n;if(e.component)n=function(e,t,n){var r=t.inlineTemplate?null:Ta(t,n,!0);return"_c("+e+","+ba(t,n)+(r?","+r:"")+")"}(e.component,e,t);else{var r;(!e.plain||e.pre&&t.maybeComponent(e))&&(r=ba(e,t));var i=e.inlineTemplate?null:Ta(e,t,!0);n="_c('"+e.tag+"'"+(r?","+r:"")+(i?","+i:"")+")"}for(var o=0;o<t.transforms.length;o++)n=t.transforms[o](e,n);return n}return Ta(e,t)||"void 0"}function ma(e,t){e.staticProcessed=!0;var n=t.pre;return e.pre&&(t.pre=e.pre),t.staticRenderFns.push("with(this){return "+ga(e,t)+"}"),t.pre=n,"_m("+(t.staticRenderFns.length-1)+(e.staticInFor?",true":"")+")"}function ya(e,t){if(e.onceProcessed=!0,e.if&&!e.ifProcessed)return _a(e,t);if(e.staticInFor){for(var n="",r=e.parent;r;){if(r.for){n=r.key;break}r=r.parent}return n?"_o("+ga(e,t)+","+t.onceId+++","+n+")":ga(e,t)}return ma(e,t)}function _a(e,t,n,r){return e.ifProcessed=!0,function e(t,n,r,i){if(!t.length)return i||"_e()";var o=t.shift();return o.exp?"("+o.exp+")?"+a(o.block)+":"+e(t,n,r,i):""+a(o.block);function a(e){return r?r(e,n):e.once?ya(e,n):ga(e,n)}}(e.ifConditions.slice(),t,n,r)}function ba(e,t){var n="{",r=function(e,t){var n=e.directives;if(!n)return;var r,i,o,a,s="directives:[",u=!1;for(r=0,i=n.length;r<i;r++){o=n[r],a=!0;var c=t.directives[o.name];c&&(a=!!c(e,o,t.warn)),a&&(u=!0,s+='{name:"'+o.name+'",rawName:"'+o.rawName+'"'+(o.value?",value:("+o.value+"),expression:"+JSON.stringify(o.value):"")+(o.arg?',arg:"'+o.arg+'"':"")+(o.modifiers?",modifiers:"+JSON.stringify(o.modifiers):"")+"},")}if(u)return s.slice(0,-1)+"]"}(e,t);r&&(n+=r+","),e.key&&(n+="key:"+e.key+","),e.ref&&(n+="ref:"+e.ref+","),e.refInFor&&(n+="refInFor:true,"),e.pre&&(n+="pre:true,"),e.component&&(n+='tag:"'+e.tag+'",');for(var i=0;i<t.dataGenFns.length;i++)n+=t.dataGenFns[i](e);if(e.attrs&&(n+="attrs:{"+Ca(e.attrs)+"},"),e.props&&(n+="domProps:{"+Ca(e.props)+"},"),e.events&&(n+=la(e.events,!1)+","),e.nativeEvents&&(n+=la(e.nativeEvents,!0)+","),e.slotTarget&&!e.slotScope&&(n+="slot:"+e.slotTarget+","),e.scopedSlots&&(n+=function(e,t){return"scopedSlots:_u(["+Object.keys(e).map(function(n){return wa(n,e[n],t)}).join(",")+"])"}(e.scopedSlots,t)+","),e.model&&(n+="model:{value:"+e.model.value+",callback:"+e.model.callback+",expression:"+e.model.expression+"},"),e.inlineTemplate){var o=function(e,t){var n=e.children[0];0;if(1===n.type){var r=va(n,t.options);return"inlineTemplate:{render:function(){"+r.render+"},staticRenderFns:["+r.staticRenderFns.map(function(e){return"function(){"+e+"}"}).join(",")+"]}"}}(e,t);o&&(n+=o+",")}return n=n.replace(/,$/,"")+"}",e.wrapData&&(n=e.wrapData(n)),e.wrapListeners&&(n=e.wrapListeners(n)),n}function wa(e,t,n){return t.for&&!t.forProcessed?function(e,t,n){var r=t.for,i=t.alias,o=t.iterator1?","+t.iterator1:"",a=t.iterator2?","+t.iterator2:"";return t.forProcessed=!0,"_l(("+r+"),function("+i+o+a+"){return "+wa(e,t,n)+"})"}(e,t,n):"{key:"+e+",fn:"+("function("+String(t.slotScope)+"){return "+("template"===t.tag?t.if?"("+t.if+")?"+(Ta(t,n)||"undefined")+":undefined":Ta(t,n)||"undefined":ga(t,n))+"}")+"}"}function Ta(e,t,n,r,i){var o=e.children;if(o.length){var a=o[0];if(1===o.length&&a.for&&"template"!==a.tag&&"slot"!==a.tag){var s=n?t.maybeComponent(a)?",1":",0":"";return""+(r||ga)(a,t)+s}var u=n?function(e,t){for(var n=0,r=0;r<e.length;r++){var i=e[r];if(1===i.type){if(Ea(i)||i.ifConditions&&i.ifConditions.some(function(e){return Ea(e.block)})){n=2;break}(t(i)||i.ifConditions&&i.ifConditions.some(function(e){return t(e.block)}))&&(n=1)}}return n}(o,t.maybeComponent):0,c=i||xa;return"["+o.map(function(e){return c(e,t)}).join(",")+"]"+(u?","+u:"")}}function Ea(e){return void 0!==e.for||"template"===e.tag||"slot"===e.tag}function xa(e,t){return 1===e.type?ga(e,t):3===e.type&&e.isComment?(r=e,"_e("+JSON.stringify(r.text)+")"):"_v("+(2===(n=e).type?n.expression:Aa(JSON.stringify(n.text)))+")";var n,r}function Ca(e){for(var t="",n=0;n<e.length;n++){var r=e[n];t+='"'+r.name+'":'+Aa(r.value)+","}return t.slice(0,-1)}function Aa(e){return e.replace(/\u2028/g,"\\u2028").replace(/\u2029/g,"\\u2029")}new RegExp("\\b"+"do,if,for,let,new,try,var,case,else,with,await,break,catch,class,const,super,throw,while,yield,delete,export,import,return,switch,default,extends,finally,continue,debugger,function,arguments".split(",").join("\\b|\\b")+"\\b"),new RegExp("\\b"+"delete,typeof,void".split(",").join("\\s*\\([^\\)]*\\)|\\b")+"\\s*\\([^\\)]*\\)");function Sa(e,t){try{return new Function(e)}catch(n){return t.push({err:n,code:e}),k}}function Oa(e){var t=Object.create(null);return function(n,r,i){(r=D({},r)).warn;delete r.warn;var o=r.delimiters?String(r.delimiters)+n:n;if(t[o])return t[o];var a=e(n,r);var s={},u=[];return s.render=Sa(a.render,u),s.staticRenderFns=a.staticRenderFns.map(function(e){return Sa(e,u)}),t[o]=s}}var Da,Ia,ka=(Da=function(e,t){var n=Bo(e.trim(),t);!1!==t.optimize&&ra(n,t);var r=va(n,t);return{ast:n,render:r.render,staticRenderFns:r.staticRenderFns}},function(e){function t(t,n){var r=Object.create(e),i=[],o=[];if(r.warn=function(e,t){(t?o:i).push(e)},n)for(var a in n.modules&&(r.modules=(e.modules||[]).concat(n.modules)),n.directives&&(r.directives=D(Object.create(e.directives||null),n.directives)),n)"modules"!==a&&"directives"!==a&&(r[a]=n[a]);var s=Da(t,r);return s.errors=i,s.tips=o,s}return{compile:t,compileToFunctions:Oa(t)}})(ta),Na=(ka.compile,ka.compileToFunctions);function La(e){return(Ia=Ia||document.createElement("div")).innerHTML=e?'<a href="\n"/>':'<div a="\n"/>',Ia.innerHTML.indexOf("&#10;")>0}var ja=!!V&&La(!1),Pa=!!V&&La(!0),Ra=w(function(e){var t=qn(e);return t&&t.innerHTML}),$a=hn.prototype.$mount;hn.prototype.$mount=function(e,t){if((e=e&&qn(e))===document.body||e===document.documentElement)return this;var n=this.$options;if(!n.render){var r=n.template;if(r)if("string"==typeof r)"#"===r.charAt(0)&&(r=Ra(r));else{if(!r.nodeType)return this;r=r.innerHTML}else e&&(r=function(e){if(e.outerHTML)return e.outerHTML;var t=document.createElement("div");return t.appendChild(e.cloneNode(!0)),t.innerHTML}(e));if(r){0;var i=Na(r,{shouldDecodeNewlines:ja,shouldDecodeNewlinesForHref:Pa,delimiters:n.delimiters,comments:n.comments},this),o=i.render,a=i.staticRenderFns;n.render=o,n.staticRenderFns=a}}return $a.call(this,e,t)},hn.compile=Na,e.exports=hn}).call(this,n(1),n(37).setImmediate)},function(e,t,n){(function(e){var r=void 0!==e&&e||"undefined"!=typeof self&&self||window,i=Function.prototype.apply;function o(e,t){this._id=e,this._clearFn=t}t.setTimeout=function(){return new o(i.call(setTimeout,r,arguments),clearTimeout)},t.setInterval=function(){return new o(i.call(setInterval,r,arguments),clearInterval)},t.clearTimeout=t.clearInterval=function(e){e&&e.close()},o.prototype.unref=o.prototype.ref=function(){},o.prototype.close=function(){this._clearFn.call(r,this._id)},t.enroll=function(e,t){clearTimeout(e._idleTimeoutId),e._idleTimeout=t},t.unenroll=function(e){clearTimeout(e._idleTimeoutId),e._idleTimeout=-1},t._unrefActive=t.active=function(e){clearTimeout(e._idleTimeoutId);var t=e._idleTimeout;t>=0&&(e._idleTimeoutId=setTimeout(function(){e._onTimeout&&e._onTimeout()},t))},n(38),t.setImmediate="undefined"!=typeof self&&self.setImmediate||void 0!==e&&e.setImmediate||this&&this.setImmediate,t.clearImmediate="undefined"!=typeof self&&self.clearImmediate||void 0!==e&&e.clearImmediate||this&&this.clearImmediate}).call(this,n(1))},function(e,t,n){(function(e,t){!function(e,n){"use strict";if(!e.setImmediate){var r,i,o,a,s,u=1,c={},l=!1,f=e.document,p=Object.getPrototypeOf&&Object.getPrototypeOf(e);p=p&&p.setTimeout?p:e,"[object process]"==={}.toString.call(e.process)?r=function(e){t.nextTick(function(){h(e)})}:!function(){if(e.postMessage&&!e.importScripts){var t=!0,n=e.onmessage;return e.onmessage=function(){t=!1},e.postMessage("","*"),e.onmessage=n,t}}()?e.MessageChannel?((o=new MessageChannel).port1.onmessage=function(e){h(e.data)},r=function(e){o.port2.postMessage(e)}):f&&"onreadystatechange"in f.createElement("script")?(i=f.documentElement,r=function(e){var t=f.createElement("script");t.onreadystatechange=function(){h(e),t.onreadystatechange=null,i.removeChild(t),t=null},i.appendChild(t)}):r=function(e){setTimeout(h,0,e)}:(a="setImmediate$"+Math.random()+"$",s=function(t){t.source===e&&"string"==typeof t.data&&0===t.data.indexOf(a)&&h(+t.data.slice(a.length))},e.addEventListener?e.addEventListener("message",s,!1):e.attachEvent("onmessage",s),r=function(t){e.postMessage(a+t,"*")}),p.setImmediate=function(e){"function"!=typeof e&&(e=new Function(""+e));for(var t=new Array(arguments.length-1),n=0;n<t.length;n++)t[n]=arguments[n+1];var i={callback:e,args:t};return c[u]=i,r(u),u++},p.clearImmediate=d}function d(e){delete c[e]}function h(e){if(l)setTimeout(h,0,e);else{var t=c[e];if(t){l=!0;try{!function(e){var t=e.callback,r=e.args;switch(r.length){case 0:t();break;case 1:t(r[0]);break;case 2:t(r[0],r[1]);break;case 3:t(r[0],r[1],r[2]);break;default:t.apply(n,r)}}(t)}finally{d(e),l=!1}}}}}("undefined"==typeof self?void 0===e?this:e:self)}).call(this,n(1),n(6))},function(e,t,n){"use strict";n.r(t);var r=function(e,t,n,r,i,o,a,s){var u,c="function"==typeof e?e.options:e;if(t&&(c.render=t,c.staticRenderFns=n,c._compiled=!0),r&&(c.functional=!0),o&&(c._scopeId="data-v-"+o),a?(u=function(e){(e=e||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||"undefined"==typeof __VUE_SSR_CONTEXT__||(e=__VUE_SSR_CONTEXT__),i&&i.call(this,e),e&&e._registeredComponents&&e._registeredComponents.add(a)},c._ssrRegister=u):i&&(u=s?function(){i.call(this,this.$root.$options.shadowRoot)}:i),u)if(c.functional){c._injectStyles=u;var l=c.render;c.render=function(e,t){return u.call(t),l(e,t)}}else{var f=c.beforeCreate;c.beforeCreate=f?[].concat(f,u):[u]}return{exports:e,options:c}}({mounted:function(){console.log("Component mounted.")}},function(){this.$createElement;this._self._c;return this._m(0)},[function(){var e=this.$createElement,t=this._self._c||e;return t("div",{staticClass:"container"},[t("div",{staticClass:"row justify-content-center"},[t("div",{staticClass:"col-md-8"},[t("div",{staticClass:"card"},[t("div",{staticClass:"card-header"},[this._v("Example Component")]),this._v(" "),t("div",{staticClass:"card-body"},[this._v("\n                    I'm an example component.\n                ")])])])])])}],!1,null,null,null);r.options.__file="ExampleComponent.vue";t.default=r.exports},function(e,t){}]);[m
[1mdiff --git a/public/robots.txt b/public/robots.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..eb05362[m
[1m--- /dev/null[m
[1m+++ b/public/robots.txt[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32mUser-agent: *[m
[32m+[m[32mDisallow:[m
[1mdiff --git a/public/web.config b/public/web.config[m
[1mnew file mode 100644[m
[1mindex 0000000..d3711d7[m
[1m--- /dev/null[m
[1m+++ b/public/web.config[m
[36m@@ -0,0 +1,28 @@[m
[32m+[m[32m<!--[m
[32m+[m[32m    Rewrites requires Microsoft URL Rewrite Module for IIS[m
[32m+[m[32m    Download: https://www.microsoft.com/en-us/download/details.aspx?id=47337[m
[32m+[m[32m    Debug Help: https://docs.microsoft.com/en-us/iis/extensions/url-rewrite-module/using-failed-request-tracing-to-trace-rewrite-rules[m
[32m+[m[32m-->[m
[32m+[m[32m<configuration>[m
[32m+[m[32m  <system.webServer>[m
[32m+[m[32m    <rewrite>[m
[32m+[m[32m      <rules>[m
[32m+[m[32m        <rule name="Imported Rule 1" stopProcessing="true">[m
[32m+[m[32m          <match url="^(.*)/$" ignoreCase="false" />[m
[32m+[m[32m          <conditions>[m
[32m+[m[32m            <add input="{REQUEST_FILENAME}" matchType="IsDirectory" ignoreCase="false" negate="true" />[m
[32m+[m[32m          </conditions>[m
[32m+[m[32m          <action type="Redirect" redirectType="Permanent" url="/{R:1}" />[m
[32m+[m[32m        </rule>[m
[32m+[m[32m        <rule name="Imported Rule 2" stopProcessing="true">[m
[32m+[m[32m          <match url="^" ignoreCase="false" />[m
[32m+[m[32m          <conditions>[m
[32m+[m[32m            <add input="{REQUEST_FILENAME}" matchType="IsDirectory" ignoreCase="false" negate="true" />[m
[32m+[m[32m            <add input="{REQUEST_FILENAME}" matchType="IsFile" ignoreCase="false" negate="true" />[m
[32m+[m[32m          </conditions>[m
[32m+[m[32m          <action type="Rewrite" url="index.php" />[m
[32m+[m[32m        </rule>[m
[32m+[m[32m      </rules>[m
[32m+[m[32m    </rewrite>[m
[32m+[m[32m  </system.webServer>[m
[32m+[m[32m</configuration>[m
[1mdiff --git a/readme.md b/readme.md[m
[1mnew file mode 100644[m
[1mindex 0000000..f95b2ec[m
[1m--- /dev/null[m
[1m+++ b/readme.md[m
[36m@@ -0,0 +1,72 @@[m
[32m+[m[32m<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>[m
[32m+[m
[32m+[m[32m<p align="center">[m
[32m+[m[32m<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>[m
[32m+[m[32m<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>[m
[32m+[m[32m<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>[m
[32m+[m[32m<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>[m
[32m+[m[32m</p>[m
[32m+[m
[32m+[m[32m## About Laravel[m
[32m+[m
[32m+[m[32mLaravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:[m
[32m+[m
[32m+[m[32m- [Simple, fast routing engine](https://laravel.com/docs/routing).[m
[32m+[m[32m- [Powerful dependency injection container](https://laravel.com/docs/container).[m
[32m+[m[32m- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.[m
[32m+[m[32m- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).[m
[32m+[m[32m- Database agnostic [schema migrations](https://laravel.com/docs/migrations).[m
[32m+[m[32m- [Robust background job processing](https://laravel.com/docs/queues).[m
[32m+[m[32m- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).[m
[32m+[m
[32m+[m[32mLaravel is accessible, powerful, and provides tools required for large, robust applications.[m
[32m+[m
[32m+[m[32m## Learning Laravel[m
[32m+[m
[32m+[m[32mLaravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.[m
[32m+[m
[32m+[m[32mIf you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.[m
[32m+[m
[32m+[m[32m## Laravel Sponsors[m
[32m+[m
[32m+[m[32mWe would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).[m
[32m+[m
[32m+[m[32m- **[Vehikl](https://vehikl.com/)**[m
[32m+[m[32m- **[Tighten Co.](https://tighten.co)**[m
[32m+[m[32m- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**[m
[32m+[m[32m- **[64 Robots](https://64robots.com)**[m
[32m+[m[32m- **[Cubet Techno Labs](https://cubettech.com)**[m
[32m+[m[32m- **[Cyber-Duck](https://cyber-duck.co.uk)**[m
[32m+[m[32m- **[British Software Development](https://www.britishsoftware.co)**[m
[32m+[m[32m- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**[m
[32m+[m[32m- **[DevSquad](https://devsquad.com)**[m
[32m+[m[32m- [UserInsights](https://userinsights.com)[m
[32m+[m[32m- [Fragrantica](https://www.fragrantica.com)[m
[32m+[m[32m- [SOFTonSOFA](https://softonsofa.com/)[m
[32m+[m[32m- [User10](https://user10.com)[m
[32m+[m[32m- [Soumettre.fr](https://soumettre.fr/)[m
[32m+[m[32m- [CodeBrisk](https://codebrisk.com)[m
[32m+[m[32m- [1Forge](https://1forge.com)[m
[32m+[m[32m- [TECPRESSO](https://tecpresso.co.jp/)[m
[32m+[m[32m- [Runtime Converter](http://runtimeconverter.com/)[m
[32m+[m[32m- [WebL'Agence](https://weblagence.com/)[m
[32m+[m[32m- [Invoice Ninja](https://www.invoiceninja.com)[m
[32m+[m[32m- [iMi digital](https://www.imi-digital.de/)[m
[32m+[m[32m- [Earthlink](https://www.earthlink.ro/)[m
[32m+[m[32m- [Steadfast Collective](https://steadfastcollective.com/)[m
[32m+[m[32m- [We Are The Robots Inc.](https://watr.mx/)[m
[32m+[m[32m- [Understand.io](https://www.understand.io/)[m
[32m+[m[32m- [Abdel Elrafa](https://abdelelrafa.com)[m
[32m+[m[32m- [Hyper Host](https://hyper.host)[m
[32m+[m
[32m+[m[32m## Contributing[m
[32m+[m
[32m+[m[32mThank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).[m
[32m+[m
[32m+[m[32m## Security Vulnerabilities[m
[32m+[m
[32m+[m[32mIf you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.[m
[32m+[m
[32m+[m[32m## License[m
[32m+[m
[32m+[m[32mThe Laravel framework is open-source software licensed under the [MIT license](https://opensource.org/licenses/MIT).[m
[1mdiff --git a/resources/js/app.js b/resources/js/app.js[m
[1mnew file mode 100644[m
[1mindex 0000000..a1efb5c[m
[1m--- /dev/null[m
[1m+++ b/resources/js/app.js[m
[36m@@ -0,0 +1,32 @@[m
[32m+[m[32m/**[m
[32m+[m[32m * First we will load all of this project's JavaScript dependencies which[m
[32m+[m[32m * includes Vue and other libraries. It is a great starting point when[m
[32m+[m[32m * building robust, powerful web applications using Vue and Laravel.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32mrequire('./bootstrap');[m
[32m+[m
[32m+[m[32mwindow.Vue = require('vue');[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m * The following block of code may be used to automatically register your[m
[32m+[m[32m * Vue components. It will recursively scan this directory for the Vue[m
[32m+[m[32m * components and automatically register them with their "basename".[m
[32m+[m[32m *[m
[32m+[m[32m * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m// const files = require.context('./', true, /\.vue$/i);[m
[32m+[m[32m// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));[m
[32m+[m
[32m+[m[32mVue.component('example-component', require('./components/ExampleComponent.vue').default);[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m * Next, we will create a fresh Vue application instance and attach it to[m
[32m+[m[32m * the page. Then, you may begin adding components to this application[m
[32m+[m[32m * or customize the JavaScript scaffolding to fit your unique needs.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32mconst app = new Vue({[m
[32m+[m[32m    el: '#app',[m
[32m+[m[32m});[m
[1mdiff --git a/resources/js/bootstrap.js b/resources/js/bootstrap.js[m
[1mnew file mode 100644[m
[1mindex 0000000..8eaba1b[m
[1m--- /dev/null[m
[1m+++ b/resources/js/bootstrap.js[m
[36m@@ -0,0 +1,41 @@[m
[32m+[m[32mwindow._ = require('lodash');[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m * We'll load jQuery and the Bootstrap jQuery plugin which provides support[m
[32m+[m[32m * for JavaScript based Bootstrap features such as modals and tabs. This[m
[32m+[m[32m * code may be modified to fit the specific needs of your application.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32mtry {[m
[32m+[m[32m    window.Popper = require('popper.js').default;[m
[32m+[m[32m    window.$ = window.jQuery = require('jquery');[m
[32m+[m
[32m+[m[32m    require('bootstrap');[m
[32m+[m[32m} catch (e) {}[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m * We'll load the axios HTTP library which allows us to easily issue requests[m
[32m+[m[32m * to our Laravel back-end. This library automatically handles sending the[m
[32m+[m[32m * CSRF token as a header based on the value of the "XSRF" token cookie.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32mwindow.axios = require('axios');[m
[32m+[m
[32m+[m[32mwindow.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m * Echo exposes an expressive API for subscribing to channels and listening[m
[32m+[m[32m * for events that are broadcast by Laravel. Echo and event broadcasting[m
[32m+[m[32m * allows your team to easily build robust real-time web applications.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m// import Echo from 'laravel-echo';[m
[32m+[m
[32m+[m[32m// window.Pusher = require('pusher-js');[m
[32m+[m
[32m+[m[32m// window.Echo = new Echo({[m
[32m+[m[32m//     broadcaster: 'pusher',[m
[32m+[m[32m//     key: process.env.MIX_PUSHER_APP_KEY,[m
[32m+[m[32m//     cluster: process.env.MIX_PUSHER_APP_CLUSTER,[m
[32m+[m[32m//     encrypted: true[m
[32m+[m[32m// });[m
[1mdiff --git a/resources/js/components/ExampleComponent.vue b/resources/js/components/ExampleComponent.vue[m
[1mnew file mode 100644[m
[1mindex 0000000..3fb9f9a[m
[1m--- /dev/null[m
[1m+++ b/resources/js/components/ExampleComponent.vue[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32m<template>[m
[32m+[m[32m    <div class="container">[m
[32m+[m[32m        <div class="row justify-content-center">[m
[32m+[m[32m            <div class="col-md-8">[m
[32m+[m[32m                <div class="card">[m
[32m+[m[32m                    <div class="card-header">Example Component</div>[m
[32m+[m
[32m+[m[32m                    <div class="card-body">[m
[32m+[m[32m                        I'm an example component.[m
[32m+[m[32m                    </div>[m
[32m+[m[32m                </div>[m
[32m+[m[32m            </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m</template>[m
[32m+[m
[32m+[m[32m<script>[m
[32m+[m[32m    export default {[m
[32m+[m[32m        mounted() {[m
[32m+[m[32m            console.log('Component mounted.')[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m</script>[m
[1mdiff --git a/resources/lang/en/auth.php b/resources/lang/en/auth.php[m
[1mnew file mode 100644[m
[1mindex 0000000..e5506df[m
[1m--- /dev/null[m
[1m+++ b/resources/lang/en/auth.php[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Authentication Language Lines[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | The following language lines are used during authentication for various[m
[32m+[m[32m    | messages that we need to display to the user. You are free to modify[m
[32m+[m[32m    | these language lines according to your application's requirements.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'failed' => 'These credentials do not match our records.',[m
[32m+[m[32m    'throttle' => 'Too many login attempts. Please try again in :seconds seconds.',[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/resources/lang/en/pagination.php b/resources/lang/en/pagination.php[m
[1mnew file mode 100644[m
[1mindex 0000000..d481411[m
[1m--- /dev/null[m
[1m+++ b/resources/lang/en/pagination.php[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Pagination Language Lines[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | The following language lines are used by the paginator library to build[m
[32m+[m[32m    | the simple pagination links. You are free to change them to anything[m
[32m+[m[32m    | you want to customize your views to better match your application.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'previous' => '&laquo; Previous',[m
[32m+[m[32m    'next' => 'Next &raquo;',[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/resources/lang/en/passwords.php b/resources/lang/en/passwords.php[m
[1mnew file mode 100644[m
[1mindex 0000000..bf6caf6[m
[1m--- /dev/null[m
[1m+++ b/resources/lang/en/passwords.php[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Password Reset Language Lines[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | The following language lines are the default lines which match reasons[m
[32m+[m[32m    | that are given by the password broker for a password update attempt[m
[32m+[m[32m    | has failed, such as for an invalid token or invalid new password.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'password' => 'Passwords must be at least eight characters and match the confirmation.',[m
[32m+[m[32m    'reset' => 'Your password has been reset!',[m
[32m+[m[32m    'sent' => 'We have e-mailed your password reset link!',[m
[32m+[m[32m    'token' => 'This password reset token is invalid.',[m
[32m+[m[32m    'user' => "We can't find a user with that e-mail address.",[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/resources/lang/en/validation.php b/resources/lang/en/validation.php[m
[1mnew file mode 100644[m
[1mindex 0000000..e1d879f[m
[1m--- /dev/null[m
[1m+++ b/resources/lang/en/validation.php[m
[36m@@ -0,0 +1,150 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mreturn [[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Validation Language Lines[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | The following language lines contain the default error messages used by[m
[32m+[m[32m    | the validator class. Some of these rules have multiple versions such[m
[32m+[m[32m    | as the size rules. Feel free to tweak each of these messages here.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'accepted' => 'The :attribute must be accepted.',[m
[32m+[m[32m    'active_url' => 'The :attribute is not a valid URL.',[m
[32m+[m[32m    'after' => 'The :attribute must be a date after :date.',[m
[32m+[m[32m    'after_or_equal' => 'The :attribute must be a date after or equal to :date.',[m
[32m+[m[32m    'alpha' => 'The :attribute may only contain letters.',[m
[32m+[m[32m    'alpha_dash' => 'The :attribute may only contain letters, numbers, dashes and underscores.',[m
[32m+[m[32m    'alpha_num' => 'The :attribute may only contain letters and numbers.',[m
[32m+[m[32m    'array' => 'The :attribute must be an array.',[m
[32m+[m[32m    'before' => 'The :attribute must be a date before :date.',[m
[32m+[m[32m    'before_or_equal' => 'The :attribute must be a date before or equal to :date.',[m
[32m+[m[32m    'between' => [[m
[32m+[m[32m        'numeric' => 'The :attribute must be between :min and :max.',[m
[32m+[m[32m        'file' => 'The :attribute must be between :min and :max kilobytes.',[m
[32m+[m[32m        'string' => 'The :attribute must be between :min and :max characters.',[m
[32m+[m[32m        'array' => 'The :attribute must have between :min and :max items.',[m
[32m+[m[32m    ],[m
[32m+[m[32m    'boolean' => 'The :attribute field must be true or false.',[m
[32m+[m[32m    'confirmed' => 'The :attribute confirmation does not match.',[m
[32m+[m[32m    'date' => 'The :attribute is not a valid date.',[m
[32m+[m[32m    'date_equals' => 'The :attribute must be a date equal to :date.',[m
[32m+[m[32m    'date_format' => 'The :attribute does not match the format :format.',[m
[32m+[m[32m    'different' => 'The :attribute and :other must be different.',[m
[32m+[m[32m    'digits' => 'The :attribute must be :digits digits.',[m
[32m+[m[32m    'digits_between' => 'The :attribute must be between :min and :max digits.',[m
[32m+[m[32m    'dimensions' => 'The :attribute has invalid image dimensions.',[m
[32m+[m[32m    'distinct' => 'The :attribute field has a duplicate value.',[m
[32m+[m[32m    'email' => 'The :attribute must be a valid email address.',[m
[32m+[m[32m    'ends_with' => 'The :attribute must end with one of the following: :values',[m
[32m+[m[32m    'exists' => 'The selected :attribute is invalid.',[m
[32m+[m[32m    'file' => 'The :attribute must be a file.',[m
[32m+[m[32m    'filled' => 'The :attribute field must have a value.',[m
[32m+[m[32m    'gt' => [[m
[32m+[m[32m        'numeric' => 'The :attribute must be greater than :value.',[m
[32m+[m[32m        'file' => 'The :attribute must be greater than :value kilobytes.',[m
[32m+[m[32m        'string' => 'The :attribute must be greater than :value characters.',[m
[32m+[m[32m        'array' => 'The :attribute must have more than :value items.',[m
[32m+[m[32m    ],[m
[32m+[m[32m    'gte' => [[m
[32m+[m[32m        'numeric' => 'The :attribute must be greater than or equal :value.',[m
[32m+[m[32m        'file' => 'The :attribute must be greater than or equal :value kilobytes.',[m
[32m+[m[32m        'string' => 'The :attribute must be greater than or equal :value characters.',[m
[32m+[m[32m        'array' => 'The :attribute must have :value items or more.',[m
[32m+[m[32m    ],[m
[32m+[m[32m    'image' => 'The :attribute must be an image.',[m
[32m+[m[32m    'in' => 'The selected :attribute is invalid.',[m
[32m+[m[32m    'in_array' => 'The :attribute field does not exist in :other.',[m
[32m+[m[32m    'integer' => 'The :attribute must be an integer.',[m
[32m+[m[32m    'ip' => 'The :attribute must be a valid IP address.',[m
[32m+[m[32m    'ipv4' => 'The :attribute must be a valid IPv4 address.',[m
[32m+[m[32m    'ipv6' => 'The :attribute must be a valid IPv6 address.',[m
[32m+[m[32m    'json' => 'The :attribute must be a valid JSON string.',[m
[32m+[m[32m    'lt' => [[m
[32m+[m[32m        'numeric' => 'The :attribute must be less than :value.',[m
[32m+[m[32m        'file' => 'The :attribute must be less than :value kilobytes.',[m
[32m+[m[32m        'string' => 'The :attribute must be less than :value characters.',[m
[32m+[m[32m        'array' => 'The :attribute must have less than :value items.',[m
[32m+[m[32m    ],[m
[32m+[m[32m    'lte' => [[m
[32m+[m[32m        'numeric' => 'The :attribute must be less than or equal :value.',[m
[32m+[m[32m        'file' => 'The :attribute must be less than or equal :value kilobytes.',[m
[32m+[m[32m        'string' => 'The :attribute must be less than or equal :value characters.',[m
[32m+[m[32m        'array' => 'The :attribute must not have more than :value items.',[m
[32m+[m[32m    ],[m
[32m+[m[32m    'max' => [[m
[32m+[m[32m        'numeric' => 'The :attribute may not be greater than :max.',[m
[32m+[m[32m        'file' => 'The :attribute may not be greater than :max kilobytes.',[m
[32m+[m[32m        'string' => 'The :attribute may not be greater than :max characters.',[m
[32m+[m[32m        'array' => 'The :attribute may not have more than :max items.',[m
[32m+[m[32m    ],[m
[32m+[m[32m    'mimes' => 'The :attribute must be a file of type: :values.',[m
[32m+[m[32m    'mimetypes' => 'The :attribute must be a file of type: :values.',[m
[32m+[m[32m    'min' => [[m
[32m+[m[32m        'numeric' => 'The :attribute must be at least :min.',[m
[32m+[m[32m        'file' => 'The :attribute must be at least :min kilobytes.',[m
[32m+[m[32m        'string' => 'The :attribute must be at least :min characters.',[m
[32m+[m[32m        'array' => 'The :attribute must have at least :min items.',[m
[32m+[m[32m    ],[m
[32m+[m[32m    'not_in' => 'The selected :attribute is invalid.',[m
[32m+[m[32m    'not_regex' => 'The :attribute format is invalid.',[m
[32m+[m[32m    'numeric' => 'The :attribute must be a number.',[m
[32m+[m[32m    'present' => 'The :attribute field must be present.',[m
[32m+[m[32m    'regex' => 'The :attribute format is invalid.',[m
[32m+[m[32m    'required' => 'The :attribute field is required.',[m
[32m+[m[32m    'required_if' => 'The :attribute field is required when :other is :value.',[m
[32m+[m[32m    'required_unless' => 'The :attribute field is required unless :other is in :values.',[m
[32m+[m[32m    'required_with' => 'The :attribute field is required when :values is present.',[m
[32m+[m[32m    'required_with_all' => 'The :attribute field is required when :values are present.',[m
[32m+[m[32m    'required_without' => 'The :attribute field is required when :values is not present.',[m
[32m+[m[32m    'required_without_all' => 'The :attribute field is required when none of :values are present.',[m
[32m+[m[32m    'same' => 'The :attribute and :other must match.',[m
[32m+[m[32m    'size' => [[m
[32m+[m[32m        'numeric' => 'The :attribute must be :size.',[m
[32m+[m[32m        'file' => 'The :attribute must be :size kilobytes.',[m
[32m+[m[32m        'string' => 'The :attribute must be :size characters.',[m
[32m+[m[32m        'array' => 'The :attribute must contain :size items.',[m
[32m+[m[32m    ],[m
[32m+[m[32m    'starts_with' => 'The :attribute must start with one of the following: :values',[m
[32m+[m[32m    'string' => 'The :attribute must be a string.',[m
[32m+[m[32m    'timezone' => 'The :attribute must be a valid zone.',[m
[32m+[m[32m    'unique' => 'The :attribute has already been taken.',[m
[32m+[m[32m    'uploaded' => 'The :attribute failed to upload.',[m
[32m+[m[32m    'url' => 'The :attribute format is invalid.',[m
[32m+[m[32m    'uuid' => 'The :attribute must be a valid UUID.',[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Custom Validation Language Lines[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | Here you may specify custom validation messages for attributes using the[m
[32m+[m[32m    | convention "attribute.rule" to name the lines. This makes it quick to[m
[32m+[m[32m    | specify a specific custom language line for a given attribute rule.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'custom' => [[m
[32m+[m[32m        'attribute-name' => [[m
[32m+[m[32m            'rule-name' => 'custom-message',[m
[32m+[m[32m        ],[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Custom Validation Attributes[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | The following language lines are used to swap our attribute placeholder[m
[32m+[m[32m    | with something more reader friendly such as "E-Mail Address" instead[m
[32m+[m[32m    | of "email". This simply helps us make our message more expressive.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    'attributes' => [],[m
[32m+[m
[32m+[m[32m];[m
[1mdiff --git a/resources/sass/_variables.scss b/resources/sass/_variables.scss[m
[1mnew file mode 100644[m
[1mindex 0000000..0407ab5[m
[1m--- /dev/null[m
[1m+++ b/resources/sass/_variables.scss[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32m// Body[m
[32m+[m[32m$body-bg: #f8fafc;[m
[32m+[m
[32m+[m[32m// Typography[m
[32m+[m[32m$font-family-sans-serif: 'Nunito', sans-serif;[m
[32m+[m[32m$font-size-base: 0.9rem;[m
[32m+[m[32m$line-height-base: 1.6;[m
[32m+[m
[32m+[m[32m// Colors[m
[32m+[m[32m$blue: #3490dc;[m
[32m+[m[32m$indigo: #6574cd;[m
[32m+[m[32m$purple: #9561e2;[m
[32m+[m[32m$pink: #f66d9b;[m
[32m+[m[32m$red: #e3342f;[m
[32m+[m[32m$orange: #f6993f;[m
[32m+[m[32m$yellow: #ffed4a;[m
[32m+[m[32m$green: #38c172;[m
[32m+[m[32m$teal: #4dc0b5;[m
[32m+[m[32m$cyan: #6cb2eb;[m
[1mdiff --git a/resources/sass/app.scss b/resources/sass/app.scss[m
[1mnew file mode 100644[m
[1mindex 0000000..3193ffa[m
[1m--- /dev/null[m
[1m+++ b/resources/sass/app.scss[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m// Fonts[m
[32m+[m[32m@import url('https://fonts.googleapis.com/css?family=Nunito');[m
[32m+[m
[32m+[m[32m// Variables[m
[32m+[m[32m@import 'variables';[m
[32m+[m
[32m+[m[32m// Bootstrap[m
[32m+[m[32m@import '~bootstrap/scss/bootstrap';[m
[1mdiff --git a/resources/views/about.blade.php b/resources/views/about.blade.php[m
[1mnew file mode 100644[m
[1mindex 0000000..1ca816a[m
[1m--- /dev/null[m
[1m+++ b/resources/views/about.blade.php[m
[36m@@ -0,0 +1,42 @@[m
[32m+[m[32m<!doctype html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m  <head>[m
[32m+[m[32m    <!-- Required meta tags -->[m
[32m+[m[32m    <meta charset="utf-8">[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">[m
[32m+[m
[32m+[m[32m    <!-- Bootstrap CSS -->[m
[32m+[m[32m    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">[m
[32m+[m
[32m+[m[32m    <title>Halaman About</title>[m
[32m+[m[32m  </head>[m
[32m+[m[32m  <body>[m
[32m+[m[32m    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">[m
[32m+[m[32m      <div class="container">[m
[32m+[m[32m        <a class="navbar-brand" href="#">Navbar</a>[m
[32m+[m[32m        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">[m
[32m+[m[32m          <span class="navbar-toggler-icon"></span>[m
[32m+[m[32m        </button>[m
[32m+[m[32m        <div class="collapse navbar-collapse" id="navbarNav">[m
[32m+[m[32m          <ul class="navbar-nav">[m
[32m+[m[32m            <li class="nav-item active">[m
[32m+[m[32m              <a class="nav-link" href="/zulfikar">Zulfikar<span class="sr-only">(current)</span></a>[m
[32m+[m[32m            </li>[m
[32m+[m[32m            <li class="nav-item">[m
[32m+[m[32m              <a class="nav-link" href="/about">About</a>[m
[32m+[m[32m            </li>[m
[32m+[m[32m            <li class="nav-item">[m
[32m+[m[32m              <a class="nav-link" href="/belajar">Belajar</a>[m
[32m+[m[32m            </li>[m
[32m+[m[32m          </ul>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </nav>[m
[32m+[m[41m    [m
[32m+[m[32m    <!-- Optional JavaScript -->[m
[32m+[m[32m    <!-- jQuery first, then Popper.js, then Bootstrap JS -->[m
[32m+[m[32m    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>[m
[32m+[m[32m    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>[m
[32m+[m[32m    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>[m
[32m+[m[32m  </body>[m
[32m+[m[32m</html>[m
\ No newline at end of file[m
[1mdiff --git a/resources/views/belajar.blade.php b/resources/views/belajar.blade.php[m
[1mnew file mode 100644[m
[1mindex 0000000..3b600e4[m
[1m--- /dev/null[m
[1m+++ b/resources/views/belajar.blade.php[m
[36m@@ -0,0 +1,42 @@[m
[32m+[m[32m<!doctype html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m  <head>[m
[32m+[m[32m    <!-- Required meta tags -->[m
[32m+[m[32m    <meta charset="utf-8">[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">[m
[32m+[m
[32m+[m[32m    <!-- Bootstrap CSS -->[m
[32m+[m[32m    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">[m
[32m+[m
[32m+[m[32m    <title>Halaman Belajar</title>[m
[32m+[m[32m  </head>[m
[32m+[m[32m  <body>[m
[32m+[m[32m    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">[m
[32m+[m[32m      <div class="container">[m
[32m+[m[32m        <a class="navbar-brand" href="#">Navbar</a>[m
[32m+[m[32m        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">[m
[32m+[m[32m          <span class="navbar-toggler-icon"></span>[m
[32m+[m[32m        </button>[m
[32m+[m[32m        <div class="collapse navbar-collapse" id="navbarNav">[m
[32m+[m[32m          <ul class="navbar-nav">[m
[32m+[m[32m            <li class="nav-item active">[m
[32m+[m[32m              <a class="nav-link" href="/zulfikar">Zulfikar<span class="sr-only">(current)</span></a>[m
[32m+[m[32m            </li>[m
[32m+[m[32m            <li class="nav-item">[m
[32m+[m[32m              <a class="nav-link" href="/about">About</a>[m
[32m+[m[32m            </li>[m
[32m+[m[32m            <li class="nav-item">[m
[32m+[m[32m              <a class="nav-link" href="/belajar">Belajar</a>[m
[32m+[m[32m            </li>[m
[32m+[m[32m          </ul>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </nav>[m
[32m+[m
[32m+[m[32m    <!-- Optional JavaScript -->[m
[32m+[m[32m    <!-- jQuery first, then Popper.js, then Bootstrap JS -->[m
[32m+[m[32m    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>[m
[32m+[m[32m    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>[m
[32m+[m[32m    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>[m
[32m+[m[32m  </body>[m
[32m+[m[32m</html>[m
\ No newline at end of file[m
[1mdiff --git a/resources/views/welcome.blade.php b/resources/views/welcome.blade.php[m
[1mnew file mode 100644[m
[1mindex 0000000..be28d0f[m
[1m--- /dev/null[m
[1m+++ b/resources/views/welcome.blade.php[m
[36m@@ -0,0 +1,99 @@[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">[m
[32m+[m[32m    <head>[m
[32m+[m[32m        <meta charset="utf-8">[m
[32m+[m[32m        <meta name="viewport" content="width=device-width, initial-scale=1">[m
[32m+[m
[32m+[m[32m        <title>Laravel</title>[m
[32m+[m
[32m+[m[32m        <!-- Fonts -->[m
[32m+[m[32m        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">[m
[32m+[m
[32m+[m[32m        <!-- Styles -->[m
[32m+[m[32m        <style>[m
[32m+[m[32m            html, body {[m
[32m+[m[32m                background-color: #fff;[m
[32m+[m[32m                color: #636b6f;[m
[32m+[m[32m                font-family: 'Nunito', sans-serif;[m
[32m+[m[32m                font-weight: 200;[m
[32m+[m[32m                height: 100vh;[m
[32m+[m[32m                margin: 0;[m
[32m+[m[32m            }[m
[32m+[m
[32m+[m[32m            .full-height {[m
[32m+[m[32m                height: 100vh;[m
[32m+[m[32m            }[m
[32m+[m
[32m+[m[32m            .flex-center {[m
[32m+[m[32m                align-items: center;[m
[32m+[m[32m                display: flex;[m
[32m+[m[32m                justify-content: center;[m
[32m+[m[32m            }[m
[32m+[m
[32m+[m[32m            .position-ref {[m
[32m+[m[32m                position: relative;[m
[32m+[m[32m            }[m
[32m+[m
[32m+[m[32m            .top-right {[m
[32m+[m[32m                position: absolute;[m
[32m+[m[32m                right: 10px;[m
[32m+[m[32m                top: 18px;[m
[32m+[m[32m            }[m
[32m+[m
[32m+[m[32m            .content {[m
[32m+[m[32m                text-align: center;[m
[32m+[m[32m            }[m
[32m+[m
[32m+[m[32m            .title {[m
[32m+[m[32m                font-size: 84px;[m
[32m+[m[32m            }[m
[32m+[m
[32m+[m[32m            .links > a {[m
[32m+[m[32m                color: #636b6f;[m
[32m+[m[32m                padding: 0 25px;[m
[32m+[m[32m                font-size: 13px;[m
[32m+[m[32m                font-weight: 600;[m
[32m+[m[32m                letter-spacing: .1rem;[m
[32m+[m[32m                text-decoration: none;[m
[32m+[m[32m                text-transform: uppercase;[m
[32m+[m[32m            }[m
[32m+[m
[32m+[m[32m            .m-b-md {[m
[32m+[m[32m                margin-bottom: 30px;[m
[32m+[m[32m            }[m
[32m+[m[32m        </style>[m
[32m+[m[32m    </head>[m
[32m+[m[32m    <body>[m
[32m+[m[32m        <div class="flex-center position-ref full-height">[m
[32m+[m[32m            @if (Route::has('login'))[m
[32m+[m[32m                <div class="top-right links">[m
[32m+[m[32m                    @auth[m
[32m+[m[32m                        <a href="{{ url('/home') }}">Home</a>[m
[32m+[m[32m                    @else[m
[32m+[m[32m                        <a href="{{ route('login') }}">Login</a>[m
[32m+[m
[32m+[m[32m                        @if (Route::has('register'))[m
[32m+[m[32m                            <a href="{{ route('register') }}">Register</a>[m
[32m+[m[32m                        @endif[m
[32m+[m[32m                    @endauth[m
[32m+[m[32m                </div>[m
[32m+[m[32m            @endif[m
[32m+[m
[32m+[m[32m            <div class="content">[m
[32m+[m[32m                <div class="title m-b-md">[m
[32m+[m[32m                    Zulfikar[m
[32m+[m[32m                </div>[m
[32m+[m
[32m+[m[32m                <div class="links">[m
[32m+[m[32m                    <a href="https://laravel.com/docs">Docs</a>[m
[32m+[m[32m                    <a href="https://laracasts.com">Laracasts</a>[m
[32m+[m[32m                    <a href="https://laravel-news.com">News</a>[m
[32m+[m[32m                    <a href="https://blog.laravel.com">Blog</a>[m
[32m+[m[32m                    <a href="https://nova.laravel.com">Nova</a>[m
[32m+[m[32m                    <a href="https://forge.laravel.com">Forge</a>[m
[32m+[m[32m                    <a href="https://github.com/laravel/laravel">GitHub</a>[m
[32m+[m[32m                </div>[m
[32m+[m[32m            </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m    </body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/resources/views/zulfikar.blade.php b/resources/views/zulfikar.blade.php[m
[1mnew file mode 100644[m
[1mindex 0000000..a5e6854[m
[1m--- /dev/null[m
[1m+++ b/resources/views/zulfikar.blade.php[m
[36m@@ -0,0 +1,58 @@[m
[32m+[m[32m<!doctype html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m  <head>[m
[32m+[m[32m    <!-- Required meta tags -->[m
[32m+[m[32m    <meta charset="utf-8">[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">[m
[32m+[m
[32m+[m[32m    <!-- Bootstrap CSS -->[m
[32m+[m[32m    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">[m
[32m+[m
[32m+[m[32m    <title>Halaman Zulfikar</title>[m
[32m+[m[32m  </head>[m
[32m+[m[32m  <body>[m
[32m+[m[32m    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">[m
[32m+[m[32m      <div class="container">[m
[32m+[m[32m        <a class="navbar-brand" href="#">Navbar</a>[m
[32m+[m[32m        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">[m
[32m+[m[32m          <span class="navbar-toggler-icon"></span>[m
[32m+[m[32m        </button>[m
[32m+[m[32m        <div class="collapse navbar-collapse" id="navbarNav">[m
[32m+[m[32m          <ul class="navbar-nav">[m
[32m+[m[32m            <li class="nav-item active">[m
[32m+[m[32m              <a class="nav-link" href="/zulfikar">Zulfikar<span class="sr-only">(current)</span></a>[m
[32m+[m[32m            </li>[m
[32m+[m[32m            <li class="nav-item">[m
[32m+[m[32m              <a class="nav-link" href="/about">About</a>[m
[32m+[m[32m            </li>[m
[32m+[m[32m            <li class="nav-item">[m
[32m+[m[32m              <a class="nav-link" href="/belajar">Belajar</a>[m
[32m+[m[32m            </li>[m
[32m+[m[32m          </ul>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </nav>[m
[32m+[m[32m    <div class="container">[m
[32m+[m[32m      <div class="card mt-3" style="width: 18rem;">[m
[32m+[m[32m        <div class="card-header">[m
[32m+[m[32m          Zulfikar Augusta[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <ul class="list-group list-group-flush">[m
[32m+[m[32m          <li class="list-group-item">0877-1581-6110</li>[m
[32m+[m[32m          <li class="list-group-item">zulfikarsubang89@gmail.com</li>[m
[32m+[m[32m          <li class="list-group-item">XI RPL 2</li>[m
[32m+[m[32m        </ul>[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <div class="card-body">[m
[32m+[m[32m        <a href="" class="card-link">Card link</a>[m
[32m+[m[32m        <a href="#" class="card-link">Another link</a>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </div>[m
[32m+[m
[32m+[m[32m    <!-- Optional JavaScript -->[m
[32m+[m[32m    <!-- jQuery first, then Popper.js, then Bootstrap JS -->[m
[32m+[m[32m    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>[m
[32m+[m[32m    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>[m
[32m+[m[32m    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>[m
[32m+[m[32m  </body>[m
[32m+[m[32m</html>[m
\ No newline at end of file[m
[1mdiff --git a/routes/api.php b/routes/api.php[m
[1mnew file mode 100644[m
[1mindex 0000000..c641ca5[m
[1m--- /dev/null[m
[1m+++ b/routes/api.php[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32muse Illuminate\Http\Request;[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| API Routes[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| Here is where you can register API routes for your application. These[m
[32m+[m[32m| routes are loaded by the RouteServiceProvider within a group which[m
[32m+[m[32m| is assigned the "api" middleware group. Enjoy building your API![m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32mRoute::middleware('auth:api')->get('/user', function (Request $request) {[m
[32m+[m[32m    return $request->user();[m
[32m+[m[32m});[m
[1mdiff --git a/routes/channels.php b/routes/channels.php[m
[1mnew file mode 100644[m
[1mindex 0000000..f16a20b[m
[1m--- /dev/null[m
[1m+++ b/routes/channels.php[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Broadcast Channels[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| Here you may register all of the event broadcasting channels that your[m
[32m+[m[32m| application supports. The given channel authorization callbacks are[m
[32m+[m[32m| used to check if an authenticated user can listen to the channel.[m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32mBroadcast::channel('App.User.{id}', function ($user, $id) {[m
[32m+[m[32m    return (int) $user->id === (int) $id;[m
[32m+[m[32m});[m
[1mdiff --git a/routes/console.php b/routes/console.php[m
[1mnew file mode 100644[m
[1mindex 0000000..75dd0cd[m
[1m--- /dev/null[m
[1m+++ b/routes/console.php[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32muse Illuminate\Foundation\Inspiring;[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Console Routes[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| This file is where you may define all of your Closure based console[m
[32m+[m[32m| commands. Each Closure is bound to a command instance allowing a[m
[32m+[m[32m| simple approach to interacting with each command's IO methods.[m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32mArtisan::command('inspire', function () {[m
[32m+[m[32m    $this->comment(Inspiring::quote());[m
[32m+[m[32m})->describe('Display an inspiring quote');[m
[1mdiff --git a/routes/web.php b/routes/web.php[m
[1mnew file mode 100644[m
[1mindex 0000000..fa9cca5[m
[1m--- /dev/null[m
[1m+++ b/routes/web.php[m
[36m@@ -0,0 +1,28 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m| Web Routes[m
[32m+[m[32m|--------------------------------------------------------------------------[m
[32m+[m[32m|[m
[32m+[m[32m| Here is where you can register web routes for your application. These[m
[32m+[m[32m| routes are loaded by the RouteServiceProvider within a group which[m
[32m+[m[32m| contains the "web" middleware group. Now create something great![m
[32m+[m[32m|[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m[32mRoute::get('/', function () {[m
[32m+[m[32m    return view('welcome');[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32mRoute::get('/belajar', function () {[m
[32m+[m[32m    return view('belajar');[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32mRoute::get('/zulfikar', function () {[m
[32m+[m[32m    return view('zulfikar');[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32mRoute::get('/about', function () {[m
[32m+[m[32m    return view('about');[m
[32m+[m[32m});[m
[1mdiff --git a/server.php b/server.php[m
[1mnew file mode 100644[m
[1mindex 0000000..5fb6379[m
[1m--- /dev/null[m
[1m+++ b/server.php[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m * Laravel - A PHP Framework For Web Artisans[m
[32m+[m[32m *[m
[32m+[m[32m * @package  Laravel[m
[32m+[m[32m * @author   Taylor Otwell <taylor@laravel.com>[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m$uri = urldecode([m
[32m+[m[32m    parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH)[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32m// This file allows us to emulate Apache's "mod_rewrite" functionality from the[m
[32m+[m[32m// built-in PHP web server. This provides a convenient way to test a Laravel[m
[32m+[m[32m// application without having installed a "real" web server software here.[m
[32m+[m[32mif ($uri !== '/' && file_exists(__DIR__.'/public'.$uri)) {[m
[32m+[m[32m    return false;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mrequire_once __DIR__.'/public/index.php';[m
[1mdiff --git a/storage/app/.gitignore b/storage/app/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..8f4803c[m
[1m--- /dev/null[m
[1m+++ b/storage/app/.gitignore[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m*[m
[32m+[m[32m!public/[m
[32m+[m[32m!.gitignore[m
[1mdiff --git a/storage/app/public/.gitignore b/storage/app/public/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..d6b7ef3[m
[1m--- /dev/null[m
[1m+++ b/storage/app/public/.gitignore[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32m*[m
[32m+[m[32m!.gitignore[m
[1mdiff --git a/storage/framework/.gitignore b/storage/framework/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..b02b700[m
[1m--- /dev/null[m
[1m+++ b/storage/framework/.gitignore[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mconfig.php[m
[32m+[m[32mroutes.php[m
[32m+[m[32mschedule-*[m
[32m+[m[32mcompiled.php[m
[32m+[m[32mservices.json[m
[32m+[m[32mevents.scanned.php[m
[32m+[m[32mroutes.scanned.php[m
[32m+[m[32mdown[m
[1mdiff --git a/storage/framework/cache/.gitignore b/storage/framework/cache/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..01e4a6c[m
[1m--- /dev/null[m
[1m+++ b/storage/framework/cache/.gitignore[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m*[m
[32m+[m[32m!data/[m
[32m+[m[32m!.gitignore[m
[1mdiff --git a/storage/framework/cache/data/.gitignore b/storage/framework/cache/data/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..d6b7ef3[m
[1m--- /dev/null[m
[1m+++ b/storage/framework/cache/data/.gitignore[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32m*[m
[32m+[m[32m!.gitignore[m
[1mdiff --git a/storage/framework/sessions/.gitignore b/storage/framework/sessions/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..d6b7ef3[m
[1m--- /dev/null[m
[1m+++ b/storage/framework/sessions/.gitignore[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32m*[m
[32m+[m[32m!.gitignore[m
[1mdiff --git a/storage/framework/testing/.gitignore b/storage/framework/testing/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..d6b7ef3[m
[1m--- /dev/null[m
[1m+++ b/storage/framework/testing/.gitignore[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32m*[m
[32m+[m[32m!.gitignore[m
[1mdiff --git a/storage/framework/views/.gitignore b/storage/framework/views/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..d6b7ef3[m
[1m--- /dev/null[m
[1m+++ b/storage/framework/views/.gitignore[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32m*[m
[32m+[m[32m!.gitignore[m
[1mdiff --git a/storage/logs/.gitignore b/storage/logs/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..d6b7ef3[m
[1m--- /dev/null[m
[1m+++ b/storage/logs/.gitignore[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32m*[m
[32m+[m[32m!.gitignore[m
[1mdiff --git a/tests/CreatesApplication.php b/tests/CreatesApplication.php[m
[1mnew file mode 100644[m
[1mindex 0000000..547152f[m
[1m--- /dev/null[m
[1m+++ b/tests/CreatesApplication.php[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace Tests;[m
[32m+[m
[32m+[m[32muse Illuminate\Contracts\Console\Kernel;[m
[32m+[m
[32m+[m[32mtrait CreatesApplication[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Creates the application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return \Illuminate\Foundation\Application[m
[32m+[m[32m     */[m
[32m+[m[32m    public function createApplication()[m
[32m+[m[32m    {[m
[32m+[m[32m        $app = require __DIR__.'/../bootstrap/app.php';[m
[32m+[m
[32m+[m[32m        $app->make(Kernel::class)->bootstrap();[m
[32m+[m
[32m+[m[32m        return $app;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/tests/Feature/ExampleTest.php b/tests/Feature/ExampleTest.php[m
[1mnew file mode 100644[m
[1mindex 0000000..f31e495[m
[1m--- /dev/null[m
[1m+++ b/tests/Feature/ExampleTest.php[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace Tests\Feature;[m
[32m+[m
[32m+[m[32muse Tests\TestCase;[m
[32m+[m[32muse Illuminate\Foundation\Testing\RefreshDatabase;[m
[32m+[m
[32m+[m[32mclass ExampleTest extends TestCase[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * A basic test example.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function testBasicTest()[m
[32m+[m[32m    {[m
[32m+[m[32m        $response = $this->get('/');[m
[32m+[m
[32m+[m[32m        $response->assertStatus(200);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/tests/TestCase.php b/tests/TestCase.php[m
[1mnew file mode 100644[m
[1mindex 0000000..2932d4a[m
[1m--- /dev/null[m
[1m+++ b/tests/TestCase.php[m
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace Tests;[m
[32m+[m
[32m+[m[32muse Illuminate\Foundation\Testing\TestCase as BaseTestCase;[m
[32m+[m
[32m+[m[32mabstract class TestCase extends BaseTestCase[m
[32m+[m[32m{[m
[32m+[m[32m    use CreatesApplication;[m
[32m+[m[32m}[m
[1mdiff --git a/tests/Unit/ExampleTest.php b/tests/Unit/ExampleTest.php[m
[1mnew file mode 100644[m
[1mindex 0000000..e9fe19c[m
[1m--- /dev/null[m
[1m+++ b/tests/Unit/ExampleTest.php[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace Tests\Unit;[m
[32m+[m
[32m+[m[32muse Tests\TestCase;[m
[32m+[m[32muse Illuminate\Foundation\Testing\RefreshDatabase;[m
[32m+[m
[32m+[m[32mclass ExampleTest extends TestCase[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * A basic test example.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function testBasicTest()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->assertTrue(true);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/webpack.mix.js b/webpack.mix.js[m
[1mnew file mode 100644[m
[1mindex 0000000..8a923cb[m
[1m--- /dev/null[m
[1m+++ b/webpack.mix.js[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32mconst mix = require('laravel-mix');[m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m |--------------------------------------------------------------------------[m
[32m+[m[32m | Mix Asset Management[m
[32m+[m[32m |--------------------------------------------------------------------------[m
[32m+[m[32m |[m
[32m+[m[32m | Mix provides a clean, fluent API for defining some Webpack build steps[m
[32m+[m[32m | for your Laravel application. By default, we are compiling the Sass[m
[32m+[m[32m | file for the application as well as bundling up all the JS files.[m
[32m+[m[32m |[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32mmix.js('resources/js/app.js', 'public/js')[m
[32m+[m[32m    .sass('resources/sass/app.scss', 'public/css');[m
