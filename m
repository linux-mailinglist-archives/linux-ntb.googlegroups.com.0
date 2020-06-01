Return-Path: <linux-ntb+bncBCI7LDNNRUPBB74Z2H3AKGQEI77TTKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA4D1E9B00
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Jun 2020 02:34:08 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id w24sf4398520pfq.10
        for <lists+linux-ntb@lfdr.de>; Sun, 31 May 2020 17:34:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590971647; cv=pass;
        d=google.com; s=arc-20160816;
        b=IDnNr8tAjcnVaIbUfCZE8KFcqtiyaPBbiY/jgmkOnAaWN9o+mO/NwBQ6gLy5D1CH/9
         XZi7woYyGIqY031rteyP6tId1fSyB96g3MqnV1CsRSm/NS8/ly3rNJKBIQYapYDO5CBF
         HYxKijy9bkwrli6RgpIVw4KHwzmsrv9F/XMD8ePekwBoLKeqLdx8cpS4bCstZ/oIwaJt
         kD6xzubCcr15/9uKfw1VXSl1ls1pANZfpJoHpQ01GE+4MSya6d11QwbB1AY0OMnUQsRE
         sJrirLDfgYmrSTyaHWWOeiR9OWTzqlQRAB+LYZTitGKy8pGyk5d+famLALISUjUcwC83
         idYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=C+KA9YRa36qup/jLg0IM+0LgmqLiR5zGEMbGzhVDL+E=;
        b=uDlXio/TMw3LIbRq5yOPjrZCz/LXe67XjbNwX7S7NlIpTu686u0876XRoHiamPF2ET
         3j1K3PpXqJ/PDGXU8lVIBGrVo3AcTeQ0rDIR8KpxeM5khCdYCPw5gRfQBJpS4KaDubHd
         qZcyVw7ky1lIuqbGxklV3bIxqI4HpNiJ96NzToUXfI6kimqvmZYHCOS28ovj/Rykea/T
         85jZdMonARqkSoU1Ac713mJMUhykCjAQu81iUfgX0s0Oh9oHXPwLiFIm86RoxwDx1vwd
         oYpMgA+I942cW7Xne1xHeM4YNFdABOxvf6feiWzSSc+Ofn9nrw5D7q4VRj4bKkiaWYCu
         NbUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OnCeMlCv;
       spf=pass (google.com: domain of neswgood@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=neswgood@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C+KA9YRa36qup/jLg0IM+0LgmqLiR5zGEMbGzhVDL+E=;
        b=eXZR3xo/tHWobjpmq8T1U/iupUrCbtj4ehIw/jtYXxQZOYw6I4aTw4YBAIdlzCezx1
         I+VGc4OXSyjM22kcyStOl2jnnTGAS+p/lG2SqiFVVYexMjAvRJIDy+GwGRWTr/t2Otpt
         T/ClO0yyD9kIS9DE7SMDmUr3B5BbveU5e/z2oUfFkUbq5n79DP1+e/0d/mPF6I8S+JIy
         C0+LdstAFr7p1sNVTZGahZ+Ld+xT9a7QJIAJrxeNpnN01dWh41RvSIJT8nykWEfbZ48y
         TCSalCkbMz1s5+TeTpv69mn5SFxRmISw0J1mPPKKkF2/P8P1aMDcKkO57atRKTOfJ9xT
         pDcQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C+KA9YRa36qup/jLg0IM+0LgmqLiR5zGEMbGzhVDL+E=;
        b=nwoISkZP4RxIT4CqVUqfz9In72nQSwaI4wnDcKZeKkDMNG1m+AC3YBVhQgOZ3s0mt0
         FX0TzeTk6CouSfF+Z8de53P1EvuBBssGbuX0Rje7PzH8kMwExOMb9ktxxcwoMHODb57b
         GD6kksWfSyiAwlXph+hpMFCLMomFqz2iXLq4GM8kEjXnVcQnmZC0R/UGX8W0CroDxIzf
         t4wyJnteak7vGZ+rCqTQNGG4RF3S8DgzrGqrN5v6/i77RD+1yEtDsxIZs0lr23J78rIp
         GwRlTx5N++mROnIa5gIkCQBBPSfyR0VajYw9GklgGQhTeQ+HXrcQGZ2aiKYe3GA+6rEu
         OwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C+KA9YRa36qup/jLg0IM+0LgmqLiR5zGEMbGzhVDL+E=;
        b=q8v+Fd28f4hVVlXhpb6AXVSfFsrhI6pseKPNTdYS1FipRO6VCYGKVMDTXaJ1puUIFj
         ioZQYmvf6UbSKmmFR/7HJc9Dl+sBBKfEUCagL7tQefmfOTJy7U450z0OOtJKAIW2h9A5
         cZnsPkjH4X0BabmyjE+9Ch8QZjWuk5dABMWLGcNk/LsgUxt+D9sL4zsfM8n2wdC86+E6
         pLOzrr3gqCqkTDezwb7BO7Z8e1YVX+1UIhbPmf5/Bu6fQ3Jxkncv2O/pO2Yo8Ke91rGM
         ajxwVXTTWx7qSDBMEwOS9LuPGrIzk03cs27I5BEZgKGGUfZlfJWfOTMq6h3vWqUMTpng
         WzTA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533HC2P+XTCL/GntNEQhqY+KWeACpV9IDXxZcOKt29I/QRGxXtfP
	XIFGu9L1Sn0so6u82LjJNhQ=
X-Google-Smtp-Source: ABdhPJx1Fc1EcY306CrRSdeEkHC7xQ3VoYxlNerNg4MS8skwMgJYG7kZWTd6oNJJNYoysmpsRxprQA==
X-Received: by 2002:a63:7906:: with SMTP id u6mr17656941pgc.220.1590971647587;
        Sun, 31 May 2020 17:34:07 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:d90e:: with SMTP id c14ls5006728plz.0.gmail; Sun, 31
 May 2020 17:34:07 -0700 (PDT)
X-Received: by 2002:a17:90a:f696:: with SMTP id cl22mr22037689pjb.170.1590971647006;
        Sun, 31 May 2020 17:34:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590971647; cv=none;
        d=google.com; s=arc-20160816;
        b=UtOVWvkg5qLXSWT18L4vLhTMIr2LFtRaEB4O1JNfarBDG7gu7VCHqlw8q6RfAvJe2T
         TRBn2YWPFDL18+BqkZAupVokKD13VtnK1kMEbI2iO7emSMHVkH+4s33kRRrRZTC5dAJP
         8qVTJ7bf19Q+mTmgLGj7+D5VlqKUfCdcsZDneSXH2uiLfQXy9fZin+K1vWH4iE1RZhYs
         YlVa2j9NK3+JyE62v7aprZChyGtGukDGIYXSKMB1Qxj74Zzk+aNePzKm8KKshb/0vwVK
         ZSBo/gHE2jzcISMVSf8iy5gV81l8RcG5boWm49pmTRQeMMm4tmw6utEx8zXSNhCp6+T4
         Zzyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=j5JLGSRikCUH+V0A/Lf7NwSnEAbSEXCBhF653jz7udA=;
        b=jneXFT9GGd0yA36w+S8r/WF4D1sAfj4k+IIuMn8x5SscEkyR5qS5IkoLjd2rySZp6W
         k6zOiQ3Z8TrVw8ujV5x0UVF03k4qRkxmutFsCn5NsxE9RDfnlBQuQWCf/CXeFG+O3f1u
         Tf3d1xTHmagyKiAiyKZZLvbyjvBwM8Znwxjzz1MscclHjw3/Cktj8SQLg//tjaoe1Zas
         XqUBQz73YADxhSi62QAAtwIpk0zZlDVBTtMjVdfwRUMyoI3CTkignLkfsE6wGtYkKV98
         EuheJZoFyw7uTki5neXKOW4a388n9251Tc1pFk/OipqnieR43D8ZW+NuJx8SzX1zAcwF
         QXEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OnCeMlCv;
       spf=pass (google.com: domain of neswgood@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=neswgood@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id q19si138946plr.1.2020.05.31.17.34.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 May 2020 17:34:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of neswgood@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id v128so7618065oia.7
        for <linux-ntb@googlegroups.com>; Sun, 31 May 2020 17:34:06 -0700 (PDT)
X-Received: by 2002:aca:3c82:: with SMTP id j124mr12823528oia.62.1590971646475;
 Sun, 31 May 2020 17:34:06 -0700 (PDT)
MIME-Version: 1.0
From: Marvella Kodji <marvellapatrick1@gmail.com>
Date: Mon, 1 Jun 2020 01:33:36 +0100
Message-ID: <CAF0CuhAcxohMOLT5Zh75YYnXkATPe4tBLO1UHXFZFm8XxgBkrg@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000d6024e05a6faf394"
X-Original-Sender: marvellapatrick1@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OnCeMlCv;       spf=pass
 (google.com: domain of neswgood@gmail.com designates 2607:f8b0:4864:20::243
 as permitted sender) smtp.mailfrom=neswgood@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000d6024e05a6faf394
Content-Type: text/plain; charset="UTF-8"

How are you doing

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAF0CuhAcxohMOLT5Zh75YYnXkATPe4tBLO1UHXFZFm8XxgBkrg%40mail.gmail.com.

--000000000000d6024e05a6faf394
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><span>How are y=
ou doing</span></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAF0CuhAcxohMOLT5Zh75YYnXkATPe4tBLO1UHXFZFm8XxgBkrg%40=
mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.googl=
e.com/d/msgid/linux-ntb/CAF0CuhAcxohMOLT5Zh75YYnXkATPe4tBLO1UHXFZFm8XxgBkrg=
%40mail.gmail.com</a>.<br />

--000000000000d6024e05a6faf394--
