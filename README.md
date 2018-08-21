RaspPiImgShrinker

> /!\ The source image file will be destroyed during the shrinking process. Make a backup to keep it if necessary.

First build the image

Run a container with following parameters
```
docker run --name rasp-img-shrinker -it -v D:\Raspberry:/shared --privileged rasp-img-shrinker
```
It will mount a volume between your windows host folder containing images to shrink and the ubuntu container.

Run command like the following to shrink raspberry backups:
```
./raspberrypi_image_resize.sh /shared/img-file-to-shrink.img
```

*The script contained in "raspberrypi_image_resize.sh" has been created by Matteo Mattei.*
