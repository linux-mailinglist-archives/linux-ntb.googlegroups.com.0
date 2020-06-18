Return-Path: <linux-ntb+bncBDTZTRGMXIFBBGEFVP3QKGQERTAOTSI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF621FDD45
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:25:45 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id n6sf1861911otr.4
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:25:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443544; cv=pass;
        d=google.com; s=arc-20160816;
        b=yhxT/Yp45y6iWOKQCs1MG5ejkvbNujoZmCn5wBcwQQQUXb2jEP/4jU56qrj3suO5Gw
         ++pgHVQwwZgaubhnFlrr3W72qn0+srQrbZCXf3Xo42IaNAXX3hQ2deWZ3JzsC6g9QmDs
         4fgke7icy5ZRJ194Zt3T61njojUgpSQBP1d26UmOnAS0YKjfJdMHpHalH2TF+vlFHs9t
         CaHoX5GWeXTKx+OZmHaQaneFbGZmyDObmqE/puOImhTt5PRRC4hHR3x2sLMcsZCYJSCP
         QjHienx5OUXgFfHos0V9TzN2V7d1ncMgBqtC+3/Y6J07NM/JOOoL8D9DOncKYTF24VE9
         H0wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1o1R0pPipsOWjvFWFXWtkBqmmnAPmQm9q0xWZhHrdoE=;
        b=VyvnDkEqLMuQ4RebZ3nlgQa5hbaglY3BDkblWva+QzP4Us8udFnRCjJT/3kz1WACcK
         GP0Sl9gv2GfADECRWK6YSSGhsj/kA62rqLmoZnaSsaxVBx2GNSAp02iduigiPStHdv8S
         beliWvlWS32HsifWtYCfBOK1+90nNvp9isR/sOW5qVVzMbxZrGKYEMStC6fcb1KqnV4/
         Md0kWA1V7l734kUoJMBAeReaaF1Pk4DCJPm/7KyssLVvWhbLa6Rv6iDTJtr1pSqSUy85
         fRmQr0k9xBnDDmT42I+VZJDWfM75m2CA4Mqc64qcBgf3aJKcgospJvIvvlRXKb3aXNty
         nRmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="ZnE/cNLm";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1o1R0pPipsOWjvFWFXWtkBqmmnAPmQm9q0xWZhHrdoE=;
        b=WoGC+Xo/nRIjifpOCf7yqvCQ899S0UT+XU+zITTPxpZj7A2UJuIgc+WVLVhOUvtXdk
         19XF8Kv1Bsbo1eEwW2ajlghGwS+hsdQm/H3f62905+9Cnw6HPIX/VMYQpOo1nuBF2CCK
         BpzlrN93o7XMQ9XL3gbsweior0BnDySZKiBamzO1FqyFFBi+OSltKbJIKf8CuWKlkosT
         665mls9N7a/bH0Kar9deHn2oBdjve6eOmukkX3Uz7Rv7xMKMHkA6FoUuuzT3dFZxTjRx
         +WgEVjjGB9FTcGkg1sI+e2Ks0lUu667lNG3jDU8rkDKzeANhf6pUdJfTlNxCl19px0GA
         J/pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1o1R0pPipsOWjvFWFXWtkBqmmnAPmQm9q0xWZhHrdoE=;
        b=sQwiCN251l7rDr/uZaUjltAH3hI835xwy+vlNihTTF4yRXI+DzUefFPSxcAkEwRz8u
         W4OLXVu2ewt38+nojJ5iiHru3YZhOw8DHD5Br6H3rbM2jA7TPsE5kBY/fbl9bgMXsC7X
         aLLGXbfmyjSnU7xFRyBmSH/H30SSwYqXHj9M8Q0RIOIzojQT8Nthz0cnAkdOPPdpIOIu
         Wa2r4DaVU1qu17PMuTeroUnnYZPiniW4n7yi1MWHMn8LLHFjXdJXhcM1PpgAcCS72hfG
         ifRI5r3Tv+w3uqNInQmzY49HITJgPHFJgoETTtJlKzhuyTMxBaxO9QIWEEjGH9khrrVE
         Td6w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530gTNIEJd/+trNLtDV8SsY50p45t5BpnUhJg0ALlPJICM77mo1s
	0v4ed6qBHJ3loxFw6foi44c=
X-Google-Smtp-Source: ABdhPJyaBxgUdI5ASj2/GlXnE4KtzcBZT7+95aDl8C8zUw1LuWZfFD/sKqVrI3f239UvsG7rnRlSgw==
X-Received: by 2002:a54:4897:: with SMTP id r23mr1243513oic.103.1592443544733;
        Wed, 17 Jun 2020 18:25:44 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:241:: with SMTP id m1ls825699oie.0.gmail; Wed, 17
 Jun 2020 18:25:44 -0700 (PDT)
X-Received: by 2002:aca:d884:: with SMTP id p126mr1279132oig.4.1592443544512;
        Wed, 17 Jun 2020 18:25:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443544; cv=none;
        d=google.com; s=arc-20160816;
        b=teXEunb7ghbEmEvanpofoJeBkAM+mM4T1raXrG9MaJ32RHGBCPsWrsSRsbd/9nfOyI
         DuP+qT1qruB3kH3FMC1fA37uCwKZnKpYFYM0Q3xvJQqg9RBFewPEPHhTBTDqj2VLtLtG
         EILRn/i8v1eslW1SjefoXlmrFh7PN8gFLvwPs7NIjCLR+4xygsINPGpAngElV2c2mJUK
         nirF8Qg5yBY9fXUpyG8QnyAduZ6b7/2e67On+GMlXT80Gwa3t+jTQ2P8olIa7+ww8Lml
         21ULnc/aR5sblTvnmBIf8xejmQpq9dEhrFq12efWVReZthJoR4XV2BKCKvtbJfywikkK
         C+yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=X7hoeQLTB25sONiTHT4oIEb+gCh+xXvcoZCBaV71dpA=;
        b=WG2ksDLYnE2koR5y2Kq34eGRgrs+DkQf91J0OtIJs5cc+1jzPdb7CvHiVat96a4HCd
         H3eWEcAtGbTJuwk9pb//+ydHKQpzj1mpdrqxlu3SD4kUIkpVko/nN1FeljZrwUwaT/Jd
         7Z7R5qp4FzlnM2fKOICK5M8SqjKFRITmDXWrMcdP85vQYTRORUBWFge0aSuPOWEzwEHr
         6WjKanecwrMrtotZX1mfRHBthhNXa3vZjtW7HcvGqOMHmEgaRBSVcJACqaacAEaaqZCA
         uD/+vrM1lTAxngVZPud01+pacOKMBNgswlveKBUMfaqZx757AuZpKhGpTOwF7JjSa2Lj
         wLnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="ZnE/cNLm";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a13si96052otl.0.2020.06.17.18.25.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:25:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DCB4C2088E;
	Thu, 18 Jun 2020 01:25:42 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com,
	linux-kselftest@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 160/172] NTB: ntb_test: Fix bug when counting remote files
Date: Wed, 17 Jun 2020 21:22:06 -0400
Message-Id: <20200618012218.607130-160-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="ZnE/cNLm";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Logan Gunthorpe <logang@deltatee.com>

[ Upstream commit 2130c0ba69d69bb21f5c52787f2587db00d13d8a ]

When remote files are counted in get_files_count, without using SSH,
the code returns 0 because there is a colon prepended to $LOC. $VPATH
should have been used instead of $LOC.

Fixes: 06bd0407d06c ("NTB: ntb_test: Update ntb_tool Scratchpad tests")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Allen Hubbe <allenbh@gmail.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/ntb/ntb_test.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/testing/selftests/ntb/ntb_test.sh b/tools/testing/selftests/ntb/ntb_test.sh
index 08cbfbbc7029..17ca36403d04 100755
--- a/tools/testing/selftests/ntb/ntb_test.sh
+++ b/tools/testing/selftests/ntb/ntb_test.sh
@@ -250,7 +250,7 @@ function get_files_count()
 	split_remote $LOC
 
 	if [[ "$REMOTE" == "" ]]; then
-		echo $(ls -1 "$LOC"/${NAME}* 2>/dev/null | wc -l)
+		echo $(ls -1 "$VPATH"/${NAME}* 2>/dev/null | wc -l)
 	else
 		echo $(ssh "$REMOTE" "ls -1 \"$VPATH\"/${NAME}* | \
 		       wc -l" 2> /dev/null)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618012218.607130-160-sashal%40kernel.org.
