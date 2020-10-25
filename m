Return-Path: <linux-ntb+bncBCS4BDN7YUCRB2P62X6AKGQERRW36EI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 8221A2981E6
	for <lists+linux-ntb@lfdr.de>; Sun, 25 Oct 2020 14:36:43 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id q4sf1210748pgk.13
        for <lists+linux-ntb@lfdr.de>; Sun, 25 Oct 2020 06:36:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603633001; cv=pass;
        d=google.com; s=arc-20160816;
        b=nmPQNvupw8eaHVsXNMriWl1gx5SA5lLkb6BTYBmD4JGOD41JjSoW4lx5PiEK9PMEi/
         GfRGnl1sghNwGa+dVbMNKArx393RlbQGlFSTgFLbs/Zz2pD9efL142w20Q/g08r722ZZ
         UzzJppJ2Crx3E6oX3M4RAkkYaWaygkSy8SQS5lx5470TFIYN4iw0zFO5QToc7EditVYZ
         R9lfIZgu/yYtDSxTquu21fPtzjXhlgaAc6JJh/+1xX3E5lyzPpxI0Nb2CsyE1+NHGomd
         AEnRNAGMFIerquxiA23OLM/hm74Z53ZP0Ct8Ryck1W0ww6TIQLKnzyAz2cTFLhdnhBFz
         H56Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=0onZ8TAsLrM1FUrxdhejKTiVlSsgO/KhtrD/aqEn8ow=;
        b=KmJDs9CCkFnpVI5YjTlEBt5FCcWWSVZiz/K46LwrMYXYrqHvexTzsXuex1xCKM6Qwb
         7ybd8btGSFZczrZOdv7Pp2+3s7PY5BoHwHPrp9We9K/2DM9AMCTqlwAlRhUu/7insiaT
         tYA2OazozPzdf6yYX5kHVHrjhAjPhep9ODylXSUuUFEyCjJWPYSMOvSoicE5fEy5XTs4
         6BxZBwVPrIq35RU8BMcfSc1QpxOoovoOS3yob8Kinu8r5JKBVEtjkafBOxQEYLswYmC9
         CIS1QdCvorpAbtcIvSH17omcssJPTu8TF0eYZdzgaLK/Whs9uSD8gNYuWhsG2SiRgR0k
         9hGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=rzO3IzA9;
       spf=neutral (google.com: 2607:f8b0:4864:20::842 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0onZ8TAsLrM1FUrxdhejKTiVlSsgO/KhtrD/aqEn8ow=;
        b=IxuVzLGIyVPgmW/CJB6F3mY0zkMrnBNpQ5AgflF4EPQlTJBZYkFwVsv5PuKrd/TqRw
         +iNEowcNTX+lUw36okr2bKEW5InBLTOJP+IXEgXYAdqt29g3wwq1upEevDuQ5At3GxjD
         oXmRYvYWrLVMUp4SegyUwxPwz3GjwXoyNSbK6FzJCIXu4Abxqs582qTzZyzEiWOdvQ/L
         Hk7QwfBeT5u1zrAVTC9qgUuzXjBCQOuIn/x++J7M5m9FM85PJGFhzea6xojf0eT47ulm
         /fYRDeF1M1f9dGArymhIbw3VEB2cSp+WODbXbi/84VzKK5NBqXBfkcCYtcHeB1mweDKc
         G62A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0onZ8TAsLrM1FUrxdhejKTiVlSsgO/KhtrD/aqEn8ow=;
        b=J9uGcSqngI04NV2bVvZEtwswJNwvOrP+e3vUsbSZGu+TzlNIbh95jj0ZkeHyA7b9DF
         DBwfcIjqE8XNxto/E6MLuw5L7hV7Uv8P01reIRHiWPqon4VC31/gXnSkqZi3vFAOWC68
         UPTp8aM8aMVPUvMTAnaBHXgYk6cue1IGW0akmkC2aA1mX5pNdqvLqO1Ev63GAUdmtIy3
         2/X1g5Musc9ShsNQ9XIBGkfHB9QN5YLWpRz2RsjSDyV6GASU8Q+8DAuw8xLaC2fR1v/P
         tzqA2NuJRzblLGdelC13hxeaT1B0K3bvf7Cu/AEdhX0wvulYN9IOpHIhyujEOPVM3Vkj
         iY/w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5301tKe+U4pphpOaJhrUEqPcgZFjMbNIetY8owWLCDtcg92K97J0
	dPNCluUpy58TVdGY/2xLw+0=
X-Google-Smtp-Source: ABdhPJxir2V6/valxb8ikbd9UaSHAmEIvQpJS9FdHa1MVTyUBuLGv7bggiJhuPXpLxeRWUWo/XptzQ==
X-Received: by 2002:a17:90b:1096:: with SMTP id gj22mr14481854pjb.183.1603633001736;
        Sun, 25 Oct 2020 06:36:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:6d4d:: with SMTP id i74ls2024111pgc.5.gmail; Sun, 25 Oct
 2020 06:36:41 -0700 (PDT)
X-Received: by 2002:a62:7a8d:0:b029:160:9e0:5ff6 with SMTP id v135-20020a627a8d0000b029016009e05ff6mr5090943pfc.52.1603633001157;
        Sun, 25 Oct 2020 06:36:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603633001; cv=none;
        d=google.com; s=arc-20160816;
        b=HrABB2MIM0QXcTyed+/M0H6vTbl10/r7CecLjnqqBXQTEtZS5wKgy5PjZWIHCb6xLK
         tPNDJD0WxD3n+QflS/Sili27Ta/q/jPmM0E8xB89NoHt6IDaAg4GfLBHTvnL3swtSbfj
         Q4+Yawlxqe2ZXtgWEYyEHMOGNwTYSU7nLKyeX2S52uZlM3+hQkEua7XLvizwp564vrh2
         kozuAajxBk1uMSUw+lhdBepLFQoQIX8egnrnnwQWktE8MJ5jbw5osy4WSi62aGGbi45y
         c4mo0rEfr4beLJP6KKkk4t9fZyH7hpuhFEJ2jZFAdN98KaTCLwKbDBJYMXZZbxRz7bP8
         0M1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature;
        bh=He1XrdVgxIH1LU2JaG2jhKSzWpZofSmhHtZ+UJ2yyrs=;
        b=f5kDrWTlXs1E01NfgZ2oS+JAKdyt7NRCzAIs0LHwkasXkuCrp0CqQfszEVciCqBCsl
         aoaMqzlzubY2vuSO7tKXUeDXnOGE3+2U5olCMVDL7k7G4YQ39wvq9j8T/9te9FUSdFg4
         TeIWmVPEb0963sw6Vj75B/n5qlIzg9dR//xa7ggvR3nMQfPDV5HI6oyotziWBW/afHQf
         YYj6yIw2eCjZc5/rE7jrFlAI7mJzssTw6EkGPURgO5gWenAkkk6ASJ5yRvsCKZ0Y7Jin
         RpuPhB6kmi3qqg1Jl3yWKRBa90z4+R78Fu+VtYMuB3gz/rHVZH71lRUiXCjoubMA8DmB
         x3bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=rzO3IzA9;
       spf=neutral (google.com: 2607:f8b0:4864:20::842 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id v8si436233pgj.1.2020.10.25.06.36.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 06:36:41 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::842 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id q26so4847335qtb.5
        for <linux-ntb@googlegroups.com>; Sun, 25 Oct 2020 06:36:41 -0700 (PDT)
X-Received: by 2002:ac8:5985:: with SMTP id e5mr11696126qte.88.1603633000224;
        Sun, 25 Oct 2020 06:36:40 -0700 (PDT)
Received: from localhost ([136.56.1.171])
        by smtp.gmail.com with ESMTPSA id g15sm4529369qki.107.2020.10.25.06.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 06:36:39 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
Date: Sun, 25 Oct 2020 09:36:37 -0400
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: [GIT PULL] NTB bug fixes for v5.10
Message-ID: <20201025133637.GA7862@athena.kudzu.us>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=rzO3IzA9;       spf=neutral (google.com: 2607:f8b0:4864:20::842 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

Hello Linus,
Here are a few NTB bug fixes for v5.10.  Please consider pulling them.

Thanks,
Jon

The following changes since commit d012a7190fc1fd72ed48911e77ca97ba4521bccd:

  Linux 5.9-rc2 (2020-08-23 14:08:43 -0700)

are available in the Git repository at:

  git://github.com/jonmason/ntb tags/ntb-5.10

for you to fetch changes up to b8e2c8bbdf7778c6e3c65db21ababb1dfa794282:

  NTB: Use struct_size() helper in devm_kzalloc() (2020-08-24 10:58:06 -0400)

----------------------------------------------------------------
Bug fixes for v5.10

----------------------------------------------------------------
Dinghao Liu (1):
      ntb: intel: Fix memleak in intel_ntb_pci_probe

Gustavo A. R. Silva (1):
      NTB: Use struct_size() helper in devm_kzalloc()

Kaige Li (1):
      NTB: hw: amd: fix an issue about leak system resources

 drivers/ntb/hw/amd/ntb_hw_amd.c    | 1 +
 drivers/ntb/hw/intel/ntb_hw_gen1.c | 2 +-
 drivers/ntb/test/ntb_msi_test.c    | 5 +----
 3 files changed, 3 insertions(+), 5 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201025133637.GA7862%40athena.kudzu.us.
