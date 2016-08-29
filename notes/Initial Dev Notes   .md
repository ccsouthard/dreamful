
#Initial Dev Notes   

Regarding syncing light and sound, what would be the frequency range? dreamachine.co allows between 1 and 25 Hz but most people probably wouldn't be able to hear a 25 Hz tone. So I'd imagine you'd want to scale it?

Worst case you would have to store a short <1 second snippet of each frequency and play it on repeat. Ideally there might be a Web API that will generate the tones for you, but that is not guaranteed to work on all, if not any, mobile devices.


I've attached the code, feel free to use all or none of it. Since it's all static html/css/js I'm using roots to compile jade and coffee script.

Currently it is set up with templates that it will switch between when you click on a link. e.g. a link with href="#frequency" will switch to the frequency template and change the body class to frequency.

As for the difficulty, you might not entirely understand how the templates switch, but you should be able to add/edit them and link between them without difficulty.
