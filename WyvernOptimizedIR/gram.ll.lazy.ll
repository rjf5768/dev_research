; ModuleID = './gram.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/gram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nitems = dso_local global i32 0, align 4
@nrules = dso_local global i32 0, align 4
@nsyms = dso_local global i32 0, align 4
@ntokens = dso_local global i32 0, align 4
@nvars = dso_local global i32 0, align 4
@ritem = dso_local global i16* null, align 8
@rlhs = dso_local global i16* null, align 8
@rrhs = dso_local global i16* null, align 8
@rprec = dso_local global i16* null, align 8
@sprec = dso_local global i16* null, align 8
@rassoc = dso_local global i16* null, align 8
@sassoc = dso_local global i16* null, align 8
@token_translations = dso_local global i16* null, align 8
@rline = dso_local global i16* null, align 8
@start_symbol = dso_local global i32 0, align 4
@translations = dso_local global i32 0, align 4
@max_user_token_number = dso_local global i32 0, align 4
@semantic_parser = dso_local global i32 0, align 4
@pure_parser = dso_local global i32 0, align 4
@error_token_number = dso_local global i32 0, align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
