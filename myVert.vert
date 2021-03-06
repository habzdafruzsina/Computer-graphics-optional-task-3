#version 140

// VBO-b?l ?rkez? v?ltoz?k
in vec3 vs_in_pos;
in vec2 vs_in_tex0;

// a pipeline-ban tov?bb adand? ?rt?kek
out vec3 vs_out_pos;
out vec2 vs_out_tex0;

// shader k?ls? param?terei
uniform mat4 MVP;

uniform mat4 world;

void main()
{
	gl_Position = MVP * vec4( vs_in_pos, 1 );
	vs_out_pos  = (world * vec4( vs_in_pos, 1 )).xyz;
	vs_out_tex0 = vs_in_tex0;
}
