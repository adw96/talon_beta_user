# from talon import Context, Module, actions, speech_system
# from talon_init import TALON_HOME
# import os
# import struct
# import wave
#
# ALWAYS_RECORD = True
# OUTPUT_DIR = TALON_HOME/'recordings'
#
# os.makedirs(OUTPUT_DIR, exist_ok=True)
#
# current_phrase = None
# def on_phrase(d):
#     global current_phrase
#     current_phrase = d
#     if ALWAYS_RECORD:
#         actions.self.record_audio(' '.join(d['phrase']))
#
# speech_system.register('pre:phrase', on_phrase)
#
# mod = Module()
# @mod.action
# def record_audio(words: str):
#     """Record the phrase audio to a file"""
#     words = words.strip()
#     if not current_phrase or not current_phrase.get('samples') or not words:
#         return
#     samples = current_phrase['samples']
#     scaled = (min(32767, max(-32767, int(s * 32767))) for s in samples)
#     binary = struct.pack('<{}h'.format(len(samples)), *scaled)
#     path = OUTPUT_DIR/f'{words}.wav'
#     n = 0
#     while path.exists():
#         n += 1
#         path = OUTPUT_DIR/f'{words}-{n}.wav'
#     with wave.open(str(path), 'wb') as w:
#         w.setnchannels(1)
#         w.setsampwidth(2)
#         w.setframerate(16000)
#         w.writeframes(binary)
#     print(f'saved: {path}')
