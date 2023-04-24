Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C21556EC8CD
	for <lists.bridge@lfdr.de>; Mon, 24 Apr 2023 11:25:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1515681DE1;
	Mon, 24 Apr 2023 09:25:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1515681DE1
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=BNlwlnuV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fAvwD2oWoaUA; Mon, 24 Apr 2023 09:25:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9414D81D9F;
	Mon, 24 Apr 2023 09:25:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9414D81D9F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 462F9C008A;
	Mon, 24 Apr 2023 09:25:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DAFDAC002A
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 09:25:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A846E40292
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 09:25:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A846E40292
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=BNlwlnuV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m5aWHLn46s5G for <bridge@lists.linux-foundation.org>;
 Mon, 24 Apr 2023 09:25:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7BC640025
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7BC640025
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 09:25:14 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 98e67ed59e1d1-246eebbde1cso3641152a91.3
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 02:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682328314; x=1684920314;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=35DRhB75q3wRkebp9DrJb+2dw6nrBa1EQoLcH9Em600=;
 b=BNlwlnuVqgfas/so+5JH2OtAppwOpVA0nv/LhzX7waApxmjwkXkMMACaqFrsKr8PVt
 SLuuW2laKLiaSz4ka3ixztRuwnK5TL+k7M3agtcAHQa0t6ZaVvcX82pfQUPQZQMj7avT
 m7Inxi8adG3ZUVueGfkNz54K1k13bX1230IrX+itNmrOeHzFQAWzf9A19ESD14X3MM9w
 s0JPHVLwHSagHe+ShaZxv7LDLYKZFjlrChKbTYHr+GIJhBnthxZxDJXmOjV4zq4tQcZi
 8TqG2AI2UTNke3z3TgbKer65jqecPvmN42yER8jBrI+c3/gnF9f+YTSIjf0cvD0GNEOz
 wEvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682328314; x=1684920314;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=35DRhB75q3wRkebp9DrJb+2dw6nrBa1EQoLcH9Em600=;
 b=AQ1kLh7FVRZYmVZYAcBIiJjmjhHSCmGRFKjnfSVlZGTWu5al/scxH1iYFKn27eqTMa
 WWbhZfz/YvvlhTM6NkJ/K6fwlA+csEuJh9pIxM1hStn4pA4Ow7rMPzwXHoyxfPyIBwnJ
 9BElXeHR4R3guaMhQAbtgBN+xGxxWe33QT1M6+WdyCQD1r0LsaTxGYMgP5tnavnoXhW4
 w3jdZ/01gFg2uk7hsZytK912OtoXoZtJZ/uhT9nex1mB4+O2YMFWzCzfoxQZhLlO0OH4
 OAo+Je9NxqJVZz4WKIKIdwO2R5F28GrgOXeswRLP5uBduprwvucMVV8yLVtUVpJC7Lyl
 vstw==
X-Gm-Message-State: AAQBX9d0pEGMYmnqMfmN6gMUerMzkwfcof/RsZzSGdzERQE0PURObrfF
 KU8yRAdzhQ3HI0xCvM0IXaY=
X-Google-Smtp-Source: AKy350aK4nmwqgILtsdGLYKD9MJBIiMBQ5N2Spb29aoGzvTkWDGc+sDgnCrMvheVAtpWyzWLwRPqpA==
X-Received: by 2002:a17:90b:310:b0:247:6ead:d0ed with SMTP id
 ay16-20020a17090b031000b002476eadd0edmr12757044pjb.28.1682328313949; 
 Mon, 24 Apr 2023 02:25:13 -0700 (PDT)
Received: from Laptop-X1 ([209.132.188.80]) by smtp.gmail.com with ESMTPSA id
 f12-20020a170902684c00b001a6d08eb054sm6227226pln.78.2023.04.24.02.25.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Apr 2023 02:25:13 -0700 (PDT)
Date: Mon, 24 Apr 2023 17:25:08 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: netdev@vger.kernel.org
Message-ID: <ZEZK9AkChoOF3Lys@Laptop-X1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [Question] Any plan to write/update the bridge doc?
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

Hi,

Maybe someone already has asked. The only official Linux bridge document I
got is a very ancient wiki page[1] or the ip link man page[2][3]. As there are
many bridge stp/vlan/multicast paramegers. Should we add a detailed kernel
document about each parameter? The parameter showed in ip link page seems
a little brief.

I'd like to help do this work. But apparently neither my English nor my
understanding of the code is good enough. Anyway, if you want, I can help
write a draft version first and you (bridge maintainers) keep working on this.

[1] https://wiki.linuxfoundation.org/networking/bridge
[2] https://man7.org/linux/man-pages/man8/bridge.8.html
[3] https://man7.org/linux/man-pages/man8/ip-link.8.html

Thanks
Hangbin
