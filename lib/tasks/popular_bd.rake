require 'roo'

namespace :popular_bd do
  desc "Popula o banco de dados com o json gerado."
  task ler_json: :environment do
    os_lista = JSON.parse(File.read('os_bd_backup_json.txt'))
    os_lista.each do |os|
      OrdemDeServico.create(os.to_h)
    end
    puts 'Tarefa finalizada com sucesso!'
  end

  desc "Migra o banco de dados xlsx antigo."
  task migrar_tabela: :environment do
    dados = Roo::Spreadsheet.open('TAB_CADASTRO_OS_MIGRAR.xlsx') # ler tabela
    headers = dados.row(1) # cabeçalho da tabela

    dados.each_with_index do |row, idx|
      next if idx == 0 # pula cabeçalho
      # cria hash dos cabeçalhos e células
      os_data = Hash[[headers, row].transpose]
      if OrdemDeServico.exists?(numero: os_data['numero'])
        puts "OS nº '#{os_data['numero']}' já existe"
        next
      end
      
      os = OrdemDeServico.new(os_data)
      puts "Salvando OS nº #{os.numero}"
      os.save!
    end    

    puts 'Tarefa finalizada com sucesso!'
  end
end
