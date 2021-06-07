Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F0939E49D
	for <lists.bridge@lfdr.de>; Mon,  7 Jun 2021 18:59:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F34D4019A;
	Mon,  7 Jun 2021 16:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id myi4NFLATWI2; Mon,  7 Jun 2021 16:59:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1717F4020E;
	Mon,  7 Jun 2021 16:59:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C36DAC001C;
	Mon,  7 Jun 2021 16:59:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2BBBBC0001
 for <bridge@lists.linux-foundation.org>; Mon,  7 Jun 2021 16:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 040BE40306
 for <bridge@lists.linux-foundation.org>; Mon,  7 Jun 2021 16:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=networkplumber-org.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MsGCcP_Jzwq3 for <bridge@lists.linux-foundation.org>;
 Mon,  7 Jun 2021 16:59:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2024D40305
 for <bridge@lists.linux-foundation.org>; Mon,  7 Jun 2021 16:59:17 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id k7so10231586pjf.5
 for <bridge@lists.linux-foundation.org>; Mon, 07 Jun 2021 09:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ley0ZV8wDk+WyRdH1QdkNT8cH2cyBlW9JyOpeJgzHEI=;
 b=dS2FsnITrxu/HHyNu4GkyWB5mSo2cwU9z3MazXFOzlF0WolGpGWbhAQozatjm/EOH4
 ToCzVzAcX/93SoX4NpmSoSVykXyY49TZmB/iJdUD92GAo2HiECTfY6QsZTrH4Q42m+qj
 OfZbBR6kj8ea0i8RQxtuZXSXL2wIN3Qbb0Wy7P1ksm2gAXoDKYTX6sGLN/4egmAtAcjV
 tEum9+ZE987fULyC6UzYRrBQsido6zeY/dqnvRpvKtxiRywyZIb6Qa669eNDcpe/ebst
 EuXOd0JPASJPY31vdx3+1eOgdEuCcN/To+E/ckNU6LAApUzah2LIDZccnWu9B7dFFBOy
 BnOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ley0ZV8wDk+WyRdH1QdkNT8cH2cyBlW9JyOpeJgzHEI=;
 b=P3csqwdxyF17xmuF71umzlBUGREHduYc/ahNsbpPEy2dc8WVNfYNmmrAtqMNiKokZV
 wr1kP7qnnWA0b4hXEgTgwtclBu+4Ol3EceFZBelNZlEXB46tClsVwY93COvZdUXLw0w3
 zn6xEOdqzr3BW4C2mA1Wyefvzsz52gBQX3mBPF0/3yjPKo+duLgXDgHU9SvVkpln1kyh
 3aR1HHpzfLVMbdWoqxW6ST50BqWdBC1tbWfRxIRByAal2bMvVlym8rBlgvIjhh+M6uRe
 EiqqLflmCx10BYhoRo9OhMBc1Bn5Ni802c+OJjkn75zX3iwO0v6LbIearZHE5DZLO6Z7
 ZAUQ==
X-Gm-Message-State: AOAM5338DYyFXOlMLw8KYOB1yeYXQr+N6Ji3AA7JX41dkPWHI66F67UO
 dtlpb+7hI4RpU9Aeikt8Ii+zWw==
X-Google-Smtp-Source: ABdhPJwripROeUdXi7hrC8E5sTFgtkqi2SA988n1L0PKbrgULaPn+XXQLmeHBuoeMqgKLN3OjTYzwA==
X-Received: by 2002:a17:90b:517:: with SMTP id
 r23mr17470053pjz.209.1623085157403; 
 Mon, 07 Jun 2021 09:59:17 -0700 (PDT)
Received: from hermes.local (76-14-218-44.or.wavecable.com. [76.14.218.44])
 by smtp.gmail.com with ESMTPSA id e188sm8425877pfe.23.2021.06.07.09.59.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jun 2021 09:59:17 -0700 (PDT)
Date: Mon, 7 Jun 2021 09:59:13 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Ujjal Roy <royujjal@gmail.com>
Message-ID: <20210607095913.32c17900@hermes.local>
In-Reply-To: <CAE2MWkkL9x+FRzggdOSPcyFpguwP9VuQPD9AJWLTsfLzaLodfQ@mail.gmail.com>
References: <CAE2MWkkL9x+FRzggdOSPcyFpguwP9VuQPD9AJWLTsfLzaLodfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Kernel <netdev@vger.kernel.org>, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] net: bridge: multicast: Renaming of flag
	BRIDGE_IGMP_SNOOPING
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Mon, 7 Jun 2021 21:29:34 +0530
Ujjal Roy <royujjal@gmail.com> wrote:

> Hi Stephen,
> 
> Can we rename this flag BRIDGE_IGMP_SNOOPING into something like
> BRIDGE_MULTICAST_SNOOPING/BRIDGE_MCAST_SNOOPING? I am starting this
> thread because this BRIDGE_IGMP_SNOOPING flag holds information about
> IGMP only but not about MLD. Or this is not a common name to describe
> both IGMP and MLD. Please let me know about my concern, so that I can
> change the code and submit a patch.
> 
> Thanks,
> UjjaL Roy

It is part of user API at this point so not possible to remove old definition.
