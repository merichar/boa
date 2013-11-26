# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require_relative 'tool_seed.rb'

puts 'Seeding Database...'
puts
puts 'Seeding:'

# Organization Categories -----------------------------------------------------
puts 'Organization Categories'
scc = OrganizationCategory.create({ name: 'SCC'})
frat = OrganizationCategory.create({ name: 'Fraternity'})
soro = OrganizationCategory.create({ name: 'Sorority'})
indie = OrganizationCategory.create({ name: 'Independent'})
blitz = OrganizationCategory.create({ name: 'Blitz'})
concessions = OrganizationCategory.create({ name: 'Concessions'})
non_building = OrganizationCategory.create({ name: 'Non-Building' })
university = OrganizationCategory.create({ name: 'University Staff' })

# Organizations ---------------------------------------------------------------
puts 'Organizations'
scc_org = Organization.create({ name: 'SCC', organization_category: scc })
  OrganizationAlias.create({ organization: scc_org, name: 'Spring Carnival Committee' })

puts '  University'
ehs_org = Organization.create({ name: 'Environmental Health and Safety', organization_category: university })
  OrganizationAlias.create({ organization: ehs_org, name: 'EH & S' })
  OrganizationAlias.create({ organization: ehs_org, name: 'EHS' })
fms_org = Organization.create({ name: 'Facilities Managment Services', organization_category: university })
  OrganizationAlias.create({ organization: fms_org, name: 'FMS' })
dosa_org = Organization.create({ name: 'Division of Student Affairs', organization_category: university })
  OrganizationAlias.create({ organization: dosa_org, name: 'DOSA' })
  OrganizationAlias.create({ organization: dosa_org, name: 'Student Affairs' })
  OrganizationAlias.create({ organization: dosa_org, name: 'Student Activities' })
  OrganizationAlias.create({ organization: dosa_org, name: 'Student Live' })
  OrganizationAlias.create({ organization: dosa_org, name: 'SLO' })

puts '  Consessions'
kapsig_org = Organization.create({ name: 'Kappa Sigma', organization_category: concessions })
  OrganizationAlias.create({ organization: kapsig_org, name: 'KapSig' })
aphio_org = Organization.create({ name: 'Alpha Phi Omega', organization_category: concessions })
  OrganizationAlias.create({ organization: aphio_org, name: 'APhiO' })

puts '  Fraternity'
aepi_org = Organization.create({ name: 'Alpha Epsilon Pi', organization_category: frat })
  OrganizationAlias.create({ organization: aepi_org, name: 'AEPi' })
dtd_org = Organization.create({ name: 'Delta Tau Delta', organization_category: frat })
  OrganizationAlias.create({ organization: dtd_org, name: 'Delt' })
  OrganizationAlias.create({ organization: dtd_org, name: 'DTD' })
du_org = Organization.create({ name: 'Delta Upsilon', organization_category: frat })
  OrganizationAlias.create({ organization: du_org, name: 'DU' })
sigep_org = Organization.create({ name: 'Sigma Phi Epsilon', organization_category: frat })
  OrganizationAlias.create({ organization: sigep_org, name: 'SigEp' })
  OrganizationAlias.create({ organization: sigep_org, name: 'SPE' })

puts '  Sorority'
aphi_org = Organization.create({ name: 'Alpha Phi', organization_category: soro })
  OrganizationAlias.create({ organization: aphi_org, name: 'APhi' })
axo_org = Organization.create({ name: 'Alpha Chi Omega', organization_category: soro })
  OrganizationAlias.create({ organization: axo_org, name: 'AXO' })
  OrganizationAlias.create({ organization: axo_org, name: 'Alpha Chi' })
ddd_org = Organization.create({ name: 'Delta Delta Delta', organization_category: soro })
  OrganizationAlias.create({ organization: ddd_org, name: 'DDD' })
  OrganizationAlias.create({ organization: ddd_org, name: 'TriDelta' })
dg_org = Organization.create({ name: 'Delta Gamma', organization_category: soro })
  OrganizationAlias.create({ organization: dg_org, name: 'DG' })
kat_org = Organization.create({ name: 'Kappa Alpha Theta', organization_category: soro })
  OrganizationAlias.create({ organization: kat_org, name: 'KAT' })
  OrganizationAlias.create({ organization: kat_org, name: 'Theta' })
kkg_org = Organization.create({ name: 'Kappa Kappa Gamma', organization_category: soro })
  OrganizationAlias.create({ organization: kkg_org, name: 'KKG' })
  OrganizationAlias.create({ organization: kkg_org, name: 'Kappa' })

puts '  Independent'
asa_org = Organization.create({ name: 'Asian Student Association', organization_category: indie })
  OrganizationAlias.create({ organization: asa_org, name: 'ASA' })
fringe_org = Organization.create({ name: 'Fringe', organization_category: indie })
kgb_org = Organization.create({ name: 'KGB', organization_category: indie })
sdc_org = Organization.create({ name: 'Student Dormitory Council', organization_category: indie })
  OrganizationAlias.create({ organization: sdc_org, name: 'SDC' })
ssa_org = Organization.create({ name: 'Singapore Student Association', organization_category: indie })
  OrganizationAlias.create({ organization: ssa_org, name: 'SSA' })
tsa_org = Organization.create({ name: 'Taiwanese Student Association', organization_category: indie })
  OrganizationAlias.create({ organization: tsa_org, name: 'TSA' })

puts '  Blitz'
astro_org = Organization.create({ name: 'Astronomy Club', organization_category: blitz })
  OrganizationAlias.create({ organization: astro_org, name: 'Astro' })
#akpsi_org = Organization.create({ name: 'Alpha Kappa Psi', organization_category: blitz })
#  OrganizationAlias.create({ organization: akpsi_org, name: 'AKPsi' })
math_org = Organization.create({ name: 'Math Club', organization_category: blitz })
mayur_org = Organization.create({ name: 'Mayur SASA', organization_category: blitz })
  OrganizationAlias.create({ organization: mayur_org, name: 'Mayur' })
  OrganizationAlias.create({ organization: mayur_org, name: 'SASA' })
mcs_org = Organization.create({ name: 'Mellon College of Science', organization_category: blitz })
  OrganizationAlias.create({ organization: mcs_org, name: 'MCS' })
#mudge_org = Organization.create({ name: 'Mudge', organization_category: blitz })
sae_org = Organization.create({ name: 'Sigma Alpha Epsilon', organization_category: blitz })
  OrganizationAlias.create({ organization: sae_org, name: 'SAE' })
spirit_org = Organization.create({ name: 'Spirit', organization_category: blitz })
#stever_org = Organization.create({ name: 'Stever', organization_category: blitz })

puts '  Non-Building'
crew_org = Organization.create({ name: 'Crew', organization_category: non_building })
  OrganizationAlias.create({ organization: crew_org, name: 'Rowing' })
the_os_org = Organization.create({ name: 'The Originals', organization_category: non_building })
  OrganizationAlias.create({ organization: the_os_org, name: 'The O\'s' })
pike_org = Organization.create({ name: 'Pi Kappa Alpha', organization_category: non_building })
  OrganizationAlias.create({ organization: pike_org, name: 'Pike' })
  OrganizationAlias.create({ organization: pike_org, name: 'Pika' })
polo_org = Organization.create({ name: 'Water Polo', organization_category: non_building })
  OrganizationAlias.create({ organization: polo_org, name: 'Polo' })
habitat_org = Organization.create({ name: 'Habitat for Humanity', organization_category: non_building })
  OrganizationAlias.create({ organization: habitat_org, name: 'Habitat' })

# SCC Members -----------------------------------------------------------------
puts 'SCC Members (not exhaustive)'
rachel_user = User.new({ email: 'rcrown@andrew.cmu.edu', name: 'Rachel Crown'})
# Fix this with shibboleth
puts '    FIXME WITH SHIBBOLETH'
rachel_user.password = 'testtest'
rachel_user.password_confirmation = 'testtest'
rachel_user.add_role :admin
rachel_user.save!
rachel = Participant.create({ andrewid: 'rcrown', phone_number: 6178617669, user: rachel_user })
Membership.create({ organization: scc_org, participant: rachel, title: 'Midway Chair' })
Membership.create({ organization: kat_org, participant: rachel })
emily_user = User.new({ email: 'ehrin@andrew.cmu.edu', name: 'Emily Hrin' })
# Fix this with shibboleth
puts '    FIXME WITH SHIBBOLETH'
emily_user.password = 'testtest'
emily_user.password_confirmation = 'testtest'
emily_user.add_role :admin
emily_user.save!
emily = Participant.create({ andrewid: 'ehrin', phone_number: 7037854617, user: emily_user })
Membership.create({ organization: scc_org, participant: emily, title: 'Carnival Co-Chair' })
Membership.create({ organization: aphi_org, participant: emily })
jackson_user = User.new({ email: 'jallagh@andrew.cmu.edu', name: 'Jackson Gallagher' })
# Fix this with shibboleth
puts '    FIXME WITH SHIBBOLETH'
jackson_user.password = 'testtest'
jackson_user.password_confirmation = 'testtest'
jackson_user.add_role :admin
jackson_user.save!
jackson = Participant.create({ andrewid: 'jgallagh', phone_number: 9376847115, user: jackson_user })
Membership.create({ organization: scc_org, participant: jackson, title: 'Carnival Co-Chair' })
Membership.create({ organization: dtd_org, participant: jackson })

# Booth Chairs ----------------------------------------------------------------
puts 'Booth Chairs'

puts '  AXO'
Membership.create({ organization: axo_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'emadigan', phone_number: 5168497817 }), is_booth_chair: true })
Membership.create({ organization: axo_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'bflatley', phone_number: 5085665712 }), is_booth_chair: true })
Membership.create({ organization: axo_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'jteitelb', phone_number: 3038153575 }), is_booth_chair: true })

puts '  AEPi'
Membership.create({ organization: aepi_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'bgardine', phone_number: 7039948442 }), is_booth_chair: true })
Membership.create({ organization: aepi_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'bmittman', phone_number: 6263484219 }), is_booth_chair: true })

puts '  Alpha Phi'
Membership.create({ organization: aphi_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'baq', phone_number: 9732023835 }), is_booth_chair: true })
Membership.create({ organization: aphi_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'shanas', phone_number: 9737181526 }), is_booth_chair: true })

puts '  APhiO'
Membership.create({ organization: aphio_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'lghernan', phone_number: 6618478483 }), is_booth_chair: true })
Membership.create({ organization: aphio_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'judyh', phone_number: 5165074684 }), is_booth_chair: true })

puts '  ASA'
Membership.create({ organization: asa_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'jalau', phone_number: 7813544899 }), is_booth_chair: true })
Membership.create({ organization: asa_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'cratanal' }), is_booth_chair: true })

puts '  Astro'
Membership.create({ organization: astro_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'mfinlay', phone_number: 2103108054 }), is_booth_chair: true })
Membership.create({ organization: astro_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'agurvich', phone_number: 6313581073 }), is_booth_chair: true })
Membership.create({ organization: astro_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'amarano', phone_number: 9144209281 }), is_booth_chair: true })
Membership.create({ organization: astro_org, booth_chair_order: 4, participant: Participant.create({ andrewid: 'bhaas', phone_number: 7246832352 }), is_booth_chair: true })

puts '  TriDelt'
Membership.create({ organization: ddd_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'lmilisit', phone_number: 4125278059 }), is_booth_chair: true })
Membership.create({ organization: ddd_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'pthang', phone_number: 8186219840 }), is_booth_chair: true })
Membership.create({ organization: ddd_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'cciriell', phone_number: 9086443926 }), is_booth_chair: true })

puts '  DG'
Membership.create({ organization: dg_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'ahekler', phone_number: 5712302399 }), is_booth_chair: true })
Membership.create({ organization: dg_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'sparrine', phone_number: 9735257942 }), is_booth_chair: true })
Membership.create({ organization: dg_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'slanden', phone_number: 4103001575 }), is_booth_chair: true })
Membership.create({ organization: dg_org, booth_chair_order: 4, participant: Participant.create({ andrewid: 'haejinp', phone_number: 8607032010 }), is_booth_chair: true })
Membership.create({ organization: dg_org, booth_chair_order: 5, participant: Participant.create({ andrewid: 'searnest', phone_number: 9795744929 }), is_booth_chair: true })
Membership.create({ organization: dg_org, booth_chair_order: 6, participant: Participant.create({ andrewid: 'tyv', phone_number: 6469431119 }), is_booth_chair: true })

puts '  DTD'
Membership.create({ organization: dtd_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'jdorr', phone_number: 8452831045 }), is_booth_chair: true })
Membership.create({ organization: dtd_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'haozheg', phone_number: 9084034261 }), is_booth_chair: true })
Membership.create({ organization: dtd_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'tfs', phone_number: 7173195528 }), is_booth_chair: true })
Membership.create({ organization: dtd_org, booth_chair_order: 4, participant: Participant.create({ andrewid: 'bbzhang', phone_number: 4127223696 }), is_booth_chair: true })
Membership.create({ organization: dtd_org, booth_chair_order: 5, participant: Participant.create({ andrewid: 'achisolm', phone_number: 6315468835 }), is_booth_chair: true })

puts '  Fringe'
Membership.create({ organization: fringe_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'aahiggin', phone_number: 7032970163 }), is_booth_chair: true })

puts '  Theta'
Membership.create({ organization: kat_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'asteger', phone_number: 7035851538 }), is_booth_chair: true })
Membership.create({ organization: kat_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'rwolfing', phone_number: 9259897941 }), is_booth_chair: true })
Membership.create({ organization: kat_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'kmho', phone_number: 8082226379 }), is_booth_chair: true })
Membership.create({ organization: kat_org, booth_chair_order: 4, participant: Participant.create({ andrewid: 'ihlee', phone_number: 9713408528 }), is_booth_chair: true })

puts '  Kappa'
Membership.create({ organization: kkg_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'kloisell', phone_number: 2158051921 }), is_booth_chair: true })
Membership.create({ organization: kkg_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'sedavies', phone_number: 7175079253 }), is_booth_chair: true })
Membership.create({ organization: kkg_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'remyb', phone_number: 8453251626 }), is_booth_chair: true })
Membership.create({ organization: kkg_org, booth_chair_order: 4, participant: Participant.create({ andrewid: 'jayoungy', phone_number: 2016631656 }), is_booth_chair: true })

puts '  KapSig'
Membership.create({ organization: kapsig_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'jmoldave', phone_number: 6176710774 }), is_booth_chair: true })
Membership.create({ organization: kapsig_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'tmi', phone_number: 7326723722 }), is_booth_chair: true })

puts '  KGB'
Membership.create({ organization: kgb_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'zhg', phone_number: 6085129248 }), is_booth_chair: true })
Membership.create({ organization: kgb_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'jlareau', phone_number: 2038228199 }), is_booth_chair: true })
Membership.create({ organization: kgb_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'sguertin', phone_number: 8029893063 }), is_booth_chair: true })

puts '  Math'
Membership.create({ organization: math_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'dmehrle', phone_number: 6144588176 }), is_booth_chair: true })
Membership.create({ organization: math_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'zng', phone_number: 4434735523 }), is_booth_chair: true })
Membership.create({ organization: math_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'skornfel' }), is_booth_chair: true })
Membership.create({ organization: math_org, booth_chair_order: 4, participant: Participant.create({ andrewid: 'skrasner' }), is_booth_chair: true })

puts '  Mayur SASA'
Membership.create({ organization: mayur_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'varunm', phone_number: 4129966033 }), is_booth_chair: true })

puts '  MCS'
Membership.create({ organization: mcs_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'rfrancol' }), is_booth_chair: true })
Membership.create({ organization: mcs_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'meschaef' }), is_booth_chair: true })
Membership.create({ organization: mcs_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'kaitlinh' }), is_booth_chair: true })
Membership.create({ organization: mcs_org, booth_chair_order: 4, participant: Participant.create({ andrewid: 'phkoenig' }), is_booth_chair: true })
Membership.create({ organization: mcs_org, booth_chair_order: 5, participant: Participant.create({ andrewid: 'jiyunkwo' }), is_booth_chair: true })

puts '  SAE'
Membership.create({ organization: sae_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'jgreenbe', phone_number: 2014781454 }), is_booth_chair: true })
Membership.create({ organization: sae_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'daschmid', phone_number: 2674811584 }), is_booth_chair: true })

puts '  SigEp'
Membership.create({ organization: sigep_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'wmisitan', phone_number: 5167216678 }), is_booth_chair: true })
Membership.create({ organization: sigep_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'rshanor', phone_number: 4046951322 }), is_booth_chair: true })
Membership.create({ organization: sigep_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'bsiegel', phone_number: 2074752240 }), is_booth_chair: true })

puts '  SSA'
Membership.create({ organization: ssa_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'nctan', phone_number: 4128011812 }), is_booth_chair: true })
Membership.create({ organization: ssa_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'fchoo', phone_number: 4126920389 }), is_booth_chair: true })
Membership.create({ organization: ssa_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'johnwenl' }), is_booth_chair: true })

puts '  Spirit'
Membership.create({ organization: spirit_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'sestudil', phone_number: 7735925502 }), is_booth_chair: true })
Membership.create({ organization: spirit_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'cchamber' }), is_booth_chair: true })
Membership.create({ organization: spirit_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'jbarnes1' }), is_booth_chair: true })

puts '  SDC'
Membership.create({ organization: sdc_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'fcsejtey', phone_number: 3304753580 }), is_booth_chair: true })
Membership.create({ organization: sdc_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'bferri', phone_number: 7243168810 }), is_booth_chair: true })

puts '  TSA'
Membership.create({ organization: tsa_org, booth_chair_order: 1, participant: Participant.create({ andrewid: 'cmcdermi', phone_number: 4129445825 }), is_booth_chair: true })
Membership.create({ organization: tsa_org, booth_chair_order: 2, participant: Participant.create({ andrewid: 'joyces', phone_number: 3025442311 }), is_booth_chair: true })
Membership.create({ organization: tsa_org, booth_chair_order: 3, participant: Participant.create({ andrewid: 'mtung', phone_number: 6462441185 }), is_booth_chair: true })
Membership.create({ organization: tsa_org, booth_chair_order: 4, participant: Participant.create({ andrewid: 'mwu2', phone_number: 4125514620 }), is_booth_chair: true })

# Charge Types ----------------------------------------------------------------
puts 'Charge Types'
ChargeType.create([
  { name: 'Other', description: 'Other violation as determined by the coordinator, please document extensively and inform the Midway Chair incase any problems arise.', requires_booth_chair_approval: true },
  { name: 'Vehicle on Midway', description: 'Organization had a vehicle on Midway without Committee approval. Amount to be determined by Rules Committee.', requires_booth_chair_approval: true },
  { name: '1st Late Shift', description: 'One member was late for a watch shift. First violation. Add a separate fine for each person.', default_amount: 10 },
  { name: '2nd Late Shift', description: 'One member was late for a watch shift. Second violation. Add a separate fine for each person.', default_amount: 20 },
  { name: '3rd Late Shift', description: 'One member late for a watch shift. Third violation. Add a separate fine for each person.', default_amount: 40 },
  { name: '4th or More Late Shift', description: 'One or more members were late for a watch shift. Forth and subsequent violations. Add a separate fine for each person.' },
  { name: '1st Missed Shift', description: 'One member was more than 10 minutes late for a watch shift or arrived incapable of completing the shift (i.e. drunk). First Violation only. Add a separate fine for each person and halve the fine if they arrive less than 45 minutes late.', default_amount: 50 },
  { name: '2nd Missed Shift', description: 'One member was more than 10 minutes late for a watch shift or arrived incapable of completing the shift (i.e. drunk). Second Violation only. Add a separate fine for each person and halve the fine if they arrive less than 45 minutes late.', default_amount: 100 },
  { name: '3rd Missed Shift', description: 'One member was more than 10 minutes late for a watch shift or arrived incapable of completing the shift (i.e. drunk). Third and subsequent violations. Add a separate fine for each person and halve the fine if they arrive less than 45 minutes late.' },
  { name: 'Uncooperative Shift', description: 'Members working the shift failed or refused to complete tasks as assigned by the coordinator.', default_amount: 25 },
  { name: 'Shift Left', description: 'Members working the shift left before being dismissed by the coordinator. Add a separate fine for each person.', default_amount: 25 },
  { name: 'Teardown Shift Missed', description: 'Organization failed to complete the required six man hours during teardown. Fine should be $50 per hour not completed',
    requires_booth_chair_approval: true, default_amount: 50 },
  { name: 'Blown Breaker', description: 'Breaker reset by Power and Safety. First one is free.', requires_booth_chair_approval: true, default_amount: 25.00 },
  { name: 'Unauthorized Plugin', description: 'Organization pluged their booth into power before given permission by Power and Safely.', requires_booth_chair_approval: true, default_amount: 100 }])

# Task Statuses ---------------------------------------------------------------
puts 'Task Statuses'
uncompleted_task = TaskStatus.create({ name: "Not Completed" })
completed_task = TaskStatus.create({ name: "Completed" })
unable_to_complete_task = TaskStatus.create({ name: "Unable to Complete" })

# FAQs ------------------------------------------------------------------------
puts "FAQs"

Faq.create([
  { question: "What is Booth?",
    answer:  "Booth is one of the biggest showpieces of Spring Carnival. Student organizations build multi-story structures around our annual theme (2014: Best of the Best), hosting interactive games and elaborate decorations. The booths will be placed on Midway, which is located in the Morewood Gardens Parking Lot." },
  { question: "What do I do if something catches on fire?",
    answer: "There are fire extinguishers located at every booth. Take one and follow the instructions listed on the can." },
  { question: "Where does CMU get money for Carnival?",
    answer: "Carnegie Mellon University's Spring Carnival is funded in part by your Student Activities Fee." },
  { question: "Who won booth last year (2013)?",
    answer: "Independent: ASA, Fraternity: Sigma Phi Epsilon, Sorority: Delta Gamma, Blitz: Mayur SASA, Environmental Award: Delta Gamma and Mudge, T-Shirt Award: TSA, Chairman's Choice: Alpha Phi" }])

# Shift Types -----------------------------------------------------------------
puts 'Shift Types'
watch_shift = ShiftType.create({ name: 'Watch Shift' })
sec_shift = ShiftType.create({ name: 'Security Shift' })
coord_shift = ShiftType.create({ name: 'Coordinator Shift' })

# Shifts ---------------------------------------------------------------------
puts 'Shifts'

# Coordinator Shifts
puts '  Coordinator Shifts'
Shift.create([
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-04T20:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-04T20:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-05T00:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T00:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-05T04:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T04:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-05T08:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T08:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-05T12:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T12:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-05T16:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T16:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-05T20:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T20:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-06T00:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T00:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-06T04:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T04:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-06T08:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T08:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-06T12:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T12:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-06T16:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T16:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-06T20:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T20:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-07T00:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T00:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-07T04:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T04:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-07T08:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T08:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-07T12:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T12:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-07T16:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T16:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-07T20:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T20:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-08T00:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T00:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-08T04:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T04:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-08T08:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T08:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-08T12:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T12:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-08T16:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T16:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-08T20:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T20:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-09T00:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T00:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-09T04:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T04:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-09T08:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T08:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-09T12:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T12:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-09T16:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T16:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-09T20:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T20:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-10T00:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T00:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-10T04:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T04:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-10T08:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T08:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-10T12:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T12:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-10T16:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T16:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-10T20:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T20:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-11T00:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T00:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-11T04:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T04:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-11T08:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T08:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-11T12:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T12:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-11T16:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T16:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-11T20:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T20:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-12T00:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T00:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-12T04:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T04:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-12T08:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T08:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-12T12:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T12:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-12T16:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T16:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-12T20:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T20:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-13T00:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T00:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-13T04:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T04:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-13T08:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T08:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 },
  { shift_type: coord_shift, starts_at: DateTime.rfc3339('2014-04-13T12:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T12:00:00+05:00') + 4.hours, organization: scc_org, required_number_of_participants: 1 }
])

# Watch Shifts
puts '  Watch Shifts'
Shift.create([
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-04T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-04T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-04T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-04T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-04T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-04T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-04T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-04T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-04T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-04T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-04T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-04T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-04T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-04T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T01:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T01:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T03:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T03:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T05:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T05:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-13T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-13T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-04T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-04T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-04T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-04T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-04T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-04T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-05T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-05T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-06T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-06T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-07T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-08T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-09T23:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T23:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T07:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T07:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T09:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T09:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-10T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-10T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-11T21:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-11T21:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T11:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T11:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T13:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T13:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T15:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T15:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T17:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T17:00:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: watch_shift, starts_at: DateTime.rfc3339('2014-04-12T19:00:00+05:00'), ends_at: DateTime.rfc3339('2014-04-12T19:00:00+05:00') + 2.hours, required_number_of_participants: 2 }
])

# Security Shifts
puts '  Security Shifts'
Shift.create([
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-07T07:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T07:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-07T09:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T09:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-07T11:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T11:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-07T13:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T13:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-07T15:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-07T15:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-08T07:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T07:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-08T09:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T09:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-08T11:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T11:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-08T13:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T13:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-08T15:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-08T15:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-09T07:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T07:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-09T09:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T09:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-09T11:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T11:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-09T13:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T13:30:00+05:00') + 2.hours, required_number_of_participants: 2 },
  { shift_type: sec_shift, starts_at: DateTime.rfc3339('2014-04-09T15:30:00+05:00'), ends_at: DateTime.rfc3339('2014-04-09T15:30:00+05:00') + 2.hours, required_number_of_participants: 2 }
])

puts 'Tools'
# Tools -----------------------------------------------------------------------
generate_tools

case Rails.env
when 'development'
  puts
  puts 'Extra Dev Goodness:'
  puts

  puts "Users"
  new_user = User.new
  new_user.email = "dcorwin@andrew.cmu.edu"
  new_user.password = "testtest"
  new_user.password_confirmation = "testtest"
  new_user.name = "Dylan Corwin"
  new_user.add_role :admin
  new_user.save!

  new_user = User.new
  new_user.email = "smcquaid@andrew.cmu.edu"
  new_user.password = "testtest"
  new_user.password_confirmation = "testtest"
  new_user.name = "Steve McQuaid"
  new_user.add_role :admin
  new_user.save!

  new_user = User.new
  new_user.email = "shannon1@andrew.cmu.edu"
  new_user.password = "testtest"
  new_user.password_confirmation = "testtest"
  new_user.name = "Shannon Chen"
  new_user.add_role :admin
  new_user.save!

  new_user = User.new
  new_user.email = "juc@andrew.cmu.edu"
  new_user.password = "testtest"
  new_user.password_confirmation = "testtest"
  new_user.name = "Jonathan Chung"
  new_user.add_role :admin
  new_user.save!

  puts "Participants"
  new_participant = Participant.new
  new_participant.andrewid = "shannon1"
  # new_participant.has_signed_waiver = false
  # new_participant.has_signed_hardhat_waiver = true
  new_participant.phone_number = 4124124124
  new_participant.user = User.find_by_name("Shannon Chen")
  new_participant.save!

  new_participant = Participant.new
  new_participant.andrewid = "dcorwin"
  # new_participant.has_signed_waiver = true
  # new_participant.has_signed_hardhat_waiver = true
  new_participant.phone_number = 4121235555
  new_participant.user = User.find_by_name("Dylan Corwin")
  new_participant.save!

  new_participant = Participant.new
  new_participant.andrewid = "juc"
  # new_participant.has_signed_waiver = false
  # new_participant.has_signed_hardhat_waiver = true
  new_participant.phone_number = 4124124142
  new_participant.user = User.find_by_name("Jonathan Chung")
  new_participant.save!

  new_participant = Participant.new
  new_participant.andrewid = "smcquaid"
  # new_participant.has_signed_waiver = true
  # new_participant.has_signed_hardhat_waiver = true
  new_participant.phone_number = 4121235551
  new_participant.user = User.find_by_name("Steve McQuaid")
  new_participant.save!

  ew_participant = Participant.new
  new_participant.andrewid = "lheimann"
  # new_participant.has_signed_waiver = false
  # new_participant.has_signed_hardhat_waiver = false
  new_participant.phone_number = 1234567887
  new_participant.user = User.find_by_name("Test Member")
  new_participant.save!


  puts 'Old Stuff...'
  chase = Participant.create({ andrewid: 'cbrownel', phone_number: 7173435788 })
  merichar = Participant.create({ andrewid: 'meribyte' })
  merichar_in_scc = Membership.create({ participant: merichar, organization: scc_org, is_booth_chair: true, booth_chair_order: 1 })
  chase_in_dtd = Membership.create({ participant: chase, organization: dtd_org, is_booth_chair: true })
  chase_in_scc = Membership.create({ participant: chase, organization: scc_org, title: 'Logistics', is_booth_chair: true, booth_chair_order: 2 })
 tool = Tool.create({ name: 'Hammer', barcode: 7, description: 'it\'s a hammer' })
  Tool.create([
    {name: 'Hardhat', barcode: 111, description: 'Org Hardhat (White)'},
    {name: 'SCC Hardhat', barcode: 112, description: 'SCC Hardhat (Blue)'},
    {name: 'EH&S Hardhat', barcode: 115, description: 'Environmental Health and Safety Hardhat (Bright Yellow/Green)'},
    {name: 'Chair Hardhat', barcode: 113, description: 'Booth Chair Hardhat (Orange)'}])
  Checkout.create({ tool: Tool.find(2), participant: chase, organization: dtd_org, checked_out_at: Time.now - 5.hours })
  Checkout.create({ tool: Tool.find(2), participant: chase, organization: dtd_org, checked_out_at: Time.now - 8.hours, checked_in_at: Time.now - 7.hours })
 shift = Shift.create({ shift_type: ShiftType.find_by_name('Watch Shift'), organization: dtd_org, starts_at: Time.now - 1.hours, ends_at: Time.now + 1.hours, required_number_of_participants: 1 })
  Shift.create({ shift_type: ShiftType.find_by_name('Watch Shift'), organization: dtd_org, starts_at: Time.now - 3.hours, ends_at: Time.now - 1.hour, required_number_of_participants: 1 })
  Shift.create({ shift_type: ShiftType.find_by_name('Watch Shift'), organization: dtd_org, starts_at: Time.now + 1.hours, ends_at: Time.now + 15.hours, required_number_of_participants: 1 })
  ShiftParticipant.create({ shift: shift, participant: chase, clocked_in_at: Time.now - 50.minutes })

  Charge.create({ charge_type: ChargeType.find_by_name('Blown Breaker'), amount: 25, description: 'Delt blew their breaker all over midway', issuing_participant: merichar, receiving_participant: chase, organization: dtd_org, charged_at: Time.now })

  # Tasks ---
  Task.create([{ name: "todo", task_status: uncompleted_task, due_at: Time.now + 1.hour, display_duration: Time.now - 3.hours, description: "Many things" },
    {name: "done0", due_at: Time.now, display_duration: Time.now - 1.hours, completed_by: chase, task_status: completed_task},
    {name: "done1", due_at: Time.now, display_duration: Time.now - 1.hours, completed_by: chase, task_status: completed_task},
    {name: "done2", due_at: Time.now, display_duration: Time.now - 1.hours, completed_by: chase, task_status: completed_task},
    {name: "done3", due_at: Time.now, display_duration: Time.now - 1.hours, completed_by: chase, task_status: completed_task},
    {name: "done4", due_at: Time.now, display_duration: Time.now - 1.hours, completed_by: chase, task_status: completed_task},
    {name: "done5", due_at: Time.now, display_duration: Time.now - 1.hours, completed_by: chase, task_status: completed_task},
    {name: "done6", due_at: Time.now, display_duration: Time.now - 1.hours, completed_by: chase, task_status: completed_task},
    {name: "not done", due_at: Time.now, display_duration: Time.now - 1.hours, completed_by: chase, task_status: unable_to_complete_task},
    {name: "late", due_at: Time.now - 30.minutes, display_duration: Time.now - 1.hours, task_status: uncompleted_task}])
when 'production'
  #blah
end
