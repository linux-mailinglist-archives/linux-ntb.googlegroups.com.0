Return-Path: <linux-ntb+bncBDJNH7E42IEBB4X35D3QKGQENDNRXQA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id A08A020D51F
	for <lists+linux-ntb@lfdr.de>; Mon, 29 Jun 2020 21:16:04 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id u126sf12913684pgc.23
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Jun 2020 12:16:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593458163; cv=pass;
        d=google.com; s=arc-20160816;
        b=TZCJu4/SZWeEzqg6yrUU6BJWs13j3el6zKCzLfoNZmB2J6Ct/SACS978DvXyaqVyuv
         cd4DsefJvunasqRBCkYLBWtZ3qQEQBS+8+8IYDktDPx4uBmtNzgX+Fw9aZnSIL4UrpJt
         tVI4hL6vIRB4QrNeFGxEajQRbIEJqyzR7t0ONOVBiKN41i9a7unjumPHSwKh4LzZHQ1R
         gxxx9MpVpPF3NHcjWRB0xwZXOgoUXN7IFZ8279sHWvnutcO+JTxWbjMqFDTNXxqtkHn8
         ug9piLbZwfCEkhG7GZza5DaPV+1czOTVPpJU/IHR+2nLIFgUvIYql0ogzlkr62Ga3Xbx
         GedA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=N/ZM8Lp/v4ZAPSgjykuPB8Jl+5ppuv/ZKJIVoyM7EGY=;
        b=wxyKkbetSRveSwwQtR/gNREPwkWlfWMt1vKkjzDXiIDDdjcEJ4r3V8bNs9FTHMWOCm
         fJtG9if5SJrIRgbBwejSBSXXFVsFT80s7buMyTHmmIcFiHuv2EO3gAkSdW7qg77MKbnY
         KqgULt+4UJ0HczyegxY71AQzn5vvxkRUFINQPTxUZMDI4EsOqiJadwrzg8esLfQKl/vY
         jZq+MThBYGMozmj/qyyfSnT8EmBc/NaOPAAeoyvvU8kIhI5nWUCnVDnQQEP4iVz1fDjB
         53szYMbdeN//XLKTdb6OoDo3uHFbn9ZIPkgdlKDVBo/9tbN63jm+Nlws7Oeh7k9PfJy5
         a+IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E57soH+f;
       spf=pass (google.com: domain of markalexandermilley321@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=markalexandermilley321@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N/ZM8Lp/v4ZAPSgjykuPB8Jl+5ppuv/ZKJIVoyM7EGY=;
        b=mDMV68f7IrVWJfOAfuagOXA+1E7ge46GsRZGf3V84tlSJhCcieHb/nEEHHnILV3/lT
         PkdxYp7UWIzpCcxZcjtPZEdScEgMmLydYoLpUHWgks8NllaLUF7Zo/Rl2frWgjQMSFIt
         +6iawQ9TWAIbszJtTzwfaetmL4fY6EnhXknxVrmRzNpvrjkpAQMo39dI2vdbdGM9r4zL
         9jGaTnmod8HFstd4HIrbJFupCB9EWr5vCrWgsNtN+SzHl4hdY8cpbcBb6ml5u7co2gIg
         0r7AAB4kLmtFzwaeaLujPTFAryRG+90by9h4MI1SiDMDunB2/YmOr0HFuTJBAJx7op5B
         A2/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N/ZM8Lp/v4ZAPSgjykuPB8Jl+5ppuv/ZKJIVoyM7EGY=;
        b=slpFmcLAz+E7B4dniulcasbJClgZGSEpiAzjNod9RhVYvWENU1ZVyK1CfEiILFoVUt
         DOPGMgfaY3vUw5beTJukO0qmjdquVaGBCwtZmcb8hNsKQd/4MU1vayzk3QMS9pbPhXys
         VuDB36POv+fXaY+Z9UPu7OJINLSiNS7pjgnBk9D4O2CVQ8bDe4RqxEdWbfnDR9p1yhlA
         de1UOZ2DId7Bp3vYM2IdhuJeuoJTiHmZtE9eCQVahsXrlKaN/Hv4rTg0R+UXGuABire4
         5IVK0nuE/S5h0+imtJtIy+1N4TeV8j6SxKGS7KMhjCL04SMLkaRnrKe+RPJIxnWmLL89
         tAFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N/ZM8Lp/v4ZAPSgjykuPB8Jl+5ppuv/ZKJIVoyM7EGY=;
        b=AGpTBld6yHgqm/s65xrJp7pSjm4DM8k/c0L5mQMcg3JXHPwx7QjEHF7HXZ48z36J9D
         ggCf5GdQyvOlnBN76LTiTaqY1Xn2gkgFlr1TDSr7XRTaZrW6llJ/mklpvL0GgOYH450+
         7sWxg3knrckjO8Dw6aP1gqYU3reswLm3wesngTLj857Dtf9JJ1cOOyIvgb024sCFKK1B
         LJLaO1O5mwU+NNmm4RJeyAfnvF3yhGE5dbhoAzxOjkqUTWefFf70+n69FMlKa7reAtpU
         ZtUTjXT6kCbvStJLL9zfbQRChTfueOkq2dNBrAN2zvKn333+kdWumCOAJdWMzlMXyFsC
         tX6w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5325LoOWiiSRqun8OK2CQvcHz8DooZ5d7vVy3/4xE1eVQNo0Dd4f
	HxbyX8J04wyLKsXJxOYJKpI=
X-Google-Smtp-Source: ABdhPJxMfn3YOz6Nit7+r6WueW1yeCY4DBX1nKJYWZp0gygvgZn5eAaQB5C81mDTbtOU+Tbqbcut0w==
X-Received: by 2002:a17:90b:4c0f:: with SMTP id na15mr18607393pjb.112.1593458162944;
        Mon, 29 Jun 2020 12:16:02 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:9f8f:: with SMTP id g15ls4569345plq.6.gmail; Mon, 29
 Jun 2020 12:16:02 -0700 (PDT)
X-Received: by 2002:a17:90a:f198:: with SMTP id bv24mr19234512pjb.206.1593458162600;
        Mon, 29 Jun 2020 12:16:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593458162; cv=none;
        d=google.com; s=arc-20160816;
        b=ybMPb2w9WGTPYSFZQ5SA2GTW3VT7I1D95IXysANBx9FclvLem1Ufpb0o7b9Ypr+Qbx
         HHjJvdOSVA0JPOWHcuM9Da2JTBl9w4Uvfm0e/oeVZA719giJ0qwhNZQ8DPWtrkiWdYUb
         ciF+eHNWz7gJkSC0Sgx5Ta+tfg9NWNLwvtDXRHcbeq6zkmVHdJkiTVJfNGnf0WI3CSLo
         1uKOTY9YyYqXoHKpcTV9CqcDXx8rRbXYEkDMXGQBTH3RQoS8JDHIxatgCKFQpJnuQLdB
         HMq4Haz/z56F2ZerQvDoiUp0SBgDbcRfxxghFYQsencHHGb2Qs7q3FlR5mDE5O2NN+7V
         /qlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=XdfoRVGuOCD2JOxmLnJxyvoO2f5zjf1xh4i//8cGLHs=;
        b=VCvSKYK3Y4dIELQ80PHZJd0z1dSjrXvjbeBqVGdx+eMQQKIQgzHfO0PPQo41iOF1Pz
         JCdCnFoEZ2HT5MHqwaOo/ggfIfmWL49ZDOxFmB6BukaJqnQphbAO5/aDmAxrjbJT6Arq
         UmQHCoy4mFRDGZtbcTLepvabvzdX898ekhWUFsL7KdqmKCzR3ma3Ejaom1ubObd4GLkW
         V78JU74xUMtrSCCOKprVDw2Znq1mdutlKnndkYHLTFGoGfpQHx07VdM7OXpGx0gCxo4f
         wGsXliF5/3UtF5FeyILnTDoPUDgOyF571OMPE+QrRhNIXhR8wax7JI9lColK+Kr1OK5w
         oU2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E57soH+f;
       spf=pass (google.com: domain of markalexandermilley321@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=markalexandermilley321@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id y19si28624pga.4.2020.06.29.12.16.02
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 12:16:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of markalexandermilley321@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id f23so18405748iof.6
        for <linux-ntb@googlegroups.com>; Mon, 29 Jun 2020 12:16:02 -0700 (PDT)
X-Received: by 2002:a6b:db17:: with SMTP id t23mr18236117ioc.4.1593458159284;
 Mon, 29 Jun 2020 12:15:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:1588:0:0:0:0 with HTTP; Mon, 29 Jun 2020 12:15:58
 -0700 (PDT)
Reply-To: mrs.victoria.alexander2@gmail.com
From: "mrs.victoria alexander" <markalexandermilley321@gmail.com>
Date: Mon, 29 Jun 2020 12:15:58 -0700
Message-ID: <CAP7XNCwEGQ+-Q==u4yk4yvJdk1X+gsfSU6pUV_hROjmF=p-DHw@mail.gmail.com>
Subject: Hello,
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Markalexandermilley321@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=E57soH+f;       spf=pass
 (google.com: domain of markalexandermilley321@gmail.com designates
 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=markalexandermilley321@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

Dear friend,


I have a business container transaction what that some of( $13million dollars)

 I would like to discuss with you. If you are interested, please
contact my email

address (mrs.victoria.alexander2@gmail.com)

My WhatsApp number but only message (+19293737780)

Please do not reply if you are not ready
Thanks

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAP7XNCwEGQ%2B-Q%3D%3Du4yk4yvJdk1X%2BgsfSU6pUV_hROjmF%3Dp-DHw%40mail.gmail.com.
