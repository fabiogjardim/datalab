CREATE TABLE scylla_manager.repair_run_progress (
    cluster_id uuid,
    unit_id uuid,
    run_id uuid,
    host text,
    shard int,
    last_command_id int,
    last_start_time timestamp,
    last_start_token bigint,
    segment_count int,
    segment_error int,
    segment_error_start_tokens list<bigint>,
    segment_success int,
    PRIMARY KEY ((cluster_id, unit_id, run_id), host, shard)
) WITH CLUSTERING ORDER BY (host ASC, shard ASC)
    AND bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL','rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'SizeTieredCompactionStrategy'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1
    AND dclocal_read_repair_chance = 0
    AND default_time_to_live = 360000
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0
    AND speculative_retry = '99.0PERCENTILE'
    AND paxos_grace_seconds = 864000
    AND tombstone_gc = {'mode':'timeout','propagation_delay_in_seconds':'3600'};
