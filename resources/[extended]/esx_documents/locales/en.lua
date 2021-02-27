Locales['en'] = {
    ['document_deleted'] = "Documento fue ~g~eliminado~w~.",
    ['document_delete_failed'] = "Eliminar documento ~r~ha fallado~w~.",
    ['copy_from_player'] = "~g~recibido~w~ una copia del formulario de un jugador.",
    ['from_copied_player'] = "formulario ~g~copiado~w~ al jugador",
    ['could_not_copy_form_player'] = "Podría ~r~no~w~ copia el formulario al jugador.",
    ['document_options'] = "Opciones de documento",
    ['public_documents'] = "Documentos públicos",
    ['job_documents'] = "Documentos de trabajo",
    ['saved_documents'] = "Documentos guardados",
    ['close_bt'] = "Cerrar",
    ['no_player_found'] = "No se encontraron jugadores.",
    ['go_back'] = "Regresa",
    ['view_bt'] = "Ver",
    ['show_bt'] = "mostrar",
    ['give_copy'] = "Dar copia",
    ['delete_bt'] = "Eliminar",
    ['yes_delete'] = "Sí eliminar",
}

Config.Documents['en'] = {
      ["public"] = {
        {
          headerTitle = "FORMULARIO DE AFIRMACIÓN",
          headerSubtitle = "Formulario de afirmación ciudadana ",
          elements = {
            { label = "CONTENIDO DE AFIRMACIÓN", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "DECLARACIÓN DEL TESTIGO",
          headerSubtitle = "Testimonio oficial de testigos.",
          elements = {
            { label = "DATE OF OCCURENCE", type = "input", value = "", can_be_emtpy = false },
            { label = "TESTIMONY CONTENT", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "DECLARACIÓN DE TRANSPORTE DE VEHÍCULOS",
          headerSubtitle = "Declaración de transmisión del vehículo hacia otro ciudadano.",
          elements = {
            { label = "Placa del vehículo", type = "input", value = "", can_be_emtpy = false },
            { label = "Nombre del ciudadano", type = "input", value = "", can_be_emtpy = false },
            { label = "PRECIO ACORDADO", type = "input", value = "", can_be_empty = false },
            { label = "Otra información", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "DECLARACIÓN DE DEUDA HACIA EL CIUDADANO",
          headerSubtitle = "Declaración oficial de la deuda con otro ciudadano.",
          elements = {
            { label = "NOMBRE DEL ACREEDOR", type = "input", value = "", can_be_emtpy = false },
            { label = "APELLIDO DEL ACREEDOR", type = "input", value = "", can_be_emtpy = false },
            { label = "CANTIDAD ADEUDADA", type = "input", value = "", can_be_empty = false },
            { label = "FECHA DE VENCIMIENTO", type = "input", value = "", can_be_empty = false },
            { label = "OTRA INFORMACIÓN", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "Declaración de liquidación de la deuda de otro ciudadano",
          headerSubtitle = "Declaración de liquidación de la deuda de otro ciudadano.",
          elements = {
            { label = "NOMBRE DEL DEUDOR", type = "input", value = "", can_be_emtpy = false },
            { label = "APELLIDO DEL DEUDOR", type = "input", value = "", can_be_emtpy = false },
            { label = "MONTO DE LA DEUDA", type = "input", value = "", can_be_empty = false },
            { label = "OTRA INFORMACIÓN", type = "textarea", value = "DECLARO QUE EL CIUDADANO MENCIONADO HA COMPLETADO UN PAGO CON EL MONTO DE LA DEUDA MENCIONADA.", can_be_emtpy = false, can_be_edited = false },
          }
        }
      },
      ["police"] = {
        {
          headerTitle = "PERMISO ESPECIAL DE ESTACIONAMIENTO",
          headerSubtitle = "Permiso especial de estacionamiento sin límite.",
          elements = {
            { label = "NOMBRE DEL TITULAR", type = "input", value = "", can_be_emtpy = false },
            { label = "APELLIDO DEL TITULAR", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO HASTA", type = "input", value = "", can_be_empty = false },
            { label = "INFORMACIÓN", type = "textarea", value = "AL CIUDADANO MENCIONADO SE LE HA CONCEDIDO UN PERMISO DE APARCAMIENTO ILIMITADO EN CADA ZONA DE LA CIUDAD Y ES VÁLIDO HASTA LA FECHA DE CADUCIDAD MENCIONADA.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "PERMISO DE ARMAS",
          headerSubtitle = "Permiso especial de armas proporcionado por la policía.",
          elements = {
            { label = "NOMBRE DEL TITULAR", type = "input", value = "", can_be_emtpy = false },
            { label = "APELLIDO DEL TITULAR", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO HASTA", type = "input", value = "", can_be_empty = false },
            { label = "INFORMACIÓN", type = "textarea", value = "AL CIUDADANO MENCIONADO SE LE PERMITE Y SE LE CONCEDE UN PERMISO DE ARMAS QUE SERÁ VÁLIDO HASTA LA FECHA DE VENCIMIENTO ANTES MENCIONADA.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "PERMISO DE ESCOLTA",
          headerSubtitle = "Permiso especial de escolta proporcionado por la policía.",
          elements = {
            { label = "NOMBRE DEL TITULAR", type = "input", value = "", can_be_emtpy = false },
            { label = "APELLIDO DEL TITULAR", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO HASTA", type = "input", value = "", can_be_empty = false },
            { label = "INFORMACIÓN", type = "textarea", value = "AL CIUDADANO MENCIONADO SE LE PERMITE Y SE LE CONCEDE UN PERMISO DE PRESTAR SERVICIOS DE SEGURIDAD PRIVADA QUE SERÁ VÁLIDO HASTA LA FECHA DE VENCIMIENTO ANTES MENCIONADA.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "ATECEDENTES PENALES",
          headerSubtitle = "Antecedentes penales de los ciudadanos.",
          elements = {
            { label = "NOMBRE DEL CIUDADANO", type = "input", value = "", can_be_emtpy = false },
            { label = "APELLIDO DEL CIUDADANO", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO HASTA", type = "input", value = "", can_be_empty = false },
            { label = "REGISTRO", type = "textarea", value = "LA POLICÍA DECLARA QUE EL CIUDADANO MENCIONADO TIENE UN LIMPIO EL HISTORIAL CRIMINAL. ESTE RESULTADO SE GENERA A PARTIR DE LOS DATOS PRESENTADOS EN EL SISTEMA DE REGISTRO DE ANTECEDENTES PENALES DE USMEKISTAN EN LA FECHA DE FIRMA DEL DOCUMENTO.", can_be_emtpy = false, can_be_edited = false },
          }
     
      },
    },
      ["ambulance"] = {
        {
          headerTitle = "INFORME MÉDICO - PATOLOGÍA",
          headerSubtitle = "Informe médico oficial proporcionado por el personal medico.",
          elements = {
            { label = "NOMBRE ASEGURADO", type = "input", value = "", can_be_emtpy = false },
            { label = "APELLIDO ASEGURADO", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO HASTA", type = "input", value = "", can_be_empty = false },
            { label = "NOTAS MÉDICAS", type = "textarea", value = "EL MENCIONADO CIUDADANO ASEGURADO FUE EXAMINADO POR UN FUNCIONARIO DE SALUD Y SE DETERMINÓ QUE ESTABA SANO Y NO SE DETECTARON CONDICIONES A LARGO PLAZO. ESTE INFORME ES VÁLIDO HASTA LA FECHA DE CADUCIDAD ANTES MENCIONADA.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "INFORME MÉDICO - PSICOLOGÍA",
          headerSubtitle = "Informe médico oficial proporcionado por un psicólogo.",
          elements = {
            { label = "NOMBRE ASEGURADO", type = "input", value = "", can_be_emtpy = false },
            { label = "APELLIDO ASEGURADO", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO HASTA", type = "input", value = "", can_be_empty = false },
            { label = "NOTAS MÉDICAS", type = "textarea", value = "EL MENCIONADO CIUDADANO ASEGURADO FUE EXAMINADO POR UN FUNCIONARIO DE LA SALUD Y SE DETERMINÓ QUE ESTABA MENTALMENTE SANO SEGÚN LOS ESTÁNDARES PSICOLÓGICOS MÁS BAJOS APROBADOS. ESTE INFORME ES VÁLIDO HASTA LA FECHA DE CADUCIDAD ANTES MENCIONADA.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "INFORME MÉDICO - OFTALMÓLOGO",
          headerSubtitle = "Informe médico oficial proporcionado por un oftalmólogo.",
          elements = {
            { label = "NOMBRE ASEGURADO", type = "input", value = "", can_be_emtpy = false },
            { label = "APELLIDO ASEGURADO", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO HASTA", type = "input", value = "", can_be_empty = false },
            { label = "NOTAS MÉDICAS", type = "textarea", value = "EL MENCIONADO CIUDADANO ASEGURADO FUE EXAMINADO POR UN OFICIAL DE SALUD Y SE DETERMINÓ CON UNA VISIÓN SANA Y PRECISA. ESTE INFORME ES VÁLIDO HASTA LA FECHA DE CADUCIDAD ANTES MENCIONADA.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "PERMISO DE USO DE MARIHUANA",
          headerSubtitle = "Permiso oficial de uso de marihuana medicinal para los ciudadanos.",
          elements = {
            { label = "NOMBRE ASEGURADO", type = "input", value = "", can_be_emtpy = false },
            { label = "APELLIDO ASEGURADO", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO HASTA", type = "input", value = "", can_be_empty = false },
            { label = "NOTAS MÉDICAS", type = "textarea", value = "AL MENCIONADO CIUDADANO ASEGURADO SE LE CONCEDE, DESPUÉS DE SER EXAMINADO MINUCIOSAMENTE POR UN ESPECIALISTA DE LA SALUD, UN PERMISO DE USO DE MARIHUANA DEBIDO A RAZONES MÉDICAS NO REVELADAS. LA CANTIDAD LEGAL Y PERMITIDA QUE UN CIUDADANO PUEDE TENER NO PUEDE SER SUPERIOR A 100 gramos.", can_be_emtpy = false, can_be_edited = false },
          }
        },

      ["avocat"] = {
        {
          headerTitle = "contrato de servicios legales",
          headerSubtitle = "contrato de servicios legales.",
          elements = {
            { label = "NOMBRE DEL CIUDADANO", type = "input", value = "", can_be_emtpy = false },
            { label = "APELLIDO DEL CIUDADANO", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO HASTA", type = "input", value = "", can_be_empty = false },
            { label = "INFORMACIÓN", type = "textarea", value = "ESTE DOCUMENTO ES LA PRUEBA DE LA REPRESENTACIÓN LEGAL Y LA COBERTURA DEL CIUDADANO MENCIONADO. LOS SERVICIOS LEGALES SON VÁLIDOS HASTA LA FECHA DE VENCIMIENTO MENCIONADA.", can_be_emtpy = false },
          }
        }
      }
    }
}
  
