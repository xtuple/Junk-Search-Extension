select xt.create_table('temp_junk', 'junk_search');

select xt.add_column('temp_junk', 'cntct_crmacct_id',   'serial', 'NOT NULL', 'junk_search'),
       xt.add_column('temp_junk', 'cntct_owner_username', 'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_email',          'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_id',          'integer', 'NOT NULL', 'junk_search'),
       xt.add_column('temp_junk', 'cntct_addr_id',     'integer', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_first_name',     'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_last_name',      'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_honorific',      'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_initials',       'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_active',      'boolean', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_phone',          'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_phone2',         'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_fax',            'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_webaddr',        'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_notes',          'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_title',          'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_number',         'text', 'NOT NULL', 'junk_search'),
       xt.add_column('temp_junk', 'cntct_middle',         'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_suffix',         'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_name',           'text', '',         'junk_search'),
       xt.add_column('temp_junk', 'obj_uuid',             'uuid', '',         'junk_search'),
       xt.add_column('temp_junk', 'cntct_created',     'timestamp with time zone', '', 'junk_search'),
       xt.add_column('temp_junk', 'cntct_lastupdated', 'timestamp with time zone', '', 'junk_search');

COMMENT ON TABLE junk_search.temp_junk IS 'For temporary storage before deleting';
