import pika
import time

connection = pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
channel = connection.channel()
channel.queue_declare(queue='hello',durable=True)

def callback(ch, method, properties, body):
	print "[x] Received %r" %(body,)
	time.sleep(body.count('.'))
	print "[x] Done"

channel.basic_qos(prefetch_count=1)
channel.basic_consume(callback,queue='hello',no_ack=True)

print ' [*] Waiting for messages. To exit press CTRL+C'
channel.start_consuming()
