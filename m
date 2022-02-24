Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4843B4C314B
	for <lists.bridge@lfdr.de>; Thu, 24 Feb 2022 17:29:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4FA440A5A;
	Thu, 24 Feb 2022 16:29:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DEIvl1Uce-Cb; Thu, 24 Feb 2022 16:29:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5548640A39;
	Thu, 24 Feb 2022 16:29:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0B736C0036;
	Thu, 24 Feb 2022 16:29:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 22384C0011
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 16:29:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6E2440A3F
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 16:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mp1hincOlRwD for <bridge@lists.linux-foundation.org>;
 Thu, 24 Feb 2022 16:29:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EDAB240A57
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 16:29:38 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id f37so4788981lfv.8
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 08:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Xa6MAq+rNUf44zva/0KAJya5lpKaHjn2wMQpnlHghgw=;
 b=Yj4+pap66cqOlKxhRjNnfnD8zWcxf9YREa3tXAn3vzk/YeFZpnz7dviOGt7ZAKeb9o
 oMIIIq+A++0UOeejViTbqKHEu26hfJE00VLuqcb4yIu2XjJ0YMycsrtJxk/wsWNyTAqy
 o83gkRGSJlHfehzmD255N8UOuhOAkuvbUK5rvnN1IUCJX+3o1QnZODnLOySkS66Kym7t
 6osWwVorc5sMDjR23T+WRe1wIpWQVe9zInGohVsDMs9An2dkT7JJOiRveHrRFAuLfkXP
 n1+rN8N0bWWRuzL63I3mUuLqXiSIZ9snq4/CaqkDfrRJKyKePWFiHdYr2SDonnJEZO08
 yeYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Xa6MAq+rNUf44zva/0KAJya5lpKaHjn2wMQpnlHghgw=;
 b=TNUqx0e38YgL9vCWJbLSXCJE2dRuvoEV+VzDiIpjed1w0ldaKjM7TNi/4yh046Vtug
 lB94FgpkBZd//TuEVTni5jcDeWVgPh9yLPxa9FdtkO6fInvL9zof9TgCL1jpevG/EAKr
 LZ5K0AMX1ZG7bOwFc8h3DIxDLZ/nv5p48URhnGq5gbNjoRii5hMwunOyG+mMyJeIuGdQ
 N26h/6eQLmCAT1ntouzrNkzbUAFV3xM2uhBJnBc4uNst1X0YgywOa5Z+h1P34hMRxVzv
 UoIgO1iNq1nUAnFvcvUm3epyC4mVlC3mrl2JKL6Vw8qmgvKbZg4TJzh2/V0XN9MK6Z1Y
 QUrw==
X-Gm-Message-State: AOAM530LMdD1h0Sk6B3d3TnxsJZIdcuhkUPtBFhmOyCdpUeqbrSwlFji
 ZgLS2spdmzo/vgTauGLDSHs=
X-Google-Smtp-Source: ABdhPJx/XkiYdteZIOnPrgPRLU8La/W/ow6dq1xZtLGnXTkkTHpsswA0KTDy+fmvBAxOJjb9utMCTw==
X-Received: by 2002:ac2:592d:0:b0:443:3c8b:590c with SMTP id
 v13-20020ac2592d000000b004433c8b590cmr2196604lfi.147.1645720176616; 
 Thu, 24 Feb 2022 08:29:36 -0800 (PST)
Received: from wbg (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id m7sm245126lfr.82.2022.02.24.08.29.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 08:29:35 -0800 (PST)
From: Joachim Wiberg <troglobit@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220224080611.4e32bac3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20220223172407.175865-1-troglobit@gmail.com>
 <66dc205f-9f57-61c1-35d9-8712e8d9fe3a@blackwall.org>
 <20220224080611.4e32bac3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Thu, 24 Feb 2022 17:29:35 +0100
Message-ID: <875yp4qlcg.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 "David S . Miller" <davem@davemloft.net>, Roopa Prabhu <roopa@nvidia.com>
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

On Thu, Feb 24, 2022 at 08:06, Jakub Kicinski <kuba@kernel.org> wrote:
> On Thu, 24 Feb 2022 13:26:22 +0200 Nikolay Aleksandrov wrote:
>> On 23/02/2022 19:24, Joachim Wiberg wrote:
>> > This patch expands on the earlier work on layer-2 mdb entries by adding
>> > support for host entries.
>> It would be nice to add a selftest for L2 entries. You can send it as a follow-up.
> Let's wait for that, also checkpatch says you need to balance brackets
> to hold kernel coding style.

Jakub, by "wait for that" do you mean you'd prefer I add the selftests
to this?  Otherwise I'll send a v2 with the style fixes.

Best regards
 /Joachim
 
