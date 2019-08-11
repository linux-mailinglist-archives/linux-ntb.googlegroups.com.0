Return-Path: <linux-ntb+bncBCS4BDN7YUCRBZOGYDVAKGQEB6D3NYI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A1E891FD
	for <lists+linux-ntb@lfdr.de>; Sun, 11 Aug 2019 16:17:11 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id r7sf59942389plo.6
        for <lists+linux-ntb@lfdr.de>; Sun, 11 Aug 2019 07:17:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565533029; cv=pass;
        d=google.com; s=arc-20160816;
        b=MI8uGR4LIy+yyqovJy8Xgmx3DTef8CGN2EQlm6PjTCl0YvOaZQjwI8XqPcwMYrDZNL
         TFA9L5NsgTH1jlx1vXvyJdGK8My/4rd4nItOeSIrteRh0zCVr1hAeVKuGO0cVntOCneq
         dM/eNAKDX/OfoZjZYPvqi61bQ8ePA8Vdfr6wd8B+nrt9WdjuFh5eB/hCjTmTufIJgBln
         OqgjHn2a/2Fy/uAMkmxM6i+bCURsnVDHrSTSBd5z3GytgqrOo0BNnC+YJKM0ckAJaNEA
         KwsML759Ogdi2xjN5288gCth8ukBL2vJYWmBZkc4XkM4dRjGNaMIACoOrHGTMCgIhUCT
         K8Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=lpY0kmhToLcrnu8f6sGHiMdAuz1jDqCDIlewK/BIWLk=;
        b=emG8EeU4QL9itqvNWdi2q4kp+F6aF3iiqg4aF4xs8Xlke1SZ3tNucWs1dQf4GAoLWm
         idA+oPyJYm2ncsQ6ccoD14pbDVBlRX1WXdeVTPXqtIVoO5UX84B3wpD8DrGt4sUWulvK
         S54Ts5ghw8kiIKlmLL6JDQQYqLNrzUjZHYaNtvgrzDftUBKOLd7l93c1RpkdSyjmWnSi
         PTnVjf0ZfsZTmfasQl3r+618egwR2pCak006RV/T3PV4WFYwN8VChEwQ7z4Y0btt6deI
         TEPHrqczUxjqrM0R0fcHviPcx9pN3i/SRDBXa28jqnEt5QpRllFJsEFPKDFXLt3j0737
         I3nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=CTDI2f9n;
       spf=neutral (google.com: 2607:f8b0:4864:20::b31 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lpY0kmhToLcrnu8f6sGHiMdAuz1jDqCDIlewK/BIWLk=;
        b=X4EaSHm/1kZETv+I7i44zIHGwvDSMJoSI92DtHii9nJfljlTjd2/vUu/Rt/QDRqoyD
         Db/5qeQnyl0nAwa2ikE/XI/p5GGYa4JnQzwvvu3C3CnuVQOf/cOwNNTAMby5GsR2nQC7
         rK8xAsb6+1hYl4B5iZRBjkI370jpByYDwVRPo0TR9d4uWzQEvI9gxkjel1advmX233th
         /RDTVHWaZOK2VaI/QvnNRaVQUhvXrUJR9KFs0McwIcxOKoVk13KM1xXograTQ07ofua0
         XZbSH7nwJvLmG0e8Dobp7FZHt4Gf93bZN394PE64y4UYZaWMbWQwt9JjjnyPNI2ZzI4k
         OqwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lpY0kmhToLcrnu8f6sGHiMdAuz1jDqCDIlewK/BIWLk=;
        b=BcufiAqomx7nd2QizNhSZ6487xl/XSAoGc30CQoZD/aGDOAiMRh/jysS4GiC+8XBPa
         Ogd7DLzZw6rkF7S4VKCug8FzF82eacEnXu8mAjKAJUXc4PADvXVhLAfYxZM0MUbLNAd2
         3tQyP3uXt7wwm6Gq+lvI9Wj33tSZK6rXTyY82/wmhl6G5fwZxrfx7+JQX0QZ2YBvWnvg
         ac6qexFxbvUwiuiZZ+urMy4bOz5eZSCWLpQXMTGuoxlOJdiwEDO63DxKTgdlFmtfWGou
         Xdox/0GTywjOhmY20z8S/GTw6H4Ij+i6fyJQkQvsTHYIiWkklvEPosUaXHDgS5UdWYJ4
         QQ+Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXEjoUgZHpEC2kS15OpFzPlPuVRAkbt/Y/EemqMCawYSeKyLvvq
	a4VCaQhfi+h/p9I041lV4cU=
X-Google-Smtp-Source: APXvYqwsrV/CakU3mWc0/YcSVhhXB+fVzZCmV/NHdIFQ+YliRc4szOSfzpHHvAZgf/IV+bddXY6zwA==
X-Received: by 2002:a63:ec13:: with SMTP id j19mr25933334pgh.369.1565533029594;
        Sun, 11 Aug 2019 07:17:09 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:2acb:: with SMTP id j69ls28293385plb.9.gmail; Sun,
 11 Aug 2019 07:17:09 -0700 (PDT)
X-Received: by 2002:a17:90a:6546:: with SMTP id f6mr18982807pjs.11.1565533029082;
        Sun, 11 Aug 2019 07:17:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565533029; cv=none;
        d=google.com; s=arc-20160816;
        b=ndDVxPiUq01wAFqz1v43MW8t8HOS/VWNPYuIrNIMJvxXk+5OSEt+7kfq6ri0usj2N/
         /TsX+L3gikApPnytZkj5zRm6Wf0trCVE1KW0P6UvsrC2XZ+AZezO0hXjT7LJSMC+CWVB
         00ZOPtBkeMVs5+PqVjg+gKNR3RVZHdRwEI0nlyZG+53BfiunwpvrBpTfCY+AUF5bNxUN
         VbBwAGLDhiiNubyPglpyKu6shUddmKfTyvlLRN4Fs9UbKSJF/M5g3RiPRfBLfPaBrcxw
         AyUuBFyDqTbFf5ppl5U6FqrvKkoJRH8HPQztwLD3YU9YkKuqmWeUll30bbshwOujOYwd
         g4bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature;
        bh=1k10DVZX38KqG7NN+n2wPTA9UK8NfscpxQDUmI83NeE=;
        b=FPq2bLBVj32HF+aP6WB5g/JlmW8iUNC1ye480hzEj7rPAEVpWlgbv8p3UXuJd140N4
         LVyuEa9P7conRfNgcs4lJRcajPexFmwDtKEen3YdG7cFrX1j5T4nfuMRZTE1RyaZiBNd
         wPBNrR7JiiiswXzMOzepBF4Z7vUHoaYRQCpDh596plR6At9vcwcsoVuFgLmg5qpqJkcW
         WORIrmQAaVTNZ2M9mW2m/ZttogX4sKcef0Z0SnPoWXQtaeLC/Ve2saNeMfdWimdHUyGO
         Wwoo3moW6w3Sc/Da3igoFfUz6AzVrhRZSDIZJLG8qdL0WfEkUZW9LAGPXD17cyVyQlWy
         AcLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=CTDI2f9n;
       spf=neutral (google.com: 2607:f8b0:4864:20::b31 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com. [2607:f8b0:4864:20::b31])
        by gmr-mx.google.com with ESMTPS id f125si5077953pgc.4.2019.08.11.07.17.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 07:17:08 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::b31 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::b31;
Received: by mail-yb1-xb31.google.com with SMTP id t5so4593014ybt.4
        for <linux-ntb@googlegroups.com>; Sun, 11 Aug 2019 07:17:08 -0700 (PDT)
X-Received: by 2002:a05:6902:52e:: with SMTP id y14mr12008418ybs.272.1565533028035;
        Sun, 11 Aug 2019 07:17:08 -0700 (PDT)
Received: from graymalkin (76-230-155-4.lightspeed.rlghnc.sbcglobal.net. [76.230.155.4])
        by smtp.gmail.com with ESMTPSA id q132sm23579060ywb.26.2019.08.11.07.17.06
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 07:17:07 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
Received: by graymalkin (sSMTP sendmail emulation); Sun, 11 Aug 2019 10:17:03 -0400
Date: Sun, 11 Aug 2019 10:17:03 -0400
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: [GIT PULL] NTB bug fixes for v5.3
Message-ID: <20190811141703.GA12153@graymalkin>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=CTDI2f9n;       spf=neutral (google.com: 2607:f8b0:4864:20::b31 is
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
Here is a trivial NTB bug fix for v5.3.  Please consider pulling it.

Thanks,
Jon



The following changes since commit e21a712a9685488f5ce80495b37b9fdbe96c230d:

  Linux 5.3-rc3 (2019-08-04 18:40:12 -0700)

are available in the Git repository at:

  git://github.com/jonmason/ntb tags/ntb-5.3-bugfixes

for you to fetch changes up to 49da065f7b1f27be625de65d6d55bdd22ac6b5c2:

  NTB/msi: remove incorrect MODULE defines (2019-08-05 15:42:27 -0400)

----------------------------------------------------------------
Bug fix for NTB MSI kernel compile warning

----------------------------------------------------------------
Logan Gunthorpe (1):
      NTB/msi: remove incorrect MODULE defines

 drivers/ntb/msi.c | 5 -----
 1 file changed, 5 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190811141703.GA12153%40graymalkin.
