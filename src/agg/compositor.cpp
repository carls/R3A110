//exported functions
#include "agg_compo.h"

namespace agg
{
	extern "C" void* Create_Compositor(REBGOB* rootGob, REBGOB* gob)
	{
	   return (void *)new compositor(rootGob, gob);
	}

	extern "C" void Destroy_Compositor(void* context)
	{
	   delete (compositor*)context;
	}

	extern "C" REBINT Gob_To_Image(REBSER *image, REBGOB *gob)
	{
//		compositor* cp = new compositor (IMG_DATA(image), IMG_WIDE(image), IMG_HIGH(image));
//		REBINT result = cp->cp_compose_gob(gob, gob);
//		cp->cp_set_win_buffer(0, 0, 0); //set the buffer to 0 so the image is not deleted on next line
//		delete cp;
		return 0; //result;
	}

	extern "C" REBINT Compose_Gob(void* context, REBGOB* winGob,REBGOB* gob)
	{
		return ((compositor*)context)->cp_compose_gob(winGob, gob);
	}

	extern "C" REBYTE* Get_Window_Buffer(void* context)
	{
		return ((compositor*)context)->cp_get_win_buffer();
	}

	extern "C" REBOOL Resize_Window_Buffer(void* context, REBGOB* winGob)
	{
		return ((compositor*)context)->cp_resize(winGob);
	}

#ifdef moved_to_gob_internals
	extern "C" void Map_Gob(void* context, REBGOB **gob, REBPAR *xy, REBOOL inner)
	{
		REBGOB* result;
		if (inner){
			result = ((compositor*)context)->cp_upper_to_lower_coord(*gob, xy);
		} else {
			result = ((compositor*)context)->cp_lower_to_upper_coord(*gob, xy);
		}
		if (result) *gob = result;
	}
#endif
}

