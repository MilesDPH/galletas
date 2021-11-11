<?php

namespace App\Http\Controllers;

use App\Tienda;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use DataTables;

class TiendaController extends Controller
{
    public function __construct()
    {
        $this->middleware('tiporol');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('tienda.index');
    }

    public function tiendaData(){
        $tienda = DB::table('tiendas')
        // ->where('deleted_at','=', null)
        ->get();
        //return DataTables::of(Historico::query())->make(true);
        return DataTables::of($tienda)
        ->make(true);
    }

    public function busquedaData($busqueda){
        $colonia = DB::table('colonias')
        ->select('fk_codigo_postal','colonia')
        ->where('colonia', 'like', '%'.$busqueda.'%')
        ->limit(5)
        ->get();
        $data = array();
        foreach($colonia as $datos){
            $sub_array = array();

            $sub_array['botones'] = '<button type="button" name="idprueba" value="'.$datos->colonia.'-'.$datos->fk_codigo_postal.'" class="btn btn-outline-info btn-block">'.$datos->colonia.'</button>'.'<br>';
            $data[] = $sub_array;
        }
        
        return $data;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('tienda.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $reglas = [
            'nombretienda' => 'required|max:100',
            'calleynum' => 'required|max:100',
            'colonia' => 'required|max:512',
            'cpcolonia' => 'required|max:100',
            'responsable' => 'required|max:100',
        ];
        $this->validate($request,$reglas);

        $tienda = new Tienda;

        $tienda->nombre_tienda = $request->nombretienda;
        $tienda->fk_codigo_postal = $request->cpcolonia;
        $tienda->colonia = $request->colonia;
        $tienda->direccion_tienda = $request->calleynum;
        $tienda->responsable_tienda = $request->responsable;
        $tienda->tel_tienda = $request->teltienda;
        $tienda->fechaalta_tienda = $request->fecharegistro;

        if ($tienda->save()) {
            return redirect("tiendas");
        }else{
            return back();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tienda = Tienda::find($id);
        return view('tienda.edit')->with('tiendas',$tienda);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $reglas = [
            'nombretienda' => 'required|max:100',
            'calleynum' => 'required|max:100',
            'colonia' => 'required|max:512',
            'cpcolonia' => 'required|max:100',
            'responsable' => 'required|max:100',
        ];
        $this->validate($request,$reglas);

        $tienda = Tienda::find($id);

        $tienda->nombre_tienda = $request->nombretienda;
        $tienda->fk_codigo_postal = $request->cpcolonia;
        $tienda->colonia = $request->colonia;
        $tienda->direccion_tienda = $request->calleynum;
        $tienda->responsable_tienda = $request->responsable;
        $tienda->tel_tienda = $request->teltienda;
        $tienda->fechaalta_tienda = $request->fecharegistro;
        $tienda->estatus_tienda = $request->baja;
        $tienda->fechabaja_tienda = $request->fechabaja;
        $tienda->motivobaja_tienda = $request->motivobaja;

        if ($tienda->save()) {
            return redirect("tiendas");
        }else{
            return back();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
