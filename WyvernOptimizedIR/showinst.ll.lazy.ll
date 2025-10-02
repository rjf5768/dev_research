; ModuleID = './showinst.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/showinst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [68 x i8] c"XOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOX\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"OXOXOXOXOXOX\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"O                                                                  \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"           O\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"X                           GNU GO (Previously Hugo)               \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"           X\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"O                           the game of Go (Wei-Chi)               \00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"X                                                                  \00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"O                            version 1.1    3-1-89                 \00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"X              Copyright (C) 1989 Free Software Foundation, Inc.   \00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"O                              Author: Man L. Li                   \00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"X         GNU GO comes with ABSOLUTELY NO WARRANTY; see COPYING for\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"O         detail.   This is free software, and you are welcome to  \00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"X         redistribute it; see COPYING for copying conditions.     \00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"X              Please report all bugs, modifications, suggestions  \00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"O                         to manli@cs.uh.edu  (Internet)           \00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"OXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXO\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"XOXOXOXOXOXO\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0APress return to continue\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"\0A\0ATo play this game first select number of handicap pieces (0 to\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c" 17) for the\0Ablack side.  Next choose your color (black or white).\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"  To place your piece,\0Aenter your move as coordinate on the board\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c" in column and row.  The column\0Ais from 'A' to 'T'(excluding 'I').\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"  The row is from 1 to 19.\0A\0ATo pass your move enter 'pass' for\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c" your turn.  After both you and the computer\0Apassed the game will\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c" end.  To save the board and exit enter 'save'.  The game\0Awill\00", align 1
@.str.26 = private unnamed_addr constant [68 x i8] c" continue the next time you start the program.  To stop the game in\00", align 1
@.str.27 = private unnamed_addr constant [61 x i8] c" the\0Amiddle of play enter 'stop' for your move.  You will be\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c" asked whether you want\0Ato count the result of the game.  If you\00", align 1
@.str.29 = private unnamed_addr constant [66 x i8] c" answer 'y' then you need to remove the\0Aremaining dead pieces and\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c" fill up neutral turf on the board as instructed.\0AFinally, the\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c" computer will count all pieces for both side and show the result.\0A\0A\00", align 1
@str = private unnamed_addr constant [13 x i8] c"OXOXOXOXOXOX\00", align 1
@str.1 = private unnamed_addr constant [13 x i8] c"           O\00", align 1
@str.2 = private unnamed_addr constant [13 x i8] c"           X\00", align 1
@str.3 = private unnamed_addr constant [13 x i8] c"           O\00", align 1
@str.4 = private unnamed_addr constant [13 x i8] c"           X\00", align 1
@str.5 = private unnamed_addr constant [13 x i8] c"           O\00", align 1
@str.6 = private unnamed_addr constant [13 x i8] c"           X\00", align 1
@str.7 = private unnamed_addr constant [13 x i8] c"           O\00", align 1
@str.8 = private unnamed_addr constant [13 x i8] c"           X\00", align 1
@str.9 = private unnamed_addr constant [13 x i8] c"           O\00", align 1
@str.10 = private unnamed_addr constant [13 x i8] c"           X\00", align 1
@str.11 = private unnamed_addr constant [13 x i8] c"           O\00", align 1
@str.12 = private unnamed_addr constant [13 x i8] c"           X\00", align 1
@str.13 = private unnamed_addr constant [13 x i8] c"           O\00", align 1
@str.14 = private unnamed_addr constant [13 x i8] c"           X\00", align 1
@str.15 = private unnamed_addr constant [13 x i8] c"XOXOXOXOXOXO\00", align 1
@str.16 = private unnamed_addr constant [68 x i8] c" computer will count all pieces for both side and show the result.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @showinst() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0)) #3
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0)) #3
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.1, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0)) #3
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.2, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0)) #3
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.3, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0)) #3
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.4, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0)) #3
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.5, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0)) #3
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.6, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0)) #3
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.7, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0)) #3
  %puts8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.8, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0)) #3
  %puts9 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.9, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0)) #3
  %puts10 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.10, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0)) #3
  %puts11 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.11, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i64 0, i64 0)) #3
  %puts12 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.12, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0)) #3
  %puts13 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.13, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0)) #3
  %puts14 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.14, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i64 0, i64 0)) #3
  %puts15 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.15, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0)) #3
  %18 = call i32 @getchar() #3
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i64 0, i64 0)) #3
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0)) #3
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21, i64 0, i64 0)) #3
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @.str.22, i64 0, i64 0)) #3
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0)) #3
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0)) #3
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i64 0, i64 0)) #3
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.26, i64 0, i64 0)) #3
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([61 x i8], [61 x i8]* @.str.27, i64 0, i64 0)) #3
  %28 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i64 0, i64 0)) #3
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([66 x i8], [66 x i8]* @.str.29, i64 0, i64 0)) #3
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.30, i64 0, i64 0)) #3
  %puts16 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @getchar() #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
