puts "Cargando chapters"
  Chapter.delete_all
  tiroides = Chapter.create(name: 'Estudio Tiroideo', group: 'HORMONAS')
  hemograma = Chapter.create(name: 'Hemograma', group: 'HEMATOLOGÍA')
  sedimentacion = Chapter.create(name: 'Velocidad Sedimentación', group: 'HEMATOLOGÍA')
  coagulacion = Chapter.create(name: 'Coagulación', group: 'HEMATOLOGÍA')

  proteinas = Chapter.create(name: 'Proteinas', group: 'PROTEINAS')
  inmunologia = Chapter.create(name: 'Inmunología', group: 'INMUNOLOGÍA')
  bioquimica = Chapter.create(name: 'Bioquímica', group: 'BIOQUÍMICA')
  perfil_bq = Chapter.create(name: 'Perfil Bioq. Básica', group: 'PERFILES')
  perfil_lipidico = Chapter.create(name: 'Perfil Lipídico', group: 'PERFILES')

  perfil_hepatico = Chapter.create(name: 'Perfil Hepático', group: 'PERFILES')
  peprfil_renal = Chapter.create(name: 'Perfil Renal', group: 'PERFILES')
  pruebas_especiales = Chapter.create(name: 'Pruebas especiales', group: 'PRUEBAS ESPECIALES')
  marcadores_T = Chapter.create(name: 'Marcadores T.', group: 'MARCADORES T.')
  sistematico_orina = Chapter.create(name: 'Sistemático de Orina', group: 'ORINA. ESTUDIO BÁSICO Y SEDIMENTO')

puts "Cargando centers"
  Center.delete_all
  Center.create(name: 'C.S. PRIMERO DE MAYO', phone: '')
  # AVDA DE VELAZQUEZ, 7 RIVAS-VACIAMADRID 28521

puts "Cargando doctors"
  Doctor.delete_all
  Doctor.create(name: 'MARTIN GARRIDO, MARIA JOSE', speciality: 'MEDICINA FAMILIAR Y COMUNITARIA')
  # CIAS: • 1601 0601 07T N° Colegiado: 28151087-4

puts "Cargando patients"
  Patient.delete_all
  Patient.create(name: 'HERNANDEZ NAVARRO, PALOMA')

puts "Cargando determinations"
  Determination.delete_all
  Determination.create(name: 'T.S.H.', chapter_id: tiroides.id)
