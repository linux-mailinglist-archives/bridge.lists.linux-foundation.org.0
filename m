Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E88022CD0B
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1CD8825570;
	Fri, 24 Jul 2020 18:22:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dD5DOmzwbIUT; Fri, 24 Jul 2020 18:22:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id AEE5024C39;
	Fri, 24 Jul 2020 18:21:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8AF68C004C;
	Fri, 24 Jul 2020 18:21:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D22A2C0733
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 13:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BE9BD26FDF
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 13:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KYVObCDZoPFE for <bridge@lists.linux-foundation.org>;
 Wed,  1 Jul 2020 13:46:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 52D5F26EB3
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 13:46:38 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id d4so11743966pgk.4
 for <bridge@lists.linux-foundation.org>; Wed, 01 Jul 2020 06:46:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=om64jDu9TFu8URAa9SBBr8cC4wjdp+QLHBvJRoX56c0=;
 b=CR5KAb8C6XQ7FSWFSwTuX9xRZjOYH2TO4vJf59Dq3fm2grsfriVWciWD9zRZYBkomI
 SVao9neGa68UV6yTiWfFzmlQV42V3K7se3yU9yUS0HuyQE3sg/YLAM8E6Binx6eSBc+n
 T6EzB22QA24u64txpyJ0gHRqCKdfaTUrPNOVNWQqDaBsuYVTNqjUcUErypNijoW+5nYh
 BCC3fbCuIopulXb5Al7+gjpuOM2ZMle6cvPam1574nWl9aqr6tafcAKLwbmYSvzx+ZOy
 D9CUloP6cULUPwiLPiZyYyK+B8krJe6c9qF0MtvuU+guFhI2mVt8Q06XPhOhQ9aLviCD
 AOmQ==
X-Gm-Message-State: AOAM533bvN/VEE3OFD2zJvG5LGIJPFU/G0JkLS7nGY8Lql8W1GA7mq3I
 2qBOh4oGT65MX80ylDWN8XU=
X-Google-Smtp-Source: ABdhPJxYZjIBdQ5YSvsiwCsCsRHSw/ZR4oiWyK7bSOZYypdAxgVrCCGoo6WQSwtIE4+aLzDojtHQ0g==
X-Received: by 2002:a63:125a:: with SMTP id 26mr20530442pgs.340.1593611197813; 
 Wed, 01 Jul 2020 06:46:37 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id z11sm5802732pfk.46.2020.07.01.06.46.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 06:46:36 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 69D5F403DC; Wed,  1 Jul 2020 13:46:35 +0000 (UTC)
Date: Wed, 1 Jul 2020 13:46:35 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christian Borntraeger <borntraeger@de.ibm.com>,
 Jessica Yu <jeyu@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <20200701134635.GR4332@42.do-not-panic.com>
References: <20200624144311.GA5839@infradead.org>
 <9e767819-9bbe-2181-521e-4d8ca28ca4f7@de.ibm.com>
 <20200624160953.GH4332@42.do-not-panic.com>
 <ea41e2a9-61f7-aec1-79e5-7b08b6dd5119@de.ibm.com>
 <4e27098e-ac8d-98f0-3a9a-ea25242e24ec@de.ibm.com>
 <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <20200630175704.GO13911@42.do-not-panic.com>
 <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 bfields@fieldses.org, keyrings@vger.kernel.org, christian.brauner@ubuntu.com,
 yangtiezhu@loongson.cn, linux-s390 <linux-s390@vger.kernel.org>,
 bridge@lists.linux-foundation.org, jmorris@namei.org,
 Christoph Hellwig <hch@infradead.org>, kuba@kernel.org, serge@hallyn.com,
 keescook@chromium.org, nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com,
 josh@joshtriplett.org, slyfox@gentoo.org, viro@zeniv.linux.org.uk,
 Andrew Morton <akpm@linux-foundation.org>, axboe@kernel.dk,
 dhowells@redhat.com, linux-nfs@vger.kernel.org, chainsaw@gentoo.org,
 ravenexp@gmail.com, gregkh@linuxfoundation.org, markward@linux.ibm.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 chuck.lever@oracle.com, "Eric W. Biederman" <ebiederm@xmission.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 lars.ellenberg@linbit.com, davem@davemloft.net
Subject: Re: [Bridge] linux-next: umh: fix processed error when
 UMH_WAIT_PROC is used seems to break linux bridge on s390x (bisected)
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

On Wed, Jul 01, 2020 at 12:08:11PM +0200, Christian Borntraeger wrote:
> dmesg attached
> [   14.438482] virbr0: port 1(virbr0-nic) entered blocking state
> [   14.438485] virbr0: port 1(virbr0-nic) entered disabled state
> [   14.438635] device virbr0-nic entered promiscuous mode
> [   14.439654] umh: sub_info->path: /sbin/bridge-stp
> [   14.439656] /sbin/bridge-stp 
> [   14.439656] virbr0 
> [   14.439656] start 

OK so what we seem to want to debug is the umh call for:

/sbin/bridge-stp virbr0 start

> [   14.439734] == ret: 00
> [   14.439735] == KWIFEXITED(ret): 01
> [   14.439736] KWEXITSTATUS(ret): 0

Its not clear if this is the respective return value, but now
that we have a clue that this is the the only non-modprobe
call, we should have a clearer certainty that this is the
issue.

Indeed my patch "umh: fix processed error when UMH_WAIT_PROC is used"
did modify bridge-stp in the following way:

diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
index ba55851fe132..bdd94b45396b 100644
--- a/net/bridge/br_stp_if.c
+++ b/net/bridge/br_stp_if.c
@@ -133,14 +133,8 @@ static int br_stp_call_user(struct net_bridge *br, char *arg)
 
 	/* call userspace STP and report program errors */
 	rc = call_usermodehelper(BR_STP_PROG, argv, envp, UMH_WAIT_PROC);
-	if (rc > 0) {
-		if (rc & 0xff)
-			br_debug(br, BR_STP_PROG " received signal %d\n",
-				 rc & 0x7f);
-		else
-			br_debug(br, BR_STP_PROG " exited with code %d\n",
-				 (rc >> 8) & 0xff);
-	}
+	if (rc != 0)
+		br_debug(br, BR_STP_PROG " failed with exit code %d\n", rc);
 
 	return rc;
 }

If you look at this carefully though you'll notice that the change just
modifies *when* we issue the debug print. The more important relevant
part of the patch however was that we now do return a correct error
value when the call fails.

More importantly, depending on if an error or not we run the kernel STP
or userspace STP later:

static void br_stp_start(struct net_bridge *br)
{
	int err = -ENOENT;

	if (net_eq(dev_net(br->dev), &init_net))
		err = br_stp_call_user(br, "start");

	if (err && err != -ENOENT)
		br_err(br, "failed to start userspace STP (%d)\n", err);

	spin_lock_bh(&br->lock);

	if (br->bridge_forward_delay < BR_MIN_FORWARD_DELAY)
		__br_set_forward_delay(br, BR_MIN_FORWARD_DELAY);
	else if (br->bridge_forward_delay > BR_MAX_FORWARD_DELAY)
		__br_set_forward_delay(br, BR_MAX_FORWARD_DELAY);

--------------------->  can you enable debug print for this to see what
--------------------->  you end up using?
	if (!err) {
		br->stp_enabled = BR_USER_STP;
		br_debug(br, "userspace STP started\n");
	} else {
		br->stp_enabled = BR_KERNEL_STP;
		br_debug(br, "using kernel STP\n");

		/* To start timers on any ports left in blocking */
		if (br->dev->flags & IFF_UP)
			mod_timer(&br->hello_timer, jiffies + br->hello_time);
		br_port_state_selection(br);
	}
----------------->

	spin_unlock_bh(&br->lock);
}

