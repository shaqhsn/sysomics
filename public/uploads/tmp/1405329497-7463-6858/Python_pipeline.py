#!/usr/bin/python3.1

import sys,argparse,time,os,errno
#
# global var decs
#
VERSION = '1.1.0';

### This is setting parameters 
program_dir='/c3se/users/seyeho/Glenn/program'
program_dir_server='/c3se/NOBACKUP/groups/c3-sysbio/Softwares/glenn'




#Process command line parameters
version = "%(prog)s " + str(VERSION)
parser = argparse.ArgumentParser(description='Pipeline for analyzing DNA Seq data')
parser.add_argument('-f1','--file1',dest='readfile1', help='The first paired file for pipeline command linet', required=False)
parser.add_argument('-f2','--file2',dest='readfile2', help='The second paired file for pipeline command line', required=False)
parser.add_argument('-o','--output', dest='outputfile',help='The output filename', required=False)
parser.add_argument('-r','--reference',dest='reference_genomes', help='The reference genomes path', required=False)
parser.add_argument('-g','--refgenbanks',dest='reference_genbanks', help='The reference genbank files path', required=False)
parser.add_argument('-l','--length',type=int,dest='lengthSize', help='The insert size', required=False)
parser.add_argument('-t','--threads',type=int,dest='num_threads', help='he maximum number of threads', required=False)
parser.add_argument('--version', action='version', version=version)
args = parser.parse_args()



start_time = time.localtime()
time_string  = time.strftime("%Y/%m/%d %H:%M:%S", start_time)

# """
s="""
****************************************************
NGSPipeline.py Version OptVersion
****************************************************\n
pipeline starts at: %s
read1=%s
read2=%s
path to reference genome=%s
path to reference gene bank =%s
outputdirectory=%s
insertsize=%s
num_threads=%s
****************************************************\n
""" % (time_string,args.readfile1, args.readfile2, args.reference_genomes,args.reference_genbanks,args.outputfile,args.lengthSize,args.num_threads)
sys.stderr.write(s)


def make_absolute_path(name):
	current_dir=os.getcwd()
	return current_dir+'/'+name
def make_relative_path(relative_path,name):
	return relative_path+'/'+name
def make_directory(path):
    '''creates directory in given path''' 
    try:
		os.makedirs(path)
    except OSError as exc: # Python >2.5
        if exc.errno == errno.EEXIST and os.path.isdir(path):
        	pass
        else: raise

#######################################
#Making parent directory          		#
#######################################
working_dir=make_absolute_path(args.outputfile)
make_directory(working_dir)
#######################################
#pre_process Subdirectories          	#
#######################################
preprocess_dir=make_relative_path(working_dir,args.outputfile+'_preprocess')
make_directory(preprocess_dir)
qcRaw_dir=make_relative_path(preprocess_dir,args.outputfile+"_QC_Raw")
make_directory(qcRaw_dir)
trimmed_dir=make_relative_path(preprocess_dir,args.outputfile+"_trimmed")
make_directory(trimmed_dir)





class FunctionRuner(object):
	
    def __init__(self,name,input,command,output):
        self.name=name
        self.input=input
        self.command=command
        self.output=output
	def getname(self):
		return self.name
    def getInput(self):
		return self.input
    def getCommand(self):
		return self.command
    def getOutput(self):
		return self.output
    def start(self):
    	start_time = time.localtime()
    	time_string = time.strftime("%Y/%m/%d %H:%M:%S", start_time)
    	message= "%s started at time %s"  %(self.name,time_string)
    	sys.stderr.write(message)
    def __str__(self):
        return "name is %s input parameters are %s the command to be run is  %s output directory is %s" % (self.name,self.input,self.command, self.output)
    def execute(self):
        os.system(self.command)
    def stop(self):
    	end_time = time.localtime()
    	time_string = time.strftime("%Y/%m/%d %H:%M:%S", end_time)
    	message= "%s finished at time %s"  %(self.name,time_string)
    	sys.stderr.write(message)


##class StructurePath()
fastQC_Runner=FunctionRuner("fastQC",args.readfile1,"fastqc args.readfile1 -o qcRaw_dir",qcRaw_dir);
fastQC_Runner.start()
fastQC_Runner.execute()
fastQC_Runner.stop()

"""
for reading big files 
f=open('x.txt','r') open file for reading
to avoid memory consumption
for line in file.readlines()

picle 

serialization

"""
