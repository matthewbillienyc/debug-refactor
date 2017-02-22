class MetaDataService
  def self.data
    {
      title: 'Sample App',
      author: 'Matthew Billie',
      created_date: '02/21/2017',
      endpoints: [
        {
          url: '/stack_trace',
          info: 'Sample error to demo stack trace'
        },
        {
          url: '/logging',
          info: 'Sample endpoint with Rails log statement'
        },
        {
          url: '/search_byebug',
          info: 'Broken search endpoint to demonstrate logging'
        },
        {
          url: '/postman',
          info: 'Sample endpoint to hit with postman'
        },
        {
          url: '/front_end',
          info: 'Simple view to work on ajax debugging'
        },
        {
          url: '/ajax',
          info: 'Ajax-able action that returns JSON for front end'
        }
      ],
      contributors: [
        {
          name: 'Matthew Billie',
          team: 'USCIS - SAVE'
        },
        {
          name: 'Josh Cohen',
          team: 'USCIS - E-Verify'
        }
      ]
    }
  end
end
