{if isset($productId)}
    <div id="dbjointpurchase" class="mb-3">
        <div id="related-title" class="row">
            <div class="col-md-12">
                <h2>
                    {l s='DB Joint Purchase' mod='dbjointpurchase'}
                    <span class="help-box" data-toggle="popover" data-content="{l s='Puede añador un máximos de 3 productos' mod='dbjointpurchase'}Puede añador un máximos de 3 productos" data-original-title="" title=""></span>
                </h2> 
            </div>
        </div>
        <div class="form-group">
            <label class="control-label" >
                {l s='Añadir IDs de Productos Relacionados' mod='dbjointpurchase'}
            </label>
            <div class="col-lg-4 pl-0">
                <input type="text" name="related_products_ids" class="form-control" value="{$relatedProductsIds}" placeholder="{l s='Escriba los IDs separados por comas' mod='dbjointpurchase'}">
                <p class="help-block">
                    {l s='Ingrese los IDs (ejemplo: 1, 2, 3).' mod='dbjointpurchase'}
                </p>
            </div>
        </div>
    </div>
{/if}

<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
        var inputElement = document.querySelector('input[name="related_products_ids"]');
        var formElement = inputElement.closest('form');

        formElement.addEventListener('submit', function(event) {
            var relatedProductsIds = inputElement.value.trim();
            var count = relatedProductsIds.split(',').filter(function(id) {
                return id.trim() !== ''; // Filtrar IDs vacíos
            }).length;

            if (count > 3) {
                event.preventDefault();
                alert('Puede seleccionar un máximo de tres productos.');
            }
        });
    });
</script>