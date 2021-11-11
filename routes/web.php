<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// use Symfony\Component\Routing\Route;
use App\Http\Controllers\UsuarioController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home')->middleware('auth');
// Rutas para pagina de usuarios
Route::resource('usuarios', 'UsuarioController')->middleware('auth','tiporol');
Route::get('/usuarios-data', 'UsuarioController@usuarioData')->name('usuario.data')->middleware('auth','tiporol');

// vistas para pagina de porveedores
Route::resource('proveedores', 'ProveedorController')->middleware('auth','tiporol');
Route::get('/proveedores-data', 'ProveedorController@proveedorData')->name('proveedor.data')->middleware('auth','tiporol');

// vistas para pagina de producto
Route::resource('productos', 'ProductoController')->middleware('auth','tiporol');
Route::get('/productos-data', 'ProductoController@productoData')->name('producto.data')->middleware('auth','tiporol');
Route::get('/ingresar', 'ProductoController@Ingresar')->middleware('auth','tiporol');
Route::post('/bproductoIngreso/{buscar?}', 'ProductoController@busquedaProductoIngreso')->name('busqueda.ingreso')->middleware('auth','tiporol');
Route::post('/registrar-compra', 'ProductoController@registrarCompra')->name('registrar-compra')->middleware('auth', 'tiporol');
Route::get('/historial-compra', 'ProductoController@historialCompra')->name('historial-compra')->middleware('auth', 'tiporol');
Route::get('/compra-data', 'ProductoController@compraData')->name('compra.data')->middleware('auth','tiporol');
Route::get('/pdfticketcompra/{id}', 'ProductoController@ticket')->middleware('auth','tiporol');


// vistas para pagina de Vehiculo
Route::resource('vehiculos', 'VehiculoController')->middleware('auth','tiporol');
Route::get('/vehiculo-data', 'VehiculoController@vehiculoData')->name('vehiculo.data')->middleware('auth','tiporol');
Route::get('/buscarvehiculo/{id}', 'VehiculoController@buscarkmVehiculo')->middleware('auth','tiporol');
Route::post('/registrokm', 'VehiculoController@guardarkmVehiculo')->middleware('auth','tiporol');
Route::get('/obtenervehi', 'VehiculoController@obtenerVehiculo')->middleware('auth','tiporol');
Route::post('/checklist', 'VehiculoController@crearCheckList')->middleware('auth','tiporol');
Route::get('/pdfchecklist', 'VehiculoController@reporteCheckList')->middleware('auth','tiporol');
// resource para tipo de productos.
Route::resource('t_productos', 'TipoProdController')->middleware('auth','tiporol');

// resource para licencia
Route::resource('licencias', 'LicenciaController')->only([
    'store'
]);

// vistas para pagina de tienda
Route::resource('tiendas', 'TiendaController')->middleware('auth','tiporol');
Route::get('/tienda-data', 'TiendaController@tiendaData')->name('tienda.data')->middleware('auth','tiporol');
Route::post('/busqueda/{buscar?}', 'TiendaController@busquedaData')->name('busqueda.data')->middleware('auth','tiporol');

//resource para rutas
Route::resource('rutas', 'RutaController')->middleware('auth','tiporol');
Route::get('/ruta-data', 'RutaController@rutaData')->name('ruta.data')->middleware('auth','tiporol');
Route::post('/busquedatienda/{buscar?}', 'RutaController@busquedaTienda')->name('busqueda.data')->middleware('auth','tiporol');
Route::post('/gtiendaruta', 'RutaController@guardartiendaruta')->middleware('auth','tiporol');
Route::get('/ruta-tienda-data', 'RutaController@rutaTiendaData')->name('ruta.tienda.data')->middleware('auth','tiporol');
Route::post('/rutavehiculo', 'RutaController@rutaVehiculo')->middleware('auth','tiporol');
Route::get('/ruta-vehiculo-data', 'RutaController@rutaVehiculoData')->name('ruta.vehiculo.data')->middleware('auth','tiporol');
Route::get('/rv_baja/{buscar}', 'RutaController@rutaVehiculoBaja')->middleware('auth','tiporol');
Route::get('/rt_baja/{buscar}', 'RutaController@rutaTiendaBaja')->middleware('auth','tiporol');

//resources para gastos
Route::resource('gastos', 'GastosController')->middleware('auth','tiporol');
Route::get('/gastosmes-data', 'GastosController@gastosmesData')->name('gastos.mes.data')->middleware('auth','tiporol');
Route::get('/gastos-data', 'GastosController@gastosData')->name('gastos.data')->middleware('auth','tiporol');
Route::get('/gasto_baja/{buscar}', 'GastosController@gastoBaja')->middleware('auth','tiporol');
Route::get('/gasto_activo/{buscar}', 'GastosController@gastoActivo')->middleware('auth','tiporol');
Route::post('/tipogastos', 'GastosController@tipoGastos')->middleware('auth','tiporol');

// ventas
Route::resource('ventas', 'VentasController',[
	'only' => ['index']
]);
Route::post('/busquedaproducto/{buscar?}', 'VentasController@busquedaProducto')->name('busqueda.data')->middleware('auth','tiporol');
Route::post('/registrar-venta', 'VentasController@registrarVenta')->name('registrar-venta')->middleware('auth', 'tiporol');
Route::get('/historial-venta', 'VentasController@historialVenta')->name('historial-venta')->middleware('auth', 'tiporol');
Route::get('/historial-data', 'VentasController@ventasData')->name('historial.data')->middleware('auth','tiporol');
Route::get('/pdfticket/{id}', 'VentasController@ticket')->middleware('auth','tiporol');
Route::get('/venta-ruta', 'VentasController@VentaxRuta')->name('venta-ruta')->middleware('auth', 'tiporol');
Route::post('/busquedaproductoRuta/{ruta?}/{buscar?}', 'VentasController@busquedaproductoRuta')->name('busquedaruta.data')->middleware('auth','tiporol');
Route::post('/registrar-venta-ruta', 'VentasController@registrarVentaRuta')->name('registrar-venta-ruta')->middleware('auth', 'tiporol');
Route::get('/pdfruta', 'VentasController@reporteRuta')->middleware('auth','tiporol');

Route::get('users-auth', [UsuarioController::class, 'obtenerUsuarioAutenticado'])->name('users.auth');
Route::get('users/{rango_fechas}/venta-devoluciones-mensual', [UsuarioController::class, 'obtenerVentaYDevolucionesMensuales'])->name('users.venta-devoluciones-mensual');


Route::get('/clear-cache', function () {
	echo Artisan::call('config:clear');
	echo Artisan::call('config:cache');
	echo Artisan::call('cache:clear');
	echo Artisan::call('route:clear');
 });



// route para imagenes
Route::get('/img/{filename}', function ($filename) {

    $path = storage_path('app/images/'.$filename);

    if (!\File::exists($path)) abort(404);

	$file = \File::get($path);
	$type = \File::mimeType($path);

	$response = Response::make($file,200);

	$response->header("Content-Type",$type);

	return $response;
});


require __DIR__ . '/Rutas/ruta.php';
require __DIR__ . '/Finanzas/Nomina/nomina.php';
