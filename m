Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D8B4C2DB5
	for <lists.bridge@lfdr.de>; Thu, 24 Feb 2022 14:59:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD856409BF;
	Thu, 24 Feb 2022 13:59:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TUQRk1-8BlSb; Thu, 24 Feb 2022 13:59:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 48C8A4048F;
	Thu, 24 Feb 2022 13:59:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0858FC0011;
	Thu, 24 Feb 2022 13:59:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6974EC0011
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 13:59:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5755F4048F
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 13:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D3qk1MDTnvxy for <bridge@lists.linux-foundation.org>;
 Thu, 24 Feb 2022 13:59:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 782D84046D
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 13:59:14 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id e2so2933152ljq.12
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 05:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Hx8qcrUpKwD3ZMmHTneVz1r8yqruW/VfpRM/Y8XRyGY=;
 b=B9Cps+y643AFbXupKs1kO8QeclwRqGVmvGQMdYhyChkLb36sepYdR5GTGUdtsfjkIE
 vDpWy4Yg02v+xlFxXe6jmrek0p74Mwx9P/szS+XAAc3shTqhZ9c4mlfrTIyKMXnIR1Bd
 pVljyleLy6/s7oPDvcpvAynOjavIip6odrtM5YHOHv3LrtHAPZtP0R0IUmox7dJ9m8pN
 Xe6esRN3gpU9ajcG1UDyez8pmMHKGnGBcR7E97yUcHfXvaFCVviHXbRO/JDq51XKokpN
 rPpFQwyVosCtnHfSwzV9y7l/By7p6qxzgTtZ3bWpvMw70Xej+ZfwxQIo1ehuENKyU8Nl
 /vpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Hx8qcrUpKwD3ZMmHTneVz1r8yqruW/VfpRM/Y8XRyGY=;
 b=Kx5CfQhuwFBu0/utmoZmyNimIPJixCoCKq1NlowBATJxN0VpcBl4DzmLgbYlws17Jq
 rW/9zxBky2moPjNn3yvCnLZo8Ai5AMnLLlC647MXWx1E5D9V8WKQ/B/Fm2F/eyrpM5mT
 /dvRdOlqF+tl7KqLoZ04vsWX1FVub1/WASB29N54jJvrDOFtljznmdzFKnvXb/5cScES
 8hpOEHA7Ow51oc18cHCR1qbcgrinZVFVyZc83ntZmzDR4tQbT8bztku53UJGh6xK/H5f
 A8vzSeSdy2m2dJ4Beab84zHwCs0JZVO7oHJ9EPVRHMIYMs377zC4kjKVy1OI/qOmSPhv
 L5Jg==
X-Gm-Message-State: AOAM530oBsWH7fu5EB9FO7rFy9YPRSDP01uaWeBv5/TvaE1JVoHQ4XRK
 3NPfi0PLSd6fe5YZrBuTkoc=
X-Google-Smtp-Source: ABdhPJyqgZcP9z6Ev993YWy5NQ27h09wuNq69NzIkB/AEV1mhu1CQr21J29r1vA03MeIXE52g/kRhw==
X-Received: by 2002:a05:651c:10b:b0:246:280:c7 with SMTP id
 a11-20020a05651c010b00b00246028000c7mr2006127ljb.126.1645711152150; 
 Thu, 24 Feb 2022 05:59:12 -0800 (PST)
Received: from wbg (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id w12sm213430lfl.131.2022.02.24.05.59.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 05:59:11 -0800 (PST)
From: Joachim Wiberg <troglobit@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>
In-Reply-To: <66dc205f-9f57-61c1-35d9-8712e8d9fe3a@blackwall.org>
References: <20220223172407.175865-1-troglobit@gmail.com>
 <66dc205f-9f57-61c1-35d9-8712e8d9fe3a@blackwall.org>
Date: Thu, 24 Feb 2022 14:59:10 +0100
Message-ID: <878ru0qsb5.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Bridge] [PATCH 1/1 net-next] net: bridge: add support for host
	l2 mdb entries
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

On Thu, Feb 24, 2022 at 13:26, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 23/02/2022 19:24, Joachim Wiberg wrote:
>> This patch expands on the earlier work on layer-2 mdb entries by adding
>> support for host entries.
> It would be nice to add a selftest for L2 entries. You can send it as a follow-up.

OK, will do!  It's on my immediate backlog.

Thanks
 /Joachim
 
