Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BE113840A
	for <lists.bridge@lfdr.de>; Sun, 12 Jan 2020 00:38:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E09A285910;
	Sat, 11 Jan 2020 23:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OC1Ji-NWExBA; Sat, 11 Jan 2020 23:38:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 871A18598E;
	Sat, 11 Jan 2020 23:38:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5C622C0881;
	Sat, 11 Jan 2020 23:38:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7CA98C0881
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jan 2020 23:38:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7271785044
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jan 2020 23:38:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fqt3rI8fFUWv for <bridge@lists.linux-foundation.org>;
 Sat, 11 Jan 2020 23:38:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A4C398503D
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jan 2020 23:38:31 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id p125so5149578oif.10
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jan 2020 15:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c7HFrOGQ3phE12eoMeyUfOtwv87GN61OlvlGebweSPE=;
 b=CUzzXi3uv6xXm/4UnggMbWvrrN2Up+aCdXgbjG6cA1RSh2Hsl7MaJGyUzdoMoTmd4R
 ZrHmzvSIQzS9GFymrJPYSFUJoVbzF0PJ/iecYAh4HGcrfH/zwmd4F6x9nsoOeailYobC
 MujffRFXqGvkpsurYLOjgR9qmZoZeeEk+kwuIIysdTEHyy0eM0MPpC10Mh0InyVmHn1v
 5FsP+pOKLqj3MpjEbbWZWOZEilHIuIlxKrmee02exZm69I3xF9XolTxJTNhKMd4CPNUr
 7TK8yRsQode2rHqJa9VpU78VxSiyf+Oi7TyRFsjn5WlXmrtjazYZe5Wjb+yrJwuo7Mdn
 THlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c7HFrOGQ3phE12eoMeyUfOtwv87GN61OlvlGebweSPE=;
 b=io6d6GCOo0G+GM24LFVC41c3ByIfpZhjVASjc96bVtZa06OZ2cNffJDMNKC9K2Rqy8
 8ymu2anf/NjVShTl+GuvwPKFAoVO1YviZf3G8YPZ+X2tk2YXk87quGcQXyidDRdY80H3
 nYTEvTP3PCz4G4epeX+ep+Mate1R5YkdGciizD8tQmpb9ZBax6fBSQ7wYhbvXtidS6+3
 rcags3ihyVj6D7Pq3w/B5iIJQjOkf2pdsMF+q11JsRKvqY66mGEhFdlqTKhIOcc0qmdX
 6esP/1YoKkjrCdhvTanOAwWvsRDz0q9kM3ihzn+De4RpZ42+2BsNOX1kxzvRm5kjRi1t
 rNjA==
X-Gm-Message-State: APjAAAX1JU3FDNnxNGUfNJjELNlGnm+OjU5GhvvULAfin+RsXYmkpYht
 uq6LnUPnWyYI+7OYoX3jHhmgzdDsm4z9XLkQIVU=
X-Google-Smtp-Source: APXvYqzdwu5h+fnSlpdGrTkZ59bgP9nPDYS+jBNWRgOtKGV1J84qw+h5nryOcSbFDC8q8K7HsV9LDhKqwf7dQGAQUsU=
X-Received: by 2002:aca:1e11:: with SMTP id m17mr7953939oic.5.1578785910973;
 Sat, 11 Jan 2020 15:38:30 -0800 (PST)
MIME-Version: 1.0
References: <000000000000a06985059be4002e@google.com>
In-Reply-To: <000000000000a06985059be4002e@google.com>
From: Cong Wang <xiyou.wangcong@gmail.com>
Date: Sat, 11 Jan 2020 15:38:19 -0800
Message-ID: <CAM_iQpWN-SKjjrG_7EQ-x+7UMiu6foaNWMJuwQuwN0BGmayB+A@mail.gmail.com>
To: syzbot <syzbot+ad4ea1dd5d26131a58a6@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Kate Stewart <kstewart@linuxfoundation.org>, andrew@lunn.ch,
 Alexander Aring <alex.aring@gmail.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>, ast@domdv.de,
 linmiaohe@huawei.com, gustavo@embeddedor.com, oss-drivers@netronome.com,
 linux-wireless <linux-wireless@vger.kernel.org>, a@unstable.cc,
 linux-hyperv@vger.kernel.org,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, linux-hams <linux-hams@vger.kernel.org>,
 kys@microsoft.com, Marek Lindner <mareklindner@neomailbox.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 jwi@linux.ibm.com, linux-wpan@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Paolo Abeni <pabeni@redhat.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 Marcel Holtmann <marcel@holtmann.org>, Michal Kubecek <mkubecek@suse.cz>,
 Jiri Pirko <jiri@resnulli.us>, Johan Hedberg <johan.hedberg@gmail.com>,
 Johannes Berg <johannes.berg@intel.com>, j@w1.fi,
 Jay Vosburgh <j.vosburgh@gmail.com>, haiyangz@microsoft.com,
 Jamal Hadi Salim <jhs@mojatatu.com>, John Hurley <john.hurley@netronome.com>,
 Hangbin Liu <liuhangbin@gmail.com>, David Ahern <dsa@cumulusnetworks.com>,
 allison@lohutok.net, cleech@redhat.com, Greg KH <gregkh@linuxfoundation.org>,
 b.a.t.m.a.n@lists.open-mesh.org, Florian Westphal <fw@strlen.de>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-bluetooth <linux-bluetooth@vger.kernel.org>,
 mmanning@vyatta.att-mail.com, linux-ppp@vger.kernel.org, info@metux.net,
 David Miller <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Subject: Re: [Bridge] WARNING: bad unlock balance in __dev_queue_xmit
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

#syz dup: WARNING: bad unlock balance in sch_direct_xmit
