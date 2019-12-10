Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E01A119194
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 21:10:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B8EE22708;
	Tue, 10 Dec 2019 20:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jeL61IdODlRb; Tue, 10 Dec 2019 20:10:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 8499922812;
	Tue, 10 Dec 2019 20:10:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5ABF7C1796;
	Tue, 10 Dec 2019 20:10:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A1E1AC0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 907E6878D6
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dgu2G13cwVxE for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 20:10:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com
 [209.85.219.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E274A865D6
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:10:50 +0000 (UTC)
Received: by mail-qv1-f67.google.com with SMTP id t7so4728472qve.4
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 12:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=tPg6HNf3WY8ezIcG4ChbTF8Z6mYyQlYkzlIgv8Ay1G4=;
 b=nE8UgUJtn+wZBfPfQc9Kq8XZE/NBo5vuY5hCaYf6g6ft38NS2ub1gyF+Z7ue6zCAaY
 fg82czGJCLVajza/WZTB7T8FUAUJM81ERVaH7iG7J4gyCtRX1eVi/zZR7E/fLGGSmN3u
 E9vgL/GwbtMd3J9NNG1XS4soWjFM3rE0QQr1Xn1nek4OoaAfxXZKbTBiu53kROlK6bQm
 BUOEIihJeok88kcFgYkJYReIuBjuhl1hMc8zuF07xbTL6mHXHrmMGRYYXloD4A7aqQrR
 43y+oIVzY5WfrL04wULu9vw+KrIP5yZT2bWPHZXfgxYnYHkwjA21mb+pTBp2IFXqmShy
 etdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=tPg6HNf3WY8ezIcG4ChbTF8Z6mYyQlYkzlIgv8Ay1G4=;
 b=Dem55FVGEJtgpzWyB+szmYCAoI//Uez0tPOK+irgPL5KalwZF5QWzJGERqQlVdMoaX
 Ro1yZ90A8xA7F7D7JsROH3uW35ui6qPYhrEA+nbIKXf4dFC603ysX1H6aEJ7s7BeQ9fU
 o58K5GpDW5U8ULQwTz1wBTphODn8rfTiFgsHsOsPNavvGFKu8pRXBrlx9f6GgV/koXAT
 607eAykCTW3NnJzUzJF7k5O+NgnT8Gm1DMZDZ343/kFDRZxHXEX7H1HDgvzzHq6SyaQ7
 4b7Fm6RJUowuPn2ZR2nPwNgMRxRYL6hFB1dIYvtmzTY+ocE1raWip9BP27b+y6D5DIpH
 gDrg==
X-Gm-Message-State: APjAAAXrvuMLtZyrbKHBWl5urR+IN5tkiSza3XuU8aUG+gfnUWlvQMH/
 EfnkMQYsSiQvHnSMTIetMAo=
X-Google-Smtp-Source: APXvYqzFW+k63CcJTwg4KLlPQFkVd3B0IL/8hW8ebFwVwxZIQzDn0kcboWLvm73YdeEE8k0mw5LWvQ==
X-Received: by 2002:ad4:496f:: with SMTP id p15mr29714803qvy.191.1576008649750; 
 Tue, 10 Dec 2019 12:10:49 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id 200sm617114qkn.79.2019.12.10.12.10.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 12:10:48 -0800 (PST)
Date: Tue, 10 Dec 2019 15:10:47 -0500
Message-ID: <20191210151047.GB1423505@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
In-Reply-To: <2f4e351c-158a-4f00-629f-237a63742f66@cumulusnetworks.com>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
 <a3b8e24d-5152-7243-545f-8a3e5fbaa53a@cumulusnetworks.com>
 <20191210143931.GF1344570@t480s.localdomain>
 <2f4e351c-158a-4f00-629f-237a63742f66@cumulusnetworks.com>
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

Hi Nikolay,

On Tue, 10 Dec 2019 21:50:10 +0200, Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
> >> Why do you need percpu ? All of these seem to be incremented with the
> >> bridge lock held. A few more comments below.
> > 
> > All other xstats are incremented percpu, I simply followed the pattern.
> > 
> 
> We have already a lock, we can use it and avoid the whole per-cpu memory handling.
> It seems to be acquired in all cases where these counters need to be changed.

Since the other xstats counters are currently implemented this way, I prefer
to keep the code as is, until we eventually change them all if percpu is in
fact not needed anymore.

The new series is ready and I can submit it now if there's no objection.


Thanks,

	Vivien
