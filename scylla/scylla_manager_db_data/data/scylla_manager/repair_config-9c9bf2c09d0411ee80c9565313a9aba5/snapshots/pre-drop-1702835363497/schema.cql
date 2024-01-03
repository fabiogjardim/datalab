CREATE TABLE scylla_manager.repair_config (
    cluster_id uuid,
    type text,
    external_id text,
    enabled boolean,
    parallel_shard_percent float,
    retry_backoff_seconds int,
    retry_limit int,
    segment_size_limit int,
    PRIMARY KEY (cluster_id, type, external_id)
) WITH CLUSTERING ORDER BY (type ASC, external_id ASC)
    AND bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL','rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'SizeTieredCompactionStrategy'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1
    AND dclocal_read_repair_chance = 0
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0
    AND speculative_retry = '99.0PERCENTILE'
    AND paxos_grace_seconds = 864000
    AND tombstone_gc = {'mode':'timeout','propagation_delay_in_seconds':'3600'};
