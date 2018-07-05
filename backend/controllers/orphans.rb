require_relative '../model/orphan_manager'

class ArchivesSpaceService < Sinatra::Base


  Endpoint.get('/orphans')
  .description('List all orphan job types')
  .permissions([])
  .returns([200, "orphan job list in json"]) \
    do
    json_response({
                    :orphans => OrphanManager.registered_orphans,
                    :formats => 'csv'
                  })
  end


end
