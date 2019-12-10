Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B7B119228
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 21:34:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3889687938;
	Tue, 10 Dec 2019 20:34:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gCbGRpHuOpJH; Tue, 10 Dec 2019 20:34:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6FF487C8A;
	Tue, 10 Dec 2019 20:34:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B8180C1796;
	Tue, 10 Dec 2019 20:34:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 21DA7C0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1B26C86B76
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:34:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uoSGJdabVqvW for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 20:34:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B1FF784917
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:34:44 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id t7so4758657qve.4
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 12:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=k9StEROeVFHgDma5h9VD+gMFs/72EafIdPmXm2r7ghk=;
 b=PsL8HeIF/pbv1HxDF4LzH/nSUtms0dwXA+dzZvwl/Wc9lv1sPtkRc4eDbX5ufVHO0A
 ez8TgCSMBNY/INVzWaE3Yu0NUdG0QQTUTJlq4M3pLXpdMXOmW4f5ljjU3DIYfUEmUIvN
 gjWJ5zGNX8qjWLGzHIg2dOLeZimFsS08SsAwv+xAPk8fVNpIuQIxFcwqN8OA26R8xFpU
 58ksFGwwl/iuODPS2x4Mn1AremLP+NxYbsai1vErzb/pR50tsMhwRbgNmWvU7G5Kl3Lo
 6jO8H81GG1vQJ/wW8Zg0ghFF6UryCCgLrdZJxpQJ2vCEJsp2Yu4XnLWgm5Ux6G3zAioi
 yGhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=k9StEROeVFHgDma5h9VD+gMFs/72EafIdPmXm2r7ghk=;
 b=UaNMVeuwHCU5fgeTPlW2zwq0SAv6f5rCL+ISVKtlzX8fVipBOG+sh/qFZM/e6kiEOE
 2YZ7KjR11mFwXKyRYl1qmactOPMIq8sHuYoGd3aDIQtckraO132CNssNHSZg84oShv8Z
 1HeaEIvh214P9KYF+dPhu7EqXFz4i+o3YrELk0snRagZ7UgKfe5lZQD3aMx1V/LKQUpS
 ztIGxq28aTWUBuhbjkLpb6jf65u5qKqCjAhxcUWru70FKzV0ZY3L8zwpZhyzq+hWwW90
 8O0rPiXVEbDRfy+6ZIkn9+MJGS+78iMpxeeQ00PFQ5jWKgnJhHEmCrr8bJcSTER+c50+
 SqkA==
X-Gm-Message-State: APjAAAUSahNtBDJA6iLboRoMylHFul7ltM1K67tepE8pGCoH8YRDi9cJ
 /muPS54CGR+D1WfCr6kerHU=
X-Google-Smtp-Source: APXvYqxNYIhCvP5N4qvAggJtN7eDK4YJ9LB4h4K69m1xMvYCG3XLQgmX4jWnRUTxarsBg9JJD8I+7g==
X-Received: by 2002:ad4:55e8:: with SMTP id bu8mr30969794qvb.61.1576010083657; 
 Tue, 10 Dec 2019 12:34:43 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id p19sm4954qte.81.2019.12.10.12.34.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 12:34:43 -0800 (PST)
Date: Tue, 10 Dec 2019 15:34:41 -0500
Message-ID: <20191210153441.GB1429230@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
In-Reply-To: <1aa8b6e4-6a73-60b0-c5fb-c0dfa05e27e6@cumulusnetworks.com>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
 <a3b8e24d-5152-7243-545f-8a3e5fbaa53a@cumulusnetworks.com>
 <20191210143931.GF1344570@t480s.localdomain>
 <2f4e351c-158a-4f00-629f-237a63742f66@cumulusnetworks.com>
 <20191210151047.GB1423505@t480s.localdomain>
 <1aa8b6e4-6a73-60b0-c5fb-c0dfa05e27e6@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: add STP xstats
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

On Tue, 10 Dec 2019 22:15:26 +0200, Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
> >>>> Why do you need percpu ? All of these seem to be incremented with the
> >>>> bridge lock held. A few more comments below.
> >>>
> >>> All other xstats are incremented percpu, I simply followed the pattern.
> >>>
> >>
> >> We have already a lock, we can use it and avoid the whole per-cpu memory handling.
> >> It seems to be acquired in all cases where these counters need to be changed.
> > 
> > Since the other xstats counters are currently implemented this way, I prefer
> > to keep the code as is, until we eventually change them all if percpu is in
> > fact not needed anymore.
> > 
> > The new series is ready and I can submit it now if there's no objection.
> 
> There is a reason other counters use per-cpu - they're incremented without any locking from fast-path.
> The bridge STP code already has a lock which is acquired in all of these paths and we don't need
> this overhead and the per-cpu memory allocations. Unless you can find a STP codepath which actually
> needs per-cpu, I'd prefer you drop it.

Ho ok I understand what you mean now. I'll drop the percpu attribute.


Thanks,

	Vivien
