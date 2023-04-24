Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC636ED78C
	for <lists.bridge@lfdr.de>; Tue, 25 Apr 2023 00:08:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50C244052B;
	Mon, 24 Apr 2023 22:08:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50C244052B
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=U8WDTr5s
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FqW01UTmxXU0; Mon, 24 Apr 2023 22:08:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B0A5B40512;
	Mon, 24 Apr 2023 22:08:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0A5B40512
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5BE5DC008A;
	Mon, 24 Apr 2023 22:08:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EB555C002A
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 22:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0BF780D18
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 22:08:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0BF780D18
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com
 header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=U8WDTr5s
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mGvgWKC3qlnO for <bridge@lists.linux-foundation.org>;
 Mon, 24 Apr 2023 22:08:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BD6880BD2
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BD6880BD2
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 22:08:29 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-63b5ce4f069so6388489b3a.1
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 15:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1682374108;
 x=1684966108; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zh/fMVXEy/p80NSjVlrYa0mXRDr2h0FO6hsq5CtXg2M=;
 b=U8WDTr5sOlNki+xImOiBT+SbmEbKLNcSJOjygVaEWZeUJGOtSuCtLZFnT6TR90jW8a
 DVF7QEGW32zuyR4Nw7uVKP5H+pN9+Xv18FvnKNRBsae31njlZgMot10OOi3m2++3CTqM
 AdnixvthVDI9MRyeGYNgsF5nu4rPJKaqCb1Ph5PP7Kfeh5creb47rVyuzZOx+qvY2fZj
 N8zrbQJXWFM5IV3lG1c03Asowtpoqxm/iMXbsa0p55ciJJ4m/D0bkvZkRpTai5C5nEBt
 OOibxE3Yk7B67mpoZPvrpQyIahwcvWbv8mmvZz/bO+nBPLXpnKm8E/3OiCsEdFxGVmZR
 kz9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682374108; x=1684966108;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zh/fMVXEy/p80NSjVlrYa0mXRDr2h0FO6hsq5CtXg2M=;
 b=c6CTnqJnfG36a4Pw9bMRALzWFXiR2T57OLq1Fv3HhBP2y5i6FLfjWtJG6mlRN0Z/XS
 aUDa4H87KsIRIoTD5OZtmHHroUeIQ2Dr6NUsiK6M4/CRxRko7QnMvQC3UOl/Jq9wwWTq
 RDN3f2oCCG1DUDOpxiegyDYpYLVffCzE/FNNQtEc00vAPkfPRg5yioejLYTmbMaogtvW
 ILtTkKhe9hO7J6M4omTnvVMm/A3bOLKpn3WDvnH0QAhOVGjTl1z3BTkLDxufB0Ha3a5d
 e9DLSvOZPwO569iW1WubRGYfl1GlVsdonezXO0VILiZ9eYxndhEVHR7kP60JcEbMmM1g
 WRbg==
X-Gm-Message-State: AAQBX9cNSCfvgbupKHhb1hB5LBmlGVP+dlBnei/Ik4/wQmfkadSMcfHl
 WdNG4JS/vO0G3kmOn8AzWhtLXg==
X-Google-Smtp-Source: AKy350ZklP4u15lRaBdhabzYgXZeviQOUp9gn18+n5jO01qWXnN9OM25FsKAXd595JCzUDVW+l74eg==
X-Received: by 2002:a05:6a00:1887:b0:63d:3a18:4a03 with SMTP id
 x7-20020a056a00188700b0063d3a184a03mr21008048pfh.5.1682374108518; 
 Mon, 24 Apr 2023 15:08:28 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 q14-20020aa7842e000000b00640dbbd7830sm1711720pfn.18.2023.04.24.15.08.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Apr 2023 15:08:27 -0700 (PDT)
Date: Mon, 24 Apr 2023 15:08:25 -0700
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20230424150825.051f4b4a@hermes.local>
In-Reply-To: <20230424142800.3d519650@kernel.org>
References: <ZEZK9AkChoOF3Lys@Laptop-X1> <20230424142800.3d519650@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Hangbin Liu <liuhangbin@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [Question] Any plan to write/update the bridge doc?
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
From: Stephen Hemminger via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Mon, 24 Apr 2023 14:28:00 -0700
Jakub Kicinski <kuba@kernel.org> wrote:

> On Mon, 24 Apr 2023 17:25:08 +0800 Hangbin Liu wrote:
> > Maybe someone already has asked. The only official Linux bridge document I
> > got is a very ancient wiki page[1] or the ip link man page[2][3]. As there are
> > many bridge stp/vlan/multicast paramegers. Should we add a detailed kernel
> > document about each parameter? The parameter showed in ip link page seems
> > a little brief.
> > 
> > I'd like to help do this work. But apparently neither my English nor my
> > understanding of the code is good enough. Anyway, if you want, I can help
> > write a draft version first and you (bridge maintainers) keep working on this.
> > 
> > [1] https://wiki.linuxfoundation.org/networking/bridge
> > [2] https://man7.org/linux/man-pages/man8/bridge.8.html
> > [3] https://man7.org/linux/man-pages/man8/ip-link.8.html  
> 
> Sounds like we have 2 votes for the CLI man pages but I'd like to
> register a vote for in-kernel documentation.
> 
> I work at a large company so my perspective may differ but from what 
> I see:
> 
>  - users who want to call the kernel API should not have to look at 
>    the CLI's man

Internal Kernel API's are not stable. So documentation is only the auto
generated kernel docs.

There is an effort to cover netlink API's with YAML. Bridge could/should
be part of that.

>  - man pages use archaic and arcane markup, I'd like to know how many
>    people actually know how it works and how many copy / paste / look;
>    ReST is prevalent, simple and commonly understood

Yes, but that is what distributions want.

>  - in-kernel docs are rendered on the web as soon as they hit linux-next
>  - we can make sure documentation is provided with the kernel changes,
>    in an ideal world it doesn't matter but in practice the CLI support
>    may never happen (no to mention that iproute does not hold all CLI)
> 
> Obviously if Stephen and Ido prefer to document the bridge CLI that's
> perfectly fine, it's their call :) For new sections of uAPI, however,
> I personally find in-kernel docs superior.


The in-kernel documents usually only cover the architecture and motivation.
What/why/how... Not the user visible public API's.

