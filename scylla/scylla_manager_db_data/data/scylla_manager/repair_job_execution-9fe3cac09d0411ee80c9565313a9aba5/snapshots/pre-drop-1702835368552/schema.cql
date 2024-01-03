CREATE TABLE scylla_manager.repair_job_execution (
    cluster_id uuid,
    task_id uuid,
    run_id uuid,
    keyspace_name text,
    table_name text,
    host text,
    job_id text,
    end timestamp,
    start timestamp,
    PRIMARY KEY ((cluster_id, task_id, run_id), keyspace_name, table_name, host, job_id)
) WITH CLUSTERING ORDER BY (keyspace_name ASC, table_name ASC, host ASC, job_id ASC)
    AND bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL','rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'SizeTieredCompactionStrategy'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1
    AND dclocal_read_repair_chance = 0
    AND default_time_to_live = 15552000
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0
    AND speculative_retry = '99.0PERCENTILE'
    AND paxos_grace_seconds = 864000
    AND tombstone_gc = {'mode':'timeout','propagation_delay_in_seconds':'3600'};
