select xt.create_table('marked_for_followup', 'junk_search');
select xt.add_column('marked_for_followup', 'cntct_id',           'serial', 'NOT NULL',      'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_crmacct_id',  'integer', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_addr_id',     'integer', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_first_name',     'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_last_name',      'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_honorific',      'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_initials',       'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_active',      'boolean', 'DEFAULT true',  'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_phone',          'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_phone2',         'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_fax',            'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_email',          'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_webaddr',        'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_notes',          'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_title',          'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_number',         'text', 'NOT NULL',      'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_middle',         'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_suffix',         'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_owner_username', 'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_name',           'text', '',              'junk_search'),
       xt.add_column('marked_for_followup', 'obj_uuid',             'uuid', 'DEFAULT xt.uuid_generate_v4()', 'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_created',     'timestamp with time zone', '', 'junk_search'),
       xt.add_column('marked_for_followup', 'cntct_lastupdated', 'timestamp with time zone', '', 'junk_search');

COMMENT ON TABLE junk_search.marked_for_followup IS 'Contains contacts that are possible duplicates, may require further review';

select xt.add_constraint('marked_for_followup', 'marked_for_followup_cntct_number_key', 'UNIQUE (cntct_number)', 'junk_search'),
       xt.add_constraint('marked_for_followup', 'marked_for_followup_obj_uuid_key',         'UNIQUE (obj_uuid)', 'junk_search'),
       xt.add_constraint('marked_for_followup', 'marked_for_followup_pkey',            'PRIMARY KEY (cntct_id)', 'junk_search');

select xt.add_index('marked_for_followup', 'cntct_crmacct_id', 'marked_for_followup_cntct_crmacct_id_idx','btree', 'junk_search'),
       xt.add_index('marked_for_followup', 'cntct_email',      'marked_for_followup_cntct_email_idx',     'btree', 'junk_search'),
       xt.add_index('marked_for_followup', 'cntct_name',       'marked_for_followup_cntct_name_idx',      'btree', 'junk_search');
