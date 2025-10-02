; ModuleID = './id3tag.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/id3tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TAG\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@genre_last = dso_local global i32 147, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Blues\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Classic Rock\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Dance\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Disco\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Funk\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Grunge\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Hip-Hop\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Jazz\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Metal\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"New Age\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Oldies\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Pop\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"R&B\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Rap\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Reggae\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Rock\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Techno\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Industrial\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Alternative\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Ska\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Death Metal\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Pranks\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Soundtrack\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Euro-Techno\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Ambient\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Trip-Hop\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Vocal\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Jazz+Funk\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Fusion\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Trance\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Classical\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Instrumental\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Acid\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"House\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"Sound Clip\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Gospel\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"AlternRock\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"Bass\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Soul\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"Punk\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"Meditative\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"Instrumental Pop\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"Instrumental Rock\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"Ethnic\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Gothic\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"Darkwave\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Techno-Industrial\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"Electronic\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"Pop-Folk\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"Eurodance\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"Dream\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Southern Rock\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"Comedy\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"Cult\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Gangsta\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"Top 40\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"Christian Rap\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"Pop/Funk\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Jungle\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"Native American\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"Cabaret\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"New Wave\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"Psychadelic\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"Rave\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"Showtunes\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"Trailer\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"Lo-Fi\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"Tribal\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"Acid Punk\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"Acid Jazz\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"Polka\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"Retro\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"Musical\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"Rock & Roll\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"Hard Rock\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"Folk\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"Folk/Rock\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"National Folk\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"Swing\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"Fast-Fusion\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"Bebob\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"Latin\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"Revival\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"Celtic\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"Bluegrass\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"Avantgarde\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"Gothic Rock\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"Progressive Rock\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"Psychedelic Rock\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"Symphonic Rock\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"Slow Rock\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"Big Band\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"Chorus\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"Easy Listening\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"Acoustic\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"Humour\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"Speech\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"Chanson\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"Opera\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"Chamber Music\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"Sonata\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"Symphony\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"Booty Bass\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"Primus\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"Porn Groove\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"Satire\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"Slow Jam\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"Club\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"Tango\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"Samba\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"Folklore\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"Ballad\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"Power Ballad\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"Rhythmic Soul\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"Freestyle\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"Duet\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"Punk Rock\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"Drum Solo\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"A capella\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"Euro-House\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"Dance Hall\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"Goa\00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"Drum & Bass\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"Club House\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"Hardcore\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"Terror\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"Indie\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"BritPop\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"NegerPunk\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"Polsk Punk\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"Beat\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"Christian Gangsta\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"Heavy Metal\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"Black Metal\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"Crossover\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"Contemporary C\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"Christian Rock\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"Merengue\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"Salsa\00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"Thrash Metal\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"Anime\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"JPop\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"SynthPop\00", align 1
@genre_list = dso_local global [148 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i32 0, i32 0)], align 16
@id3tag = dso_local global %struct.ID3TAGDATA zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @id3_inittag(%struct.ID3TAGDATA* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 2, i64 0
  store i8 0, i8* %2, align 1
  %3 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 3, i64 0
  store i8 0, i8* %3, align 1
  %4 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 4, i64 0
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 5, i64 0
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 6, i64 0
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 8, i64 0
  store i8 -1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 9
  store i8 0, i8* %8, align 2
  %9 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 1
  store i32 0, i32* %9, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @id3_buildtag(%struct.ID3TAGDATA* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 7, i64 0
  %3 = bitcast i8* %2 to i32*
  store i32 4669780, i32* %3, align 1
  %4 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 2, i64 0
  call void @id3_pad(i8* noundef nonnull %4, i32 noundef 30)
  %5 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 7, i64 0
  %6 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 2, i64 0
  %7 = call i8* @strncat(i8* noundef nonnull %5, i8* noundef nonnull %6, i64 noundef 30) #6
  %8 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 3, i64 0
  call void @id3_pad(i8* noundef nonnull %8, i32 noundef 30)
  %9 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 7, i64 0
  %10 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 3, i64 0
  %11 = call i8* @strncat(i8* noundef nonnull %9, i8* noundef nonnull %10, i64 noundef 30) #6
  %12 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 4, i64 0
  call void @id3_pad(i8* noundef nonnull %12, i32 noundef 30)
  %13 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 7, i64 0
  %14 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 4, i64 0
  %15 = call i8* @strncat(i8* noundef nonnull %13, i8* noundef nonnull %14, i64 noundef 30) #6
  %16 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 5, i64 0
  call void @id3_pad(i8* noundef nonnull %16, i32 noundef 4)
  %17 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 7, i64 0
  %18 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 5, i64 0
  %19 = call i8* @strncat(i8* noundef nonnull %17, i8* noundef nonnull %18, i64 noundef 4) #6
  %20 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 6, i64 0
  call void @id3_pad(i8* noundef nonnull %20, i32 noundef 30)
  %21 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 7, i64 0
  %22 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 6, i64 0
  %23 = call i8* @strncat(i8* noundef nonnull %21, i8* noundef nonnull %22, i64 noundef 30) #6
  %24 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 8, i64 0
  call void @id3_pad(i8* noundef nonnull %24, i32 noundef 1)
  %25 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 7, i64 0
  %26 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 8, i64 0
  %27 = call i8* @strncat(i8* noundef nonnull %25, i8* noundef nonnull %26, i64 noundef 1) #6
  %28 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 9
  %29 = load i8, i8* %28, align 2
  %.not = icmp eq i8 %29, 0
  br i1 %.not, label %35, label %30

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 7, i64 125
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 9
  %33 = load i8, i8* %32, align 2
  %34 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 7, i64 126
  store i8 %33, i8* %34, align 1
  br label %35

35:                                               ; preds = %30, %1
  %36 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i64 0, i32 1
  store i32 1, i32* %36, align 4
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define internal void @id3_pad(i8* noundef %0, i32 noundef %1) #2 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #7
  %4 = trunc i64 %3 to i32
  br label %5

5:                                                ; preds = %7, %2
  %.0 = phi i32 [ %4, %2 ], [ %10, %7 ]
  %6 = icmp slt i32 %.0, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = sext i32 %.0 to i64
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  store i8 32, i8* %9, align 1
  %10 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !4

11:                                               ; preds = %5
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  store i8 0, i8* %13, align 1
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @id3_writetag(i8* noundef %0, %struct.ID3TAGDATA* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %1, i64 0, i32 1
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %2
  br label %14

6:                                                ; preds = %2
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #6
  %.not1 = icmp eq %struct._IO_FILE* %7, null
  br i1 %.not1, label %8, label %9

8:                                                ; preds = %6
  br label %14

9:                                                ; preds = %6
  %10 = call i32 @fseek(%struct._IO_FILE* noundef nonnull %7, i64 noundef 0, i32 noundef 2) #6
  %11 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %1, i64 0, i32 7, i64 0
  %12 = call i64 @fwrite(i8* noundef nonnull %11, i64 noundef 1, i64 noundef 128, %struct._IO_FILE* noundef nonnull %7) #6
  %13 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %7) #6
  br label %14

14:                                               ; preds = %9, %8, %5
  %.0 = phi i32 [ 0, %9 ], [ -1, %8 ], [ -1, %5 ]
  ret i32 %.0
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
