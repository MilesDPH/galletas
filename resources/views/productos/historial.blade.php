@extends('layouts.app')

@section('content')

<section id="team" class="pb-5">
    <div class="floating-arriba">
        <a href="{{ url('ingresar') }}" class="btn btn-primary btn-fab">
            <i class="fa fa-arrow-left">Regresar</i>
        </a>
    </div>
    <div class="container">
        <h5 class="section-title h1">Compras</h5>
    </div>
        <div class="margenes">
            <div class="table-responsive">
                @csrf
                <table id="tabla-historial" class="table table-bordered table-hover " style="width:100%">
                    <thead>
                        <tr>
                            <th>No de Lote</th>
                            <th>Total</th>
                            <th>Estatus</th>
                            <th>Fecha</th>
                            <th>Detalle</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>

</section>

@endsection

@section('scripts')
<script>

    $(function() {
        $('#tabla-historial').DataTable({
            dom: '<"top"lB>frt<"bottom"ip>',
            buttons: [
                    {
                        extend: 'csv',
                        title: 'csv'
                    },
                    {
                        extend: 'excel',
                        title: null,
                    },
                    {
                        extend: 'pdf',
                        title: null
                    }
                    
                ],
            processing: true,
            serverSide: true,
            ajax: '{!! route('compra.data') !!}',
            columns: [
                { data: 'lote', name: 'lote' },
                { data: 'total', name: 'total'},
                { data: 'estatus_compra', name: 'estatus_compra'},
                { data: 'created_at', name: 'created_at'},
                {
                    sortable: false,
                    "render": function ( data, type, full, meta ) {
                        var buttonID = full.id;
                        return '<button type="button" class="btn btn-outline-primary btn-ticket" value="'+buttonID+'"><i class="fa fa-file-o"></i></button>';
                    }
                },
                
            ],
            columnDefs: [
                { targets: 2, "width": "2%",
                    "render": function ( data, type, row, meta ) {
                        if ( row['estatus_compra'] == 1 ) {
                            return 'Activo';
                        }else{
                            return 'Baja'
                        }
                    }
                },
            ],
            "language": {
                "sProcessing":     "Procesando...",
                "sLengthMenu":     "Mostrar _MENU_ registros",
                "sZeroRecords":    "No se encontraron resultados",
                "sEmptyTable":     "Ningún dato disponible en esta tabla",
                "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
                "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
                "sInfoPostFix":    "",
                "sSearch":         "Buscar:",
                "sUrl":            "",
                "sInfoThousands":  ",",
                "sLoadingRecords": "Cargando...",
                "oPaginate": {
                    "sFirst":    "Primero",
                    "sLast":     "Último",
                    "sNext":     "Siguiente",
                    "sPrevious": "Anterior"
                },
                "oAria": {
                    "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                    "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                }
            },
            order: [[4, "asc"]],
            "lengthMenu": [[10, 25, 50, 100, 500,-1], [10, 25, 50, 100, 500,"todos"]],
        });
    });

    $(document).on('click','.btn-ticket',function(){
        var id = $(this).val();
        var url = '/pdfticketcompra/'+id
        window.open(url, '_blank');
        
    });
    </script>

@endsection