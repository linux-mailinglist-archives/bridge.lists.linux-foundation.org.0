Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D40811C1C7
	for <lists.bridge@lfdr.de>; Thu, 12 Dec 2019 02:02:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CCE6188721;
	Thu, 12 Dec 2019 01:02:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZKjtE3-mojyO; Thu, 12 Dec 2019 01:02:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E78688723;
	Thu, 12 Dec 2019 01:02:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3441EC0881;
	Thu, 12 Dec 2019 01:02:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1BE9DC0881
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 01:02:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0A7AF8503D
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 01:02:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X--gWbYwY-Fs for <bridge@lists.linux-foundation.org>;
 Thu, 12 Dec 2019 01:02:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 34B6B84F12
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 01:02:40 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id d17so286642qvs.2
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 17:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=bDu6UlocVr8yC7RA+vB1bpLyWumODdkZotQceKQnYYs=;
 b=PoAXSiR2m6vRgvmrW+eo5ZjFm9n+6JKutN/xPdn5nri69rqF2gXfNVdSKp8TSmP0KG
 JnbNf1p1O1h8zpGmbGqEvPJmfpXvzyVS9DJ0UEr5VJueIHMa4RGgilrOEJLk69h+acuO
 LzvHDaHEVqlECvwxqZdEB8eW1PNjcJUVFKwL41E3a15548vgzTjXmj8ex78fGMjckvSe
 6pe8yBrm4fxDLiv9Fmr6iPPvvzk2gcB95t/WJqlaF6zHFQZ0wFPO6jXVpAxPKEpociLW
 PerRrj3HU0IoR9tvgfXATdMgzVOBlNuroTITvomGkzRmZrNqubBwfrbJlLyC1PZtvvxj
 tjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=bDu6UlocVr8yC7RA+vB1bpLyWumODdkZotQceKQnYYs=;
 b=Gji0TgYe63Ygl6ebMDDrDIKbZAngWH5NjpgfqGupeO138pptv02OhWG6Y9J9HHZgat
 pZdrQouaSNd45NjuHHtSW1el8CznESBgv/G9P4/Wo+uI27xxG0Ph6I1fUpzbFlHoH5n5
 lpBQSok2SnK71CZzfBPHaM8khO8RhO819cQ7z8xkFaLHcbgyTX3lq841gFiDr9oiaMrX
 KF86as5sJt6L7pTyKaTduEY7Rtb2yLJzdN8yrC8HxjT+1tmzNwqOrltUzKOsU7C1pVaR
 0PNHM1CFHl4DCmkExU3uNTc+ZQTwFQyRCPZ5eFZYJ5HEGNAngFiVi5ZEhDe/xjQ8QrbT
 DG/w==
X-Gm-Message-State: APjAAAVD1OuIZazjRUaXuO4JyjVorRSYOIVuzeMqw6dBPbHt4Ht5dCDr
 MVPvUt9yPzqpJpDU6agp9q8=
X-Google-Smtp-Source: APXvYqy86vHP9w+iedPQNxW8573lsPDMclA+vgOa5vTcd21lpc/CQqoLWQu539HK1d+6DJG7JbGd1w==
X-Received: by 2002:ad4:4949:: with SMTP id o9mr5675617qvy.189.1576112559109; 
 Wed, 11 Dec 2019 17:02:39 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id 201sm1258360qkf.10.2019.12.11.17.02.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 17:02:38 -0800 (PST)
Date: Wed, 11 Dec 2019 20:02:37 -0500
Message-ID: <20191211200237.GB1661911@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: David Miller <davem@davemloft.net>
In-Reply-To: <20191211.141658.433012532951670675.davem@davemloft.net>
References: <20191211134133.GB1587652@t480s.localdomain>
 <20191211.120120.991784482938734303.davem@davemloft.net>
 <20191211164754.GB1616641@t480s.localdomain>
 <20191211.141658.433012532951670675.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 dsahern@gmail.com
Subject: Re: [Bridge] [PATCH net-next v2] net: bridge: add STP xstats
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

Hi David,

On Wed, 11 Dec 2019 14:16:58 -0800 (PST), David Miller <davem@davemloft.net> wrote:
> > To be more precise, what I don't get is that when
> > I move the BRIDGE_XSTATS_STP definition *after* BRIDGE_XSTATS_PAD, the STP
> > xstats don't show up anymore in iproute2.
> 
> Because you ahve to recompile iproute2 so that it uses the corrected value
> in the kernel header, did you do that?

Meh you were correct, my rebuild didn't pick up the header change :-/

I also moved the STP xstats copy below the mcast xstats copy to be consistent
with the order. I'll respin right away.


Thanks,

	Vivien
