#include <QGLContext>

#if QT_VERSION <= 0x040803 // if less or equal to 4.8.3
void* select_3_2_mac_visual(GDHandle handle)
{
    static const int Max = 40;
    NSOpenGLPixelFormatAttribute attribs[Max];
    int cnt = 0;
   
    attribs[cnt++] = NSOpenGLPFAOpenGLProfile;
    attribs[cnt++] = NSOpenGLProfileVersion3_2Core;
   
    attribs[cnt++] = NSOpenGLPFADoubleBuffer;
   
    attribs[cnt++] = NSOpenGLPFADepthSize;
    attribs[cnt++] = (NSOpenGLPixelFormatAttribute)32;
   
    attribs[cnt] = 0;
    Q_ASSERT(cnt < Max);
   
 
    return [[NSOpenGLPixelFormat alloc] initWithAttributes:attribs];
}
#endif
