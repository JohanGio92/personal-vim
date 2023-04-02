let s:LIGHTNING = "\<lightning-"

let s:lwcs = [ 
			\ { "accordion": ['allow-multiple-sections-open','active-section-name={string o array}','onsectiontoggle={handleSectionToggle}'] },
			\ { "avatar": ['variant=','src=','initials=','fallback-icon-name=','alternative-text=','size='] },
			\ { "breadcrumb": ['label=','href=','onclick='] },
			\ { "button": ['label=','title=','onclick=','variant=','stretch'] },
			\ { "button-icon": ['icon-name=','alternative-text=','title='] },
			\ { "button-icon-stateful": ['icon-name=','selected=','onclick=','alternative-text='] },
			\ { "button-menu": ['alternative-text=','icon-name=','tooltip=','menu-alignment=','onselect=','onopen=','onclose='] },
			\ { "button-stateful": ['label-when-off=','label-when-on=','label-when-hover=','icon-name-when-off=','icon-name-when-on=','icon-name-when-hover=','onclick=','selected'] },
			\ { "card": ['variant=','icon-name=','title='] },
			\ { "carousel-image": ['src=','header=','description=','alternative-text=','href='] },
			\ { "checkbox-group": ['name=','label=','options=','value=','onchange=','required'] },
			\ { "combobox": ['name=','label=','placeholder=','value=','onchange=','onopen=','options=','validity','required','disable'] },
			\ { "datatable": ['key-field="id"','data={data}','columns={columns}','selected-rows={selectedRows}','wrap-text-max-lines="3"','errors=','oncancel=','onheaderaction=','onloadmore=','onresize=','onrowselection=','onsave=','onsort='] },
			\ { "dual-listbox": ['id="selectOptions"','name=','label=','source-label=','selected-label=','options={listOptions}','value={defaultOptions}','required-options={requiredOptions}','onchange={handleChange}'] },
			\ { "file-upload": ['label=','name=','accept={acceptedFormats}','record-id={myRecordId}','file-field-name="Guest_Record_fileupload__c"','file-field-value={encryptedToken}','onuploadfinished={handleUploadFinished}','multiple'] },
			\ { "formatted-address": ['street=','city=','country=','province=','postal-code=','latitude=','longitude=','show-static-map'] },
			\ { "formatted-date-time": ['value="1547250828000"','year="numeric"','month="long"','day="numeric"','hour="2-digit"','minute="2-digit"','time-zone-name="short"','time-zone="UTC"'] },
			\ { "formatted-name": ['first-name=','last-name=','middle-name=','informal-name=','suffix=','salutation=','format="short,medium,long"'] },
			\ { "formatted-url": ['value="https://salesforce.com"','label="Visit salesforce.com"','target="_blank,_self,_parent,_top"','tooltip='] },
			\ { "icon": ['icon-name=','size=','alternative-text=','title=','src='] },
			\ { "input": ['type="checkbox"','type="checkbox-button"','type="date"','type="datetime"','type="time"','type="email"','type="file"','type="password"','type="search"','type="tel"','type="url"','type="number"','type="text"','type="toggle"','date-style="short,medium,long"','time-style="short,medium,long"','label=','value=','pattern=".+@example.com"','placeholder=','maxlength=','message-when-too-long=','minlength=','message-when-too-short=','multiple','step=','formatter=','min=','max=','onchange=','oncommit=','field-level-help','is-loading','checked'] },
			\ { "input-address": ['address-label=','street-label=','city-label=','country-label=','province-label=','postal-code-label=','street=','city=','province=','country=','country-options=','province-options=','postal-code=','show-address-lookup','onchange={handleChange}','required'] },
			\ { "layout": ['horizontal-align="center"','horizontal-align="space"','horizontal-align="spread"','horizontal-align="end"','vertical-align="start"','vertical-align="center"','vertical-align="end"','vertical-align="stretch"','pull-to-boundary="small"','pull-to-boundary="medium"','pull-to-boundary="large"','multiple-rows'] },
			\ { "layout-item": ['flexibility="auto, nogrow"','padding="around-small"','padding="horizontal-medium"','size=','small-device-size=','medium-device-size=','large-device-size='] },
			\ { "map": ['map-markers={mapMarkers}','markers-title="title"','onmarkerselect={handleMarkerSelect}','selected-marker-value={selectedMarkerValue}','zoom-level="1-22"','list-view="visible"','list-view="hidden"','center={center}','show-footer','options={mapOptions}'] },
			\ { "record-form": ['record-id={recordId}','object-api-name={objectApiName}','fields={fields}','mode="view"','mode="edit"','mode="readonly"','layout-type="Full"','layout-type="Compact"','columns="1"','onsubmit={handleSubmit}','onsuccess={handleSuccess}','onerror={handleError}','onload={handleLoad}','oncancel={handleCancel}'] },
			\ { "record-edit-form": ['record-id={recordId}','object-api-name={objectApiName}','onclick=','onsubmit=','onsuccess=','onerror=', 'onload='] },
			\ { "record-view-form": ['record-id={recordId}','object-api-name={objectApiName}','density="compact"','density=comfy','density=element_1-col','onload={handleLoad}'] },
			\ ]





function! ObtenerComienzoDeLaPalabra(palabraImcompleta, linea) abort
    let l:palabraImcompleta = a:palabraImcompleta
    while ((l:palabraImcompleta > 0) && (a:linea[l:palabraImcompleta-1] =~? '\S'))
	let l:palabraImcompleta -= 1
    endwhile
    return l:palabraImcompleta
endfunction

function! AddMatch(base, matches) abort
	let l:resultado = []

	for l:match in a:matches
		if(l:match =~? a:base)	
			call add(l:resultado, {
						\ 'icase': 1,
						\ 'word': l:match,
						\ 'abbr': l:match,
						\ 'menu': 'attribute',
						\ })
		endif
	endfor

	return l:resultado
endfunction

function! UpLine() abort

	let l:index = 0
	let l:lineNumber = getpos('.')[1]
	let l:currentLine = getline(l:lineNumber)

	while (l:currentLine !~? '\v\<' )
		let l:index = l:index + 1
		let l:currentLine = getline(l:lineNumber - l:index)
	endwhile
	
	return l:currentLine
endfunction

function! LwcComplete() abort

	for lwc in s:lwcs
		for key in keys(lwc)
			let l:component = s:LIGHTNING .. key 
			let l:posicionGuardada = getpos('.')
			let l:currentLine = UpLine()

			if l:currentLine =~? '\v' .. l:component .. '\ze($|[^-])'

				let l:currentLine = getline('.')
				let l:palabraImcompleta = col('.') - 1
				let l:comienzoDeLaPabra = ObtenerComienzoDeLaPalabra(copy(l:palabraImcompleta), l:currentLine)

				if len(l:currentLine) == l:palabraImcompleta
					let l:base = l:currentLine[l:comienzoDeLaPabra:l:palabraImcompleta]
				else
					let l:base = l:currentLine[l:comienzoDeLaPabra:l:palabraImcompleta-1]
				endif

				let l:resultado = AddMatch(l:base, lwc[key])
				call complete(l:comienzoDeLaPabra + 1, sort(l:resultado))
			endif
		endfor
	endfor

	return ""
endfunction

""imap <expr> <down> pumvisible() ? "\<C-N>" : "\<C-down>"
""imap <expr> <up> pumvisible() ? "\<C-p>" : "\<C-up>"
inoremap <C-D> <C-R>=LwcComplete()<CR>

