import boto3
#Explict client config
polly = boto3.client('polly')

result = polly.synthesize_speech(Text='Hello world!',OutputFormat='mp3',VoiceId='Aditi')

#save audio from response
audio = result['AudioStream'].read()
with open("helloworld.mp3","wb") as file:
  file.write(audio)  
