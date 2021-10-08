task md5 {
  File inputFile

  command {
    /bin/my_md5sum ${inputFile}
  }

 output {
    File value = "md5sum.txt"
 }

 runtime {
   docker: "quay.io/briandoconnor/dockstore-tool-md5sum:1.0.4"
   cpu: 1
   memory: "512 MB"
   disks: "local-disk 10 HDD"
 }
 
 meta {
   author : "Edited Descriptor Author 1, Edited Descriptor Author 2"
   email : "edited.descriptor.author.1@gmail.com, edited.descriptor.author.2@gmail.com"
 }
}

workflow ga4ghMd5 {
 File inputFile
 call md5 { input: inputFile=inputFile }
}
