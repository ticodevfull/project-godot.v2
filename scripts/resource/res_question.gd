extends Resource
class_name QuizQuestion

enum QuestionType { TEXT, IMAGE, VIDEO, AUDIO }

@export var question_info : String
@export var type : QuestionType
@export var question_image : Texture
@export var question_audio : AudioStream
@export var question_video : VideoStream
@export var options : Array = []
@export var correct : String
