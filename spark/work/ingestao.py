##PROGRAMA RAW > PROCESS
from pyspark.sql import SparkSession
import uuid
spark = SparkSession.builder.appName("aula").enableHiveSupport().getOrCreate()
uid = uuid.uuid4()
raw_city = spark.read.json('/datalake/raw/city')
path = '/datalake/process/city/' + str(uid)
raw_city.write.parquet(path,mode='append')